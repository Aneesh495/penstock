#include "penstock_moc.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void) {
    printf("--- Method of Characteristics 1M-Cell Grid Benchmark ---\n");
    size_t pipes = 100;
    penstock_moc_grid_t* grid = penstock_moc_grid_create(pipes, 0.001);
    for (size_t p = 0; p < pipes; p++) {
        penstock_moc_pipe_t* pipe = &grid->pipes[p];
        pipe->num_reaches = 1000;
        pipe->B = 100.0;
        pipe->R = 0.01;
        pipe->H_curr = (double*)malloc(sizeof(double) * 1001);
        pipe->Q_curr = (double*)malloc(sizeof(double) * 1001);
        pipe->H_next = (double*)malloc(sizeof(double) * 1001);
        pipe->Q_next = (double*)malloc(sizeof(double) * 1001);
        for (int i = 0; i <= 1000; i++) {
            pipe->H_curr[i] = 50.0;
            pipe->Q_curr[i] = 0.1;
        }
    }

    clock_t start = clock();
    int time_steps = 100;
    for (int t = 0; t < time_steps; t++) {
        penstock_moc_step_interior(grid);
    }
    clock_t end = clock();
    double elapsed_ms = (double)(end - start) * 1000.0 / CLOCKS_PER_SEC;
    double cells = (double)(pipes * 1000 * time_steps);
    printf("Simulated %.1f million MOC space-time cells in %.2f ms (%.2f Mcells/sec)\n",
           cells / 1e6, elapsed_ms, (cells / 1e6) / (elapsed_ms / 1000.0));

    penstock_moc_grid_free(grid);
    return 0;
}
