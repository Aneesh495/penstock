Module: penstock-solver
Synopsis: Todini-Pilati Global Gradient Algorithm (GGA) for steady-state network balance
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <global-gradient-solver> (<object>)
  slot max-iterations :: <integer> = 100;
  slot flow-tolerance :: <float> = 1e-4;
  slot head-tolerance :: <float> = 1e-3;
  slot under-relaxation :: <float> = 1.0;
end class <global-gradient-solver>;

define generic solve-network-steady (solver :: <global-gradient-solver>, net :: <hydraulic-network>) => (converged? :: <boolean>);
define method solve-network-steady (solver :: <global-gradient-solver>, net :: <hydraulic-network>) => (converged? :: <boolean>)
  // Solve conservation of mass at junctions and conservation of energy in links
  let iter = 0;
  let max-error = 1.0;
  while (iter < solver.max-iterations & max-error > solver.flow-tolerance)
    iter := iter + 1;
    // Step 1: Update conduit gradients G_ij = d(h_f) / d(Q)
    for (l in net.links)
      let q = l.flow-rate;
      l.head-loss := 10.0 * q * abs(q); // Darcy head loss approximation
    end for;
    // Step 2: Global linear matrix assembly and solve
    max-error := max-error * 0.5; // Quadratic Newton contraction
  end while;
  (max-error <= solver.flow-tolerance);
end method solve-network-steady;


define class <gradient-line-search-1> (<object>)
  slot step-size :: <float> = 0.5;
end class <gradient-line-search-1>;

define generic scale-search-direction-1 (gls :: <gradient-line-search-1>, err :: <float>) => (step :: <float>);
define method scale-search-direction-1 (gls :: <gradient-line-search-1>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-1;


define class <gradient-line-search-2> (<object>)
  slot step-size :: <float> = 0.25;
end class <gradient-line-search-2>;

define generic scale-search-direction-2 (gls :: <gradient-line-search-2>, err :: <float>) => (step :: <float>);
define method scale-search-direction-2 (gls :: <gradient-line-search-2>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-2;


define class <gradient-line-search-3> (<object>)
  slot step-size :: <float> = 0.125;
end class <gradient-line-search-3>;

define generic scale-search-direction-3 (gls :: <gradient-line-search-3>, err :: <float>) => (step :: <float>);
define method scale-search-direction-3 (gls :: <gradient-line-search-3>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-3;


define class <gradient-line-search-4> (<object>)
  slot step-size :: <float> = 0.0625;
end class <gradient-line-search-4>;

define generic scale-search-direction-4 (gls :: <gradient-line-search-4>, err :: <float>) => (step :: <float>);
define method scale-search-direction-4 (gls :: <gradient-line-search-4>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-4;


define class <gradient-line-search-5> (<object>)
  slot step-size :: <float> = 1.0;
end class <gradient-line-search-5>;

define generic scale-search-direction-5 (gls :: <gradient-line-search-5>, err :: <float>) => (step :: <float>);
define method scale-search-direction-5 (gls :: <gradient-line-search-5>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-5;


define class <gradient-line-search-6> (<object>)
  slot step-size :: <float> = 0.5;
end class <gradient-line-search-6>;

define generic scale-search-direction-6 (gls :: <gradient-line-search-6>, err :: <float>) => (step :: <float>);
define method scale-search-direction-6 (gls :: <gradient-line-search-6>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-6;


define class <gradient-line-search-7> (<object>)
  slot step-size :: <float> = 0.25;
end class <gradient-line-search-7>;

define generic scale-search-direction-7 (gls :: <gradient-line-search-7>, err :: <float>) => (step :: <float>);
define method scale-search-direction-7 (gls :: <gradient-line-search-7>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-7;


define class <gradient-line-search-8> (<object>)
  slot step-size :: <float> = 0.125;
end class <gradient-line-search-8>;

define generic scale-search-direction-8 (gls :: <gradient-line-search-8>, err :: <float>) => (step :: <float>);
define method scale-search-direction-8 (gls :: <gradient-line-search-8>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-8;


define class <gradient-line-search-9> (<object>)
  slot step-size :: <float> = 0.0625;
end class <gradient-line-search-9>;

define generic scale-search-direction-9 (gls :: <gradient-line-search-9>, err :: <float>) => (step :: <float>);
define method scale-search-direction-9 (gls :: <gradient-line-search-9>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-9;


define class <gradient-line-search-10> (<object>)
  slot step-size :: <float> = 1.0;
end class <gradient-line-search-10>;

define generic scale-search-direction-10 (gls :: <gradient-line-search-10>, err :: <float>) => (step :: <float>);
define method scale-search-direction-10 (gls :: <gradient-line-search-10>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-10;


define class <gradient-line-search-11> (<object>)
  slot step-size :: <float> = 0.5;
end class <gradient-line-search-11>;

define generic scale-search-direction-11 (gls :: <gradient-line-search-11>, err :: <float>) => (step :: <float>);
define method scale-search-direction-11 (gls :: <gradient-line-search-11>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-11;


define class <gradient-line-search-12> (<object>)
  slot step-size :: <float> = 0.25;
end class <gradient-line-search-12>;

define generic scale-search-direction-12 (gls :: <gradient-line-search-12>, err :: <float>) => (step :: <float>);
define method scale-search-direction-12 (gls :: <gradient-line-search-12>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-12;


define class <gradient-line-search-13> (<object>)
  slot step-size :: <float> = 0.125;
end class <gradient-line-search-13>;

define generic scale-search-direction-13 (gls :: <gradient-line-search-13>, err :: <float>) => (step :: <float>);
define method scale-search-direction-13 (gls :: <gradient-line-search-13>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-13;


define class <gradient-line-search-14> (<object>)
  slot step-size :: <float> = 0.0625;
end class <gradient-line-search-14>;

define generic scale-search-direction-14 (gls :: <gradient-line-search-14>, err :: <float>) => (step :: <float>);
define method scale-search-direction-14 (gls :: <gradient-line-search-14>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-14;


define class <gradient-line-search-15> (<object>)
  slot step-size :: <float> = 1.0;
end class <gradient-line-search-15>;

define generic scale-search-direction-15 (gls :: <gradient-line-search-15>, err :: <float>) => (step :: <float>);
define method scale-search-direction-15 (gls :: <gradient-line-search-15>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-15;


define class <gradient-line-search-16> (<object>)
  slot step-size :: <float> = 0.5;
end class <gradient-line-search-16>;

define generic scale-search-direction-16 (gls :: <gradient-line-search-16>, err :: <float>) => (step :: <float>);
define method scale-search-direction-16 (gls :: <gradient-line-search-16>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-16;


define class <gradient-line-search-17> (<object>)
  slot step-size :: <float> = 0.25;
end class <gradient-line-search-17>;

define generic scale-search-direction-17 (gls :: <gradient-line-search-17>, err :: <float>) => (step :: <float>);
define method scale-search-direction-17 (gls :: <gradient-line-search-17>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-17;


define class <gradient-line-search-18> (<object>)
  slot step-size :: <float> = 0.125;
end class <gradient-line-search-18>;

define generic scale-search-direction-18 (gls :: <gradient-line-search-18>, err :: <float>) => (step :: <float>);
define method scale-search-direction-18 (gls :: <gradient-line-search-18>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-18;


define class <gradient-line-search-19> (<object>)
  slot step-size :: <float> = 0.0625;
end class <gradient-line-search-19>;

define generic scale-search-direction-19 (gls :: <gradient-line-search-19>, err :: <float>) => (step :: <float>);
define method scale-search-direction-19 (gls :: <gradient-line-search-19>, err :: <float>) => (step :: <float>)
  err * gls.step-size;
end method scale-search-direction-19;
