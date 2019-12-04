#include "penstock_sparse.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void) {
    printf("--- Sparse Linear Algebra Benchmark ---\n");
    size_t n = 2000;
    penstock_coo_t* coo = penstock_coo_create(n, n, n * 5);
    for (size_t i = 0; i < n; i++) {
        penstock_coo_add_entry(coo, (int)i, (int)i, 4.0);
        if (i > 0) penstock_coo_add_entry(coo, (int)i, (int)(i - 1), -1.0);
        if (i < n - 1) penstock_coo_add_entry(coo, (int)i, (int)(i + 1), -1.0);
    }
    penstock_csr_t* csr = penstock_coo_to_csr(coo);
    double* b = (double*)malloc(sizeof(double) * n);
    double* x = (double*)malloc(sizeof(double) * n);
    for (size_t i = 0; i < n; i++) b[i] = 1.0;

    clock_t start = clock();
    bool ok = penstock_csr_solve_cg(csr, b, x, 500, 1e-6);
    clock_t end = clock();
    double elapsed_ms = (double)(end - start) * 1000.0 / CLOCKS_PER_SEC;

    printf("Solved %zu x %zu sparse system in %.2f ms (status: %s)\n",
           n, n, elapsed_ms, ok ? "SUCCESS" : "FAILED");
    
    penstock_csr_free(csr);
    penstock_coo_free(coo);
    free(b);
    free(x);
    return 0;
}
