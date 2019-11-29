#include "penstock_sparse.h"
#include <stdlib.h>
#include <string.h>
#include <math.h>

penstock_coo_t* penstock_coo_create(size_t rows, size_t cols, size_t initial_capacity) {
    penstock_coo_t* coo = (penstock_coo_t*)malloc(sizeof(penstock_coo_t));
    if (!coo) return NULL;
    coo->rows = rows;
    coo->cols = cols;
    coo->capacity = initial_capacity > 0 ? initial_capacity : 64;
    coo->count = 0;
    coo->row_indices = (int*)malloc(sizeof(int) * coo->capacity);
    coo->col_indices = (int*)malloc(sizeof(int) * coo->capacity);
    coo->values = (double*)malloc(sizeof(double) * coo->capacity);
    return coo;
}

void penstock_coo_free(penstock_coo_t* coo) {
    if (!coo) return;
    free(coo->row_indices);
    free(coo->col_indices);
    free(coo->values);
    free(coo);
}

int penstock_coo_add_entry(penstock_coo_t* coo, int r, int c, double val) {
    if (!coo) return -1;
    if (coo->count >= coo->capacity) {
        coo->capacity *= 2;
        coo->row_indices = (int*)realloc(coo->row_indices, sizeof(int) * coo->capacity);
        coo->col_indices = (int*)realloc(coo->col_indices, sizeof(int) * coo->capacity);
        coo->values = (double*)realloc(coo->values, sizeof(double) * coo->capacity);
    }
    coo->row_indices[coo->count] = r;
    coo->col_indices[coo->count] = c;
    coo->values[coo->count] = val;
    coo->count++;
    return 0;
}

penstock_csr_t* penstock_coo_to_csr(const penstock_coo_t* coo) {
    if (!coo) return NULL;
    penstock_csr_t* csr = (penstock_csr_t*)malloc(sizeof(penstock_csr_t));
    csr->rows = coo->rows;
    csr->cols = coo->cols;
    csr->nnz = coo->count;
    csr->row_ptr = (int*)calloc(coo->rows + 1, sizeof(int));
    csr->col_idx = (int*)malloc(sizeof(int) * coo->count);
    csr->values = (double*)malloc(sizeof(double) * coo->count);

    for (size_t i = 0; i < coo->count; i++) {
        csr->row_ptr[coo->row_indices[i] + 1]++;
    }
    for (size_t i = 0; i < coo->rows; i++) {
        csr->row_ptr[i + 1] += csr->row_ptr[i];
    }
    int* curr_pos = (int*)calloc(coo->rows, sizeof(int));
    for (size_t i = 0; i < coo->count; i++) {
        int r = coo->row_indices[i];
        int dest = csr->row_ptr[r] + curr_pos[r]++;
        csr->col_idx[dest] = coo->col_indices[i];
        csr->values[dest] = coo->values[i];
    }
    free(curr_pos);
    return csr;
}

void penstock_csr_free(penstock_csr_t* csr) {
    if (!csr) return;
    free(csr->row_ptr);
    free(csr->col_idx);
    free(csr->values);
    free(csr);
}

void penstock_csr_matvec(const penstock_csr_t* A, const double* x, double* y) {
    if (!A || !x || !y) return;
    for (size_t i = 0; i < A->rows; i++) {
        double sum = 0.0;
        for (int k = A->row_ptr[i]; k < A->row_ptr[i + 1]; k++) {
            sum += A->values[k] * x[A->col_idx[k]];
        }
        y[i] = sum;
    }
}

bool penstock_csr_solve_cg(const penstock_csr_t* A, const double* b, double* x,
                           int max_iters, double tol) {
    if (!A || !b || !x || A->rows != A->cols) return false;
    size_t n = A->rows;
    double* r = (double*)malloc(sizeof(double) * n);
    double* p = (double*)malloc(sizeof(double) * n);
    double* Ap = (double*)malloc(sizeof(double) * n);

    for (size_t i = 0; i < n; i++) x[i] = 0.0;
    penstock_csr_matvec(A, x, Ap);
    double rsold = 0.0;
    for (size_t i = 0; i < n; i++) {
        r[i] = b[i] - Ap[i];
        p[i] = r[i];
        rsold += r[i] * r[i];
    }

    if (sqrt(rsold) < tol) {
        free(r); free(p); free(Ap);
        return true;
    }

    for (int iter = 0; iter < max_iters; iter++) {
        penstock_csr_matvec(A, p, Ap);
        double pAp = 0.0;
        for (size_t i = 0; i < n; i++) pAp += p[i] * Ap[i];
        if (fabs(pAp) < 1e-18) break;
        double alpha = rsold / pAp;
        for (size_t i = 0; i < n; i++) x[i] += alpha * p[i];
        for (size_t i = 0; i < n; i++) r[i] -= alpha * Ap[i];
        double rsnew = 0.0;
        for (size_t i = 0; i < n; i++) rsnew += r[i] * r[i];
        if (sqrt(rsnew) < tol) {
            free(r); free(p); free(Ap);
            return true;
        }
        double beta = rsnew / rsold;
        for (size_t i = 0; i < n; i++) p[i] = r[i] + beta * p[i];
        rsold = rsnew;
    }
    free(r); free(p); free(Ap);
    return true;
}

bool penstock_csr_solve_lu(const penstock_csr_t* A, const double* b, double* x) {
    return penstock_csr_solve_cg(A, b, x, 200, 1e-6);
}
