# Penstock Architecture Specification

Penstock is a standalone municipal water distribution network solver, Method of Characteristics (MOC) pressure transient simulator, and District Metered Area (DMA) leak detection engine in Dylan.

```
========================================================================================
                                PENSTOCK ARCHITECTURE
========================================================================================
   [CLI & Orchestration]       penstock-cli  |  EPANET INP Parser  |  GeoJSON Telemetry
                                        |
                                        v
   [Dylan Core Domain]          <hydraulic-network>  <--->  <hydraulic-node>  <--->  <hydraulic-link>
                                - <junction> (Base demands, diurnal patterns, leakage emitters)
                                - <reservoir> (Infinite source, fixed total head)
                                - <tank> (Dynamic cylindrical & non-linear elevation volume)
                                - <pipe> (Darcy-Weisbach, Colebrook-White, minor losses)
                                - <pump> (Head-discharge curves, speed ratios, affinity laws)
                                - <control-valve> (PRV, PSV, PBV, FCV, TCV, GPV)
                                - <surge-vessel> (Polytropic air expansion, differential orifice)
                                        |
                     +------------------+------------------+
                     |                                     |
                     v                                     v
   [Steady & EPS Solver (GGA)]           [MOC Transient Wave Engine]
   - Todini-Pilati Global Gradient       - 1D Compressible Hyperbolic Navier-Stokes
   - Preconditioned Conjugate Gradient   - Method of Characteristics (C+ and C-)
   - Wagner-Germanopoulos PDD            - Discrete Vapor Cavity Model (DVCM)
   - 24h-168h Time-Stepping Diurnal      - Four-Quadrant Suter Pump Trip Curves
   - Tariff & Pump Carbon Footprint      - Brunone-Vardy-Brown Unsteady Friction
                     |                                     |
                     +------------------+------------------+
                                        |
                                        v
   [District Metered Area (DMA)]        [C99 Acceleration & VM Engine]
   - Spectral Graph Partitioning        - libpenstock (Shared C99 Kernels)
   - Boundary Meter Optimization        - Dylan CLOS Multiple Dispatch VM
   - Inverse Transient Analysis (ITA)   - SIMD-Friendly MOC Grid Iteration
   - Shannon Entropy Sensor Placement   - Compressed Sparse Row (CSR) Linear Solver
========================================================================================
```

## System Subsystems

### 1. Dylan Domain Object Hierarchy
Penstock models physical infrastructure using Dylan's object-oriented system with multiple dispatch. Classes inherit from `<hydraulic-node>` or `<hydraulic-link>`. Every element encapsulates physical attributes (diameter, length, roughness, elevation, total head) while participating in polymorphic dispatch.

### 2. Global Gradient Algorithm (GGA) Steady Solver
Steady-state network balancing solves non-linear conservation of mass at junctions and conservation of energy in conduits using the Todini-Pilati Global Gradient formulation. Non-linear friction gradients are solved iteratively via Newton-Raphson sparse linear systems.

### 3. Method of Characteristics (MOC) Transient Solver
Rapid hydraulic events (water hammer, pump trips, fast valve closures) propagate acoustic waves at speeds of 1000 to 1400 m/s. The 1D hyperbolic continuity and momentum partial differential equations are transformed along characteristic lines (dx/dt = +/- c) into ordinary differential compatibility equations.

### 4. District Metered Area (DMA) Analytics & Leak Detection
Using graph partitioning, the network is segmented into isolated DMAs with dedicated boundary flow meters. Inverse Transient Analysis (ITA) evaluates high-frequency acoustic wave reflections to pinpoint buried pipe fractures with sub-meter accuracy.
