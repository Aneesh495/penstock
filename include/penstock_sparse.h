#ifndef PENSTOCK_SPARSE_H
#define PENSTOCK_SPARSE_H

#include <stddef.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Compressed Sparse Row (CSR) matrix representation */
typedef struct {
    size_t rows;
    size_t cols;
    size_t nnz;
    int* row_ptr;     /* size: rows + 1 */
    int* col_idx;     /* size: nnz */
    double* values;   /* size: nnz */
} penstock_csr_t;

/* Coordinate (COO) format for dynamic assembly */
typedef struct {
    size_t rows;
    size_t cols;
    size_t capacity;
    size_t count;
    int* row_indices;
    int* col_indices;
    double* values;
} penstock_coo_t;

penstock_coo_t* penstock_coo_create(size_t rows, size_t cols, size_t initial_capacity);
void penstock_coo_free(penstock_coo_t* coo);
int penstock_coo_add_entry(penstock_coo_t* coo, int r, int c, double val);

penstock_csr_t* penstock_coo_to_csr(const penstock_coo_t* coo);
void penstock_csr_free(penstock_csr_t* csr);

/* Sparse linear solver routines */
bool penstock_csr_solve_cg(const penstock_csr_t* A, const double* b, double* x,
                           int max_iters, double tol);
bool penstock_csr_solve_lu(const penstock_csr_t* A, const double* b, double* x);

void penstock_csr_matvec(const penstock_csr_t* A, const double* x, double* y);

#ifdef __cplusplus
}
#endif

#endif /* PENSTOCK_SPARSE_H */
