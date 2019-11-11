#ifndef PENSTOCK_MOC_H
#define PENSTOCK_MOC_H

#include <stddef.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Method of Characteristics 1D conduit discretization */
typedef struct {
    int link_index;
    double length;
    double diameter;
    double area;
    double wave_speed;
    double friction_factor;
    size_t num_reaches;     /* spatial discretization N */
    double dx;              /* reach length: L / N */
    double B;               /* impedance: a / (g * A) */
    double R;               /* resistance: f * dx / (2 * g * D * A^2) */
    
    /* State arrays: size num_reaches + 1 */
    double* H_curr;         /* current head (m) */
    double* Q_curr;         /* current flow (m^3/s) */
    double* H_next;         /* next head (m) */
    double* Q_next;         /* next flow (m^3/s) */
    double* vapor_vol;      /* vapor pocket volume (m^3) */
} penstock_moc_pipe_t;

typedef struct {
    penstock_moc_pipe_t* pipes;
    size_t pipe_count;
    double dt;              /* global transient time step (s) */
    double g;               /* gravitational acceleration (9.80665 m/s^2) */
    double vapor_head_limit;/* vapor pressure head (-10.0 m) */
} penstock_moc_grid_t;

penstock_moc_grid_t* penstock_moc_grid_create(size_t pipe_count, double dt);
void penstock_moc_grid_free(penstock_moc_grid_t* grid);

void penstock_moc_step_interior(penstock_moc_grid_t* grid);
void penstock_moc_apply_cavitation(penstock_moc_grid_t* grid);

#ifdef __cplusplus
}
#endif

#endif /* PENSTOCK_MOC_H */
