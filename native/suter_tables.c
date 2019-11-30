#include "penstock.h"
#include <math.h>

/* Suter curve representations for 4-quadrant pump trip dynamics */
double penstock_suter_wh(double theta) {
    /* Dimensionless head characteristic curve W_H(theta) */
    return 0.95 * cos(theta) + 0.25 * sin(2.0 * theta) - 0.1 * sin(4.0 * theta);
}

double penstock_suter_wb(double theta) {
    /* Dimensionless torque characteristic curve W_B(theta) */
    return 0.85 * cos(theta) + 0.15 * sin(2.0 * theta) + 0.05 * cos(3.0 * theta);
}
