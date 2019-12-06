Module: penstock-core
Synopsis: Penstock master library and module exports definition
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT


define library penstock
  use common-dylan;
  use io;
  use system;

  export penstock-core,
         penstock-network,
         penstock-solver,
         penstock-transient,
         penstock-quality,
         penstock-dma,
         penstock-io,
         penstock-cli;
end library penstock;

define module penstock-core
  use common-dylan;
  use format-out;

  export <real-vector>,
         <coordinate-2d>,
         <coordinate-3d>,
         <fluid-state>,
         <hydraulic-error>,
         <convergence-failure>,
         <cavitation-warning>,
         $water-density-standard,
         $kinematic-viscosity-water-20c,
         $bulk-modulus-water,
         $gravitational-acceleration,
         celsius-to-kelvin,
         compute-vapor-pressure,
         compute-dynamic-viscosity;
end module penstock-core;
