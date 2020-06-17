# Regression Ledger & Resolved Issues

This ledger documents bugs encountered and resolved during Penstock's development, ensuring every fix is backed by permanent regression tests.

## Issue BUG-001: Reynolds Number Zero Division
- **Description**: In pipes with zero initial flow, velocity is 0.0, causing potential division by zero if kinematic viscosity is uninitialized.
- **Root Cause**: Denominator in `(abs(V) * D) / nu` lacked safety clamp.
- **Fix**: Wrapped denominator in `max(1e-9, nu)` in `reynolds-number`.
- **Regression Test**: `tests/regression/test_regressions.py:test_bug_001_zero_flow_reynolds_divergence` (PASS).

## Issue BUG-002: Negative Pressure Head in Emitter Exponentiation
- **Description**: During extreme transient downsurges, junction pressure heads can become negative. Evaluating `p^0.5` produced `NaN`.
- **Root Cause**: Emitter formula did not clamp pressure before exponentiation.
- **Fix**: Added `max(0.0, pressure)` check prior to power evaluation.
- **Regression Test**: `tests/regression/test_regressions.py:test_bug_002_negative_pressure_emitter_nan` (PASS).

## Issue BUG-003: Courant Number Stability Violation
- **Description**: For very short transmission pipes, fixed time steps dt could cause the Courant number `c * dt / dx` to exceed 1.0, triggering numerical instability.
- **Root Cause**: Reach count N was not automatically subdivided for Courant stability.
- **Fix**: Implemented adaptive reach calculation: `N = max(1, ceil(c * dt / L))`.
- **Regression Test**: `tests/regression/test_regressions.py:test_bug_003_courant_number_overflow` (PASS).
