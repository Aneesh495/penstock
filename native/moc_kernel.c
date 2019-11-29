#include "penstock_moc.h"
#include <stdlib.h>
#include <math.h>

penstock_moc_grid_t* penstock_moc_grid_create(size_t pipe_count, double dt) {
    penstock_moc_grid_t* grid = (penstock_moc_grid_t*)calloc(1, sizeof(penstock_moc_grid_t));
    if (!grid) return NULL;
    grid->pipe_count = pipe_count;
    grid->dt = dt;
    grid->g = 9.80665;
    grid->vapor_head_limit = -10.0;
    grid->pipes = (penstock_moc_pipe_t*)calloc(pipe_count, sizeof(penstock_moc_pipe_t));
    return grid;
}

void penstock_moc_grid_free(penstock_moc_grid_t* grid) {
    if (!grid) return;
    for (size_t i = 0; i < grid->pipe_count; i++) {
        free(grid->pipes[i].H_curr);
        free(grid->pipes[i].Q_curr);
        free(grid->pipes[i].H_next);
        free(grid->pipes[i].Q_next);
        free(grid->pipes[i].vapor_vol);
    }
    free(grid->pipes);
    free(grid);
}

void penstock_moc_step_interior(penstock_moc_grid_t* grid) {
    if (!grid) return;
    for (size_t p = 0; p < grid->pipe_count; p++) {
        penstock_moc_pipe_t* pipe = &grid->pipes[p];
        if (pipe->num_reaches < 2) continue;
        double B = pipe->B;
        double R = pipe->R;
        for (size_t i = 1; i < pipe->num_reaches; i++) {
            /* C+ compatibility: H_i - B*Q_i = H_{i-1} - B*Q_{i-1} - R*Q_{i-1}*|Q_{i-1}| */
            double Cp = pipe->H_curr[i - 1] + B * pipe->Q_curr[i - 1] - R * pipe->Q_curr[i - 1] * fabs(pipe->Q_curr[i - 1]);
            /* C- compatibility: H_i + B*Q_i = H_{i+1} + B*Q_{i+1} + R*Q_{i+1}*|Q_{i+1}| */
            double Cm = pipe->H_curr[i + 1] - B * pipe->Q_curr[i + 1] + R * pipe->Q_curr[i + 1] * fabs(pipe->Q_curr[i + 1]);
            
            pipe->H_next[i] = 0.5 * (Cp + Cm);
            pipe->Q_next[i] = 0.5 * (Cp - Cm) / B;
        }
    }
}

void penstock_moc_apply_cavitation(penstock_moc_grid_t* grid) {
    if (!grid) return;
    for (size_t p = 0; p < grid->pipe_count; p++) {
        penstock_moc_pipe_t* pipe = &grid->pipes[p];
        for (size_t i = 0; i <= pipe->num_reaches; i++) {
            if (pipe->H_next[i] < grid->vapor_head_limit) {
                pipe->H_next[i] = grid->vapor_head_limit;
                if (pipe->vapor_vol) {
                    pipe->vapor_vol[i] += fabs(pipe->Q_next[i]) * grid->dt;
                }
            }
        }
    }
}
