# Hydraulic Theory and Mathematical Formulations

This document provides the mathematical derivations underlying Penstock's steady-state, transient, and water quality solvers.

## 1. Pipe Friction Formulations

### Darcy-Weisbach Equation
Head loss h_f along a circular conduit of length L and diameter D is given by:

    h_f = f * (L / D) * (V^2 / (2 * g)) = (8 * f * L * Q * |Q|) / (pi^2 * g * D^5)

### Colebrook-White Implicit Friction Factor
For turbulent flow (Re > 4000), the friction factor f is determined implicitly:

    1 / sqrt(f) = -2.0 * log10((epsilon / (3.7 * D)) + (2.51 / (Re * sqrt(f))))

### Swamee-Jain Explicit Approximation
Penstock uses the Swamee-Jain explicit formulation for high-speed evaluation:

    f = 0.25 / [log10((epsilon / (3.7 * D)) + (5.74 / (Re^0.9)))]^2

## 2. Todini-Pilati Global Gradient Algorithm (GGA)

At each iteration k, the linearized system of energy and continuity equations is expressed in block matrix form:

    [ A11   A12 ] [ Q ]   [ -dE ]
    [ A21    0  ] [ H ] = [ -q  ]

Where:
- A11 is a diagonal matrix containing head loss derivatives d(h_f)/dQ.
- A12 = A21^T is the node-link topological incidence matrix.
- Q is the link discharge vector.
- H is the junction piezometric head vector.

Eliminating Q yields the symmetric positive-definite Schur complement system for node heads:

    (A21 * A11^-1 * A12) * H = A21 * A11^-1 * (A11 * Q_k - dE) - q

Penstock solves this sparse symmetric system using Preconditioned Conjugate Gradient (PCG) with incomplete Cholesky factorization.

## 3. Method of Characteristics (MOC) Transient Waves

The 1D compressible pipe flow equations:

    Continuity:  dH/dt + (c^2 / (g * A)) * dQ/dx = 0
    Momentum:    dQ/dt + g * A * dH/dx + (f * Q * |Q|) / (2 * D * A) = 0

Transform along characteristic lines dx/dt = +/- c into:

    C+ Compatibility: H_P - H_A + B * (Q_P - Q_A) + R * Q_A * |Q_A| = 0
    C- Compatibility: H_P - H_B - B * (Q_P - Q_B) - R * Q_B * |Q_B| = 0

Where:
- B = c / (g * A) is the pipeline acoustic impedance.
- R = (f * dx) / (2 * g * D * A^2) is the frictional pipeline resistance.
