# Penstock

A high-performance municipal water distribution hydraulic solver, Method of Characteristics (MOC) transient water hammer simulator, and District Metered Area (DMA) leak detection engine in Dylan.

![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)
![Dylan LOC](https://img.shields.io/badge/Dylan%20LOC-30%2C340-blue.svg)
![Total LOC](https://img.shields.io/badge/Total%20LOC-34%2C000%2B-purple.svg)
![Standard](https://img.shields.io/badge/EPANET-INP%20Compatible-orange.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

Penstock is a standalone municipal water distribution network simulation and acoustic wave transient engine engineered in the Dylan programming language. It couples Todini-Pilati Global Gradient steady-state network balancing with high-frequency Method of Characteristics (MOC) pressure wave tracking, column separation modeling, and inverse transient leak localization.

The core computational logic and network domain hierarchy are written in Dylan, leveraging CLOS-style multiple dispatch, generic functions, conditions/restarts, and modular libraries. A self-contained C99 runtime and sparse linear algebra engine provide zero-dependency native execution on any machine.

---

## Architecture Overview

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

---

## Quick Start

### 1. Build Native Libraries and Runtime

    git clone https://github.com/Aneesh495/penstock.git
    cd penstock
    make

### 2. Run Comprehensive Test Suite

    make test

Output:

    ================================================================
          PENSTOCK NATIVE C & DYLAN RUNTIME VERIFICATION SUITE      
    ================================================================
    [1/7] Testing Dylan VM core and symbol intern pool... PASS
    [2/7] Testing CLOS multiple dispatch and generic functions... PASS
    [3/7] Testing sparse matrix CSR assembly and MatVec... PASS
    [4/7] Testing Method of Characteristics acoustic wave stepper... PASS
    [5/7] Testing Suter 4-quadrant pump trip curve transformation... PASS
    [6/7] Testing network topology container and C FFI... PASS
    [7/7] Testing Dylan source file parser scan... PASS
    ================================================================
    ALL TESTS PASSED! Total assertions verified: 40
    ================================================================
    Ran 11 tests in 0.082s: OK

### 3. Run Water Hammer & Leak Detection Demonstration

    make demo

---

## Technical Documentation

- [Architecture Specification](docs/ARCHITECTURE.md): Comprehensive review of subsystems, data flows, and memory layouts.
- [Hydraulic Theory & Formulations](docs/HYDRAULICS_THEORY.md): Mathematical derivations for Todini GGA, MOC Riemann invariants, and Swamee-Jain friction.
- [Dylan Language Engineering](docs/DYLAN_ENGINEERING.md): Multiple dispatch generic functions, conditions/restarts, and standalone VM.
- [EPANET INP Specification](docs/INP_SPECIFICATION.md): Network topology interchange format and parameter guide.
- [Acoustic Transient Analysis](docs/TRANSIENT_ANALYSIS.md): Joukowsky pressure surge, air vessels, and valve stroking.
- [District Metered Areas (DMA)](docs/LEAK_DETECTION_DMA.md): Spectral partitioning, boundary meters, and Inverse Transient Analysis.
- [Command-Line Reference](docs/CLI_REFERENCE.md): Parameter guide for all CLI commands and options.
- [Verification Record](docs/VERIFICATION.md): Verification methodology, test matrices, and numerical accuracy.
- [Regression Ledger](docs/BUGS.md): Recorded development issues, root causes, and regression tests.
- [Developer Guide](docs/DEVELOPING.md): Build guidelines, environment configuration, and profiling.

---

## License

Penstock is licensed under the MIT License. See [LICENSE](LICENSE) for details.
