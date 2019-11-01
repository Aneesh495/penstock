#ifndef PENSTOCK_H
#define PENSTOCK_H

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

#define PENSTOCK_VERSION_MAJOR 1
#define PENSTOCK_VERSION_MINOR 0
#define PENSTOCK_VERSION_PATCH 0

/* Element types */
typedef enum {
    PENSTOCK_NODE_JUNCTION = 1,
    PENSTOCK_NODE_RESERVOIR = 2,
    PENSTOCK_NODE_TANK = 3
} penstock_node_type_t;

typedef enum {
    PENSTOCK_LINK_PIPE = 1,
    PENSTOCK_LINK_PUMP = 2,
    PENSTOCK_LINK_VALVE = 3
} penstock_link_type_t;

typedef enum {
    PENSTOCK_VALVE_PRV = 1, /* Pressure Reducing Valve */
    PENSTOCK_VALVE_PSV = 2, /* Pressure Sustaining Valve */
    PENSTOCK_VALVE_PBV = 3, /* Pressure Breaker Valve */
    PENSTOCK_VALVE_FCV = 4, /* Flow Control Valve */
    PENSTOCK_VALVE_TCV = 5, /* Throttle Control Valve */
    PENSTOCK_VALVE_GPV = 6  /* General Purpose Valve */
} penstock_valve_type_t;

typedef enum {
    PENSTOCK_HEADLOSS_DARCY_WEISBACH = 1,
    PENSTOCK_HEADLOSS_HAZEN_WILLIAMS = 2,
    PENSTOCK_HEADLOSS_CHEZY_MANNING = 3
} penstock_headloss_formula_t;

/* Simulation options */
typedef struct {
    penstock_headloss_formula_t headloss_formula;
    double flow_tolerance;
    double head_tolerance;
    int max_iterations;
    double relaxation_factor;
    double specific_gravity;
    double kinematic_viscosity; /* m^2/s */
    double bulk_modulus;        /* Pa */
    bool check_unbalanced;
} penstock_steady_options_t;

typedef struct {
    double total_duration;      /* seconds */
    double time_step;           /* seconds (dt) */
    double wave_speed_default;  /* m/s */
    bool enable_cavitation;
    double vapor_pressure_head; /* meters */
    bool enable_unsteady_friction;
    double courant_number;      /* Cr <= 1.0 */
} penstock_transient_options_t;

/* Node definition */
typedef struct {
    char id[64];
    penstock_node_type_t type;
    double elevation;      /* meters */
    double base_demand;    /* m^3/s */
    double total_head;     /* meters (for reservoir) */
    double min_level;      /* meters (for tank) */
    double max_level;      /* meters (for tank) */
    double current_level;  /* meters (for tank) */
    double tank_diameter;  /* meters */
    double emitter_coeff;  /* m^(3-2alpha)/s */
    double emitter_exp;    /* typically 0.5 */
} penstock_node_t;

/* Link definition */
typedef struct {
    char id[64];
    penstock_link_type_t type;
    int from_node;
    int to_node;
    double length;         /* meters */
    double diameter;       /* meters */
    double roughness;      /* mm or C-factor */
    double minor_loss;     /* loss coefficient K */
    double wave_speed;     /* m/s */
    penstock_valve_type_t valve_type;
    double valve_setting;
    double pump_h0;        /* shutoff head */
    double pump_flow_coeff;/* head curve coefficient */
    double pump_flow_exp;  /* head curve exponent */
    double pump_speed;     /* relative speed ratio */
    double pump_inertia;   /* kg*m^2 */
    bool is_open;
} penstock_link_t;

/* Network structure */
typedef struct {
    penstock_node_t* nodes;
    size_t node_count;
    size_t node_capacity;

    penstock_link_t* links;
    size_t link_count;
    size_t link_capacity;

    penstock_steady_options_t steady_opts;
    penstock_transient_options_t transient_opts;
} penstock_network_t;

/* Result structures */
typedef struct {
    int iterations;
    bool converged;
    double max_flow_residual;
    double max_head_residual;
    double* node_heads;    /* array of size node_count */
    double* node_pressures;/* array of size node_count */
    double* link_flows;    /* array of size link_count */
    double* link_velocities;/* array of size link_count */
} penstock_steady_result_t;

typedef struct {
    size_t time_steps;
    double dt;
    size_t node_count;
    size_t link_count;
    double* time_series_heads;    /* size: time_steps * node_count */
    double* time_series_flows;    /* size: time_steps * link_count */
    double* max_pressures;        /* size: node_count */
    double* min_pressures;        /* size: node_count */
    bool cavitation_occurred;
} penstock_transient_result_t;

/* Master lifecycle functions */
penstock_network_t* penstock_network_create(void);
void penstock_network_free(penstock_network_t* net);

int penstock_network_add_node(penstock_network_t* net, const penstock_node_t* node);
int penstock_network_add_link(penstock_network_t* net, const penstock_link_t* link);

int penstock_network_find_node(const penstock_network_t* net, const char* id);
int penstock_network_find_link(const penstock_network_t* net, const char* id);

penstock_steady_result_t* penstock_solve_steady(penstock_network_t* net);
void penstock_steady_result_free(penstock_steady_result_t* res);

penstock_transient_result_t* penstock_solve_transient(penstock_network_t* net,
                                                     const penstock_steady_result_t* initial_state);
void penstock_transient_result_free(penstock_transient_result_t* res);

#ifdef __cplusplus
}
#endif

#endif /* PENSTOCK_H */
