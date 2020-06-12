# Dylan Language Engineering & CLOS Architecture

Penstock is engineered around the Dylan programming language, leveraging its dynamic object model, multiple dispatch generic functions, conditions and restarts, and modular library architecture.

## 1. Multiple Dispatch Generic Functions

Unlike single-dispatch object-oriented languages where methods belong strictly to a single class, Dylan generic functions dispatch across the runtime types of all passed arguments:

```dylan
define generic compute-head-loss (link :: <hydraulic-link>, flow :: <float>, regime :: <flow-regime>)
  => (head-loss :: <float>, derivative :: <float>);

define method compute-head-loss (link :: <pipe>, flow :: <float>, regime :: <turbulent-flow>)
  => (head-loss :: <float>, derivative :: <float>)
  // Darcy-Weisbach Colebrook formulation
end method compute-head-loss;

define method compute-head-loss (valve :: <control-valve>, flow :: <float>, regime :: <throttled-cavitation>)
  => (head-loss :: <float>, derivative :: <float>)
  // Orifice cavitation model
end method compute-head-loss;
```

## 2. Conditions and Restarts

Penstock replaces fragile error codes with Dylan's condition and restart protocol. When a numerical anomaly occurs (e.g. pressure falling below vapor pressure, or failure of a non-linear iteration step), an active condition is signaled with registered recovery restarts:

```dylan
define class <cavitation-warning> (<hydraulic-condition>)
  slot pressure-head :: <float>, required-init-keyword: head:;
  slot vapor-volume :: <float> = 0.0, init-keyword: volume:;
end class <cavitation-warning>;

// Signal condition allowing calling context to restart with vapor cavity tracking
signal(make(<cavitation-warning>, head: current-head, volume: delta-v));
```

## 3. Standalone C99 Execution Runtime

To allow instant building on any machine without requiring external compilers, Penstock includes a clean, self-contained C99 runtime (`src/runtime/`):
- Dynamic type tagging and memory pool
- CLOS-style multiple dispatch method tables
- Lexical parser and module loader
- C Foreign Function Interface (FFI) bridging Dylan and native numerical kernels
