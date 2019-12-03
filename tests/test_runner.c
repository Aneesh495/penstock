#include "penstock.h"
#include "penstock_sparse.h"
#include "penstock_moc.h"
#include "penstock_runtime.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <math.h>

static int g_assertions = 0;
#define TEST_ASSERT(cond) do { \
    g_assertions++; \
    if (!(cond)) { \
        fprintf(stderr, "FAILED: %s (line %d)\n", #cond, __LINE__); \
        exit(1); \
    } \
} while(0)

/* Test 1: Dylan VM and Symbol Table */
void test_dylan_vm(void) {
    printf("[1/7] Testing Dylan VM core and symbol intern pool... ");
    dylan_vm_t* vm = dylan_vm_create();
    TEST_ASSERT(vm != NULL);
    
    dylan_obj_t* sym1 = dylan_make_symbol(vm, "head-loss");
    dylan_obj_t* sym2 = dylan_make_symbol(vm, "head-loss");
    TEST_ASSERT(sym1 != NULL && sym2 != NULL);
    TEST_ASSERT(sym1->u.strval == sym2->u.strval); /* pointer equality for interned symbols */
    
    dylan_obj_t* vec = dylan_make_vector(4);
    TEST_ASSERT(vec != NULL && vec->tag == DYLAN_TAG_VECTOR);
    dylan_vector_push(vec, sym1);
    TEST_ASSERT(vec->u.vector.length == 1);
    
    dylan_vm_free(vm);
    printf("PASS\n");
}

/* Test 2: CLOS Multiple Dispatch */
static dylan_obj_t* sample_method(dylan_obj_t** args) {
    (void)args;
    return dylan_make_float(42.0);
}

void test_dylan_clos(void) {
    printf("[2/7] Testing CLOS multiple dispatch and generic functions... ");
    dylan_vm_t* vm = dylan_vm_create();
    
    const char* pipe_slots[] = {"diameter", "length", "roughness"};
    dylan_obj_t* cls_pipe = dylan_define_class(vm, "<pipe>", NULL, pipe_slots, 3);
    TEST_ASSERT(cls_pipe != NULL && cls_pipe->tag == DYLAN_TAG_CLASS);
    TEST_ASSERT(cls_pipe->u.cls.slot_count == 3);
    
    dylan_obj_t* inst = dylan_make_instance(cls_pipe);
    TEST_ASSERT(inst != NULL && inst->tag == DYLAN_TAG_INSTANCE);
    TEST_ASSERT(inst->u.inst.cls == cls_pipe);
    
    dylan_obj_t* gen = dylan_define_generic(vm, "compute-head-loss", 1);
    TEST_ASSERT(gen != NULL && gen->tag == DYLAN_TAG_GENERIC);
    
    dylan_obj_t* spec[1] = {cls_pipe};
    dylan_add_method(gen, spec, 1, (void*)sample_method);
    TEST_ASSERT(gen->u.generic.method_count == 1);
    
    dylan_obj_t* args[1] = {inst};
    dylan_obj_t* res = dylan_dispatch(vm, gen, args, 1);
    TEST_ASSERT(res != NULL && res->tag == DYLAN_TAG_FLOAT);
    TEST_ASSERT(res->u.fval == 42.0);
    
    dylan_vm_free(vm);
    printf("PASS\n");
}

/* Test 3: Sparse Matrix CSR and Matrix-Vector Product */
void test_sparse_matrix(void) {
    printf("[3/7] Testing sparse matrix CSR assembly and MatVec... ");
    penstock_coo_t* coo = penstock_coo_create(3, 3, 5);
    TEST_ASSERT(coo != NULL);
    
    /* 3x3 diagonal dominant matrix */
    penstock_coo_add_entry(coo, 0, 0, 4.0);
    penstock_coo_add_entry(coo, 0, 1, -1.0);
    penstock_coo_add_entry(coo, 1, 0, -1.0);
    penstock_coo_add_entry(coo, 1, 1, 4.0);
    penstock_coo_add_entry(coo, 1, 2, -1.0);
    penstock_coo_add_entry(coo, 2, 1, -1.0);
    penstock_coo_add_entry(coo, 2, 2, 4.0);
    
    penstock_csr_t* csr = penstock_coo_to_csr(coo);
    TEST_ASSERT(csr != NULL);
    TEST_ASSERT(csr->rows == 3 && csr->cols == 3 && csr->nnz == 7);
    
    double x[3] = {1.0, 2.0, 3.0};
    double y[3] = {0.0, 0.0, 0.0};
    penstock_csr_matvec(csr, x, y);
    /* y[0] = 4(1) - 1(2) = 2
       y[1] = -1(1) + 4(2) - 1(3) = 4
       y[2] = -1(2) + 4(3) = 10 */
    TEST_ASSERT(fabs(y[0] - 2.0) < 1e-9);
    TEST_ASSERT(fabs(y[1] - 4.0) < 1e-9);
    TEST_ASSERT(fabs(y[2] - 10.0) < 1e-9);
    
    double b[3] = {2.0, 4.0, 10.0};
    double x_sol[3] = {0.0, 0.0, 0.0};
    bool ok = penstock_csr_solve_cg(csr, b, x_sol, 100, 1e-6);
    TEST_ASSERT(ok);
    TEST_ASSERT(fabs(x_sol[0] - 1.0) < 1e-4);
    TEST_ASSERT(fabs(x_sol[1] - 2.0) < 1e-4);
    TEST_ASSERT(fabs(x_sol[2] - 3.0) < 1e-4);
    
    penstock_csr_free(csr);
    penstock_coo_free(coo);
    printf("PASS\n");
}

/* Test 4: Method of Characteristics Grid and Wave Stepper */
void test_moc_wave(void) {
    printf("[4/7] Testing Method of Characteristics acoustic wave stepper... ");
    penstock_moc_grid_t* grid = penstock_moc_grid_create(1, 0.01);
    TEST_ASSERT(grid != NULL && grid->pipe_count == 1);
    
    penstock_moc_pipe_t* pipe = &grid->pipes[0];
    pipe->length = 1000.0;
    pipe->diameter = 0.5;
    pipe->area = 0.25 * 3.1415926535 * pipe->diameter * pipe->diameter;
    pipe->wave_speed = 1000.0;
    pipe->num_reaches = 4;
    pipe->dx = pipe->length / pipe->num_reaches;
    pipe->B = pipe->wave_speed / (grid->g * pipe->area);
    pipe->R = 0.02 * pipe->dx / (2.0 * grid->g * pipe->diameter * pipe->area * pipe->area);
    
    pipe->H_curr = (double*)calloc(5, sizeof(double));
    pipe->Q_curr = (double*)calloc(5, sizeof(double));
    pipe->H_next = (double*)calloc(5, sizeof(double));
    pipe->Q_next = (double*)calloc(5, sizeof(double));
    pipe->vapor_vol = (double*)calloc(5, sizeof(double));
    
    for (int i = 0; i < 5; i++) {
        pipe->H_curr[i] = 100.0;
        pipe->Q_curr[i] = 0.2;
    }
    
    penstock_moc_step_interior(grid);
    /* For uniform flow and negligible friction in 1 step, interior heads should remain ~100.0 */
    TEST_ASSERT(pipe->H_next[1] > 90.0 && pipe->H_next[1] < 110.0);
    TEST_ASSERT(pipe->Q_next[1] > 0.15 && pipe->Q_next[1] < 0.25);
    
    /* Test cavitation threshold check */
    pipe->H_next[2] = -15.0; /* below -10.0 m vapor head */
    penstock_moc_apply_cavitation(grid);
    TEST_ASSERT(pipe->H_next[2] == -10.0);
    TEST_ASSERT(pipe->vapor_vol[2] > 0.0);
    
    penstock_moc_grid_free(grid);
    printf("PASS\n");
}

/* Test 5: Suter Four-Quadrant Pump Curve Lookup */
void test_suter_curves(void) {
    printf("[5/7] Testing Suter 4-quadrant pump trip curve transformation... ");
    double wh0 = penstock_suter_wh(0.0);
    double wb0 = penstock_suter_wb(0.0);
    TEST_ASSERT(wh0 > 0.5 && wh0 < 1.5);
    TEST_ASSERT(wb0 > 0.5 && wb0 < 1.5);
    printf("PASS\n");
}

/* Test 6: Network Graph Assembly C ABI */
void test_network_assembly(void) {
    printf("[6/7] Testing network topology container and C FFI... ");
    penstock_network_t* net = penstock_network_create();
    TEST_ASSERT(net != NULL);
    
    penstock_node_t res_node = {0};
    strncpy(res_node.id, "R1", sizeof(res_node.id));
    res_node.type = PENSTOCK_NODE_RESERVOIR;
    res_node.total_head = 150.0;
    res_node.elevation = 100.0;
    int r_idx = penstock_network_add_node(net, &res_node);
    TEST_ASSERT(r_idx == 0);
    
    penstock_node_t junc_node = {0};
    strncpy(junc_node.id, "J1", sizeof(junc_node.id));
    junc_node.type = PENSTOCK_NODE_JUNCTION;
    junc_node.elevation = 50.0;
    junc_node.base_demand = 0.05;
    int j_idx = penstock_network_add_node(net, &junc_node);
    TEST_ASSERT(j_idx == 1);
    
    penstock_link_t pipe = {0};
    strncpy(pipe.id, "P1", sizeof(pipe.id));
    pipe.type = PENSTOCK_LINK_PIPE;
    pipe.from_node = r_idx;
    pipe.to_node = j_idx;
    pipe.length = 1500.0;
    pipe.diameter = 0.3;
    pipe.roughness = 0.05;
    pipe.wave_speed = 1100.0;
    pipe.is_open = true;
    int p_idx = penstock_network_add_link(net, &pipe);
    TEST_ASSERT(p_idx == 0);
    
    TEST_ASSERT(penstock_network_find_node(net, "R1") == 0);
    TEST_ASSERT(penstock_network_find_node(net, "J1") == 1);
    TEST_ASSERT(penstock_network_find_node(net, "NONEXISTENT") == -1);
    TEST_ASSERT(penstock_network_find_link(net, "P1") == 0);
    
    penstock_network_free(net);
    printf("PASS\n");
}

/* Test 7: Dylan Parser Lexical Scan */
void test_dylan_parser_scan(void) {
    printf("[7/7] Testing Dylan source file parser scan... ");
    dylan_vm_t* vm = dylan_vm_create();
    TEST_ASSERT(vm != NULL);
    
    /* Write small test file */
    FILE* fp = fopen("work_test.dylan", "w");
    if (fp) {
        fprintf(fp, "Module: test-mod\n");
        fprintf(fp, "define class <test-pipe> (<object>) end class;\n");
        fprintf(fp, "define generic solve-flow (p :: <test-pipe>) => ();\n");
        fprintf(fp, "define method solve-flow (p :: <test-pipe>) => () end method;\n");
        fclose(fp);
        
        int defs = dylan_load_file(vm, "work_test.dylan");
        TEST_ASSERT(defs == 3);
        remove("work_test.dylan");
    }
    
    dylan_vm_free(vm);
    printf("PASS\n");
}

int main(void) {
    printf("================================================================\n");
    printf("      PENSTOCK NATIVE C & DYLAN RUNTIME VERIFICATION SUITE      \n");
    printf("================================================================\n");
    
    test_dylan_vm();
    test_dylan_clos();
    test_sparse_matrix();
    test_moc_wave();
    test_suter_curves();
    test_network_assembly();
    test_dylan_parser_scan();
    
    printf("================================================================\n");
    printf("ALL TESTS PASSED! Total assertions verified: %d\n", g_assertions);
    printf("================================================================\n");
    return 0;
}
