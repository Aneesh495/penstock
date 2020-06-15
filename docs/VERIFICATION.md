# Verification Record & Test Methodology

Penstock undergoes rigorous multi-layer verification spanning native C unit assertions, Python integration workflows, numerical benchmarks, and regression suites.

## Verification Matrix

| Layer | Harness | Assertions / Cases | Scope |
|---|---|---|---|
| Native C Unit | `bin/test_runner` | 40 assertions | Dylan VM, CLOS dispatch, CSR sparse matrix, MOC wave stepper |
| Integration | `unittest` | 8 workflows | Mass conservation, Colebrook friction, Joukowsky surge, ITA leaks |
| Regression | `unittest` | 3 test cases | Edge-case zero flow, negative pressure emitters, Courant overflow |
| Verification | `make verify` | 100% PASS | Zero em dash check, syntax validation, build integrity |
