#include "penstock_runtime.h"
#include <math.h>
#include <stdio.h>

double dylan_prim_add_float(double a, double b) { return a + b; }
double dylan_prim_sub_float(double a, double b) { return a - b; }
double dylan_prim_mul_float(double a, double b) { return a * b; }
double dylan_prim_div_float(double a, double b) { return b != 0.0 ? a / b : 0.0; }
double dylan_prim_sqrt_float(double a) { return a >= 0.0 ? sqrt(a) : 0.0; }
double dylan_prim_pow_float(double a, double b) { return pow(a, b); }
