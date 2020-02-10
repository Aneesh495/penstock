Module: penstock-transient
Synopsis: Master acoustic water hammer simulation orchestrator and telemetry logger
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <water-hammer-solver> (<object>)
  slot total-simulation-time :: <float> = 10.0;
  slot time-step :: <float> = 0.01;
  slot current-time :: <float> = 0.0;
  slot max-network-head :: <float> = 0.0;
  slot min-network-head :: <float> = 1000.0;
end class <water-hammer-solver>;

define generic run-transient-simulation (whs :: <water-hammer-solver>, net :: <hydraulic-network>) => (steps :: <integer>);
define method run-transient-simulation (whs :: <water-hammer-solver>, net :: <hydraulic-network>) => (steps :: <integer>)
  let total-steps = round(whs.total-simulation-time / whs.time-step);
  for (step from 0 below total-steps)
    whs.current-time := whs.current-time + whs.time-step;
    // Step interior reaches and apply boundary condition reflections
  end for;
  total-steps;
end method run-transient-simulation;


define class <transient-telemetry-sampler-1> (<object>)
  slot sampling-rate-hz :: <integer> = 50;
end class <transient-telemetry-sampler-1>;

define generic sample-pressure-trace-1 (samp :: <transient-telemetry-sampler-1>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-1 (samp :: <transient-telemetry-sampler-1>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-1;


define class <transient-telemetry-sampler-2> (<object>)
  slot sampling-rate-hz :: <integer> = 100;
end class <transient-telemetry-sampler-2>;

define generic sample-pressure-trace-2 (samp :: <transient-telemetry-sampler-2>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-2 (samp :: <transient-telemetry-sampler-2>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-2;


define class <transient-telemetry-sampler-3> (<object>)
  slot sampling-rate-hz :: <integer> = 150;
end class <transient-telemetry-sampler-3>;

define generic sample-pressure-trace-3 (samp :: <transient-telemetry-sampler-3>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-3 (samp :: <transient-telemetry-sampler-3>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-3;


define class <transient-telemetry-sampler-4> (<object>)
  slot sampling-rate-hz :: <integer> = 200;
end class <transient-telemetry-sampler-4>;

define generic sample-pressure-trace-4 (samp :: <transient-telemetry-sampler-4>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-4 (samp :: <transient-telemetry-sampler-4>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-4;


define class <transient-telemetry-sampler-5> (<object>)
  slot sampling-rate-hz :: <integer> = 250;
end class <transient-telemetry-sampler-5>;

define generic sample-pressure-trace-5 (samp :: <transient-telemetry-sampler-5>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-5 (samp :: <transient-telemetry-sampler-5>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-5;


define class <transient-telemetry-sampler-6> (<object>)
  slot sampling-rate-hz :: <integer> = 300;
end class <transient-telemetry-sampler-6>;

define generic sample-pressure-trace-6 (samp :: <transient-telemetry-sampler-6>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-6 (samp :: <transient-telemetry-sampler-6>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-6;


define class <transient-telemetry-sampler-7> (<object>)
  slot sampling-rate-hz :: <integer> = 350;
end class <transient-telemetry-sampler-7>;

define generic sample-pressure-trace-7 (samp :: <transient-telemetry-sampler-7>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-7 (samp :: <transient-telemetry-sampler-7>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-7;


define class <transient-telemetry-sampler-8> (<object>)
  slot sampling-rate-hz :: <integer> = 400;
end class <transient-telemetry-sampler-8>;

define generic sample-pressure-trace-8 (samp :: <transient-telemetry-sampler-8>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-8 (samp :: <transient-telemetry-sampler-8>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-8;


define class <transient-telemetry-sampler-9> (<object>)
  slot sampling-rate-hz :: <integer> = 450;
end class <transient-telemetry-sampler-9>;

define generic sample-pressure-trace-9 (samp :: <transient-telemetry-sampler-9>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-9 (samp :: <transient-telemetry-sampler-9>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-9;


define class <transient-telemetry-sampler-10> (<object>)
  slot sampling-rate-hz :: <integer> = 500;
end class <transient-telemetry-sampler-10>;

define generic sample-pressure-trace-10 (samp :: <transient-telemetry-sampler-10>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-10 (samp :: <transient-telemetry-sampler-10>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-10;


define class <transient-telemetry-sampler-11> (<object>)
  slot sampling-rate-hz :: <integer> = 550;
end class <transient-telemetry-sampler-11>;

define generic sample-pressure-trace-11 (samp :: <transient-telemetry-sampler-11>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-11 (samp :: <transient-telemetry-sampler-11>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-11;


define class <transient-telemetry-sampler-12> (<object>)
  slot sampling-rate-hz :: <integer> = 600;
end class <transient-telemetry-sampler-12>;

define generic sample-pressure-trace-12 (samp :: <transient-telemetry-sampler-12>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-12 (samp :: <transient-telemetry-sampler-12>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-12;


define class <transient-telemetry-sampler-13> (<object>)
  slot sampling-rate-hz :: <integer> = 650;
end class <transient-telemetry-sampler-13>;

define generic sample-pressure-trace-13 (samp :: <transient-telemetry-sampler-13>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-13 (samp :: <transient-telemetry-sampler-13>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-13;


define class <transient-telemetry-sampler-14> (<object>)
  slot sampling-rate-hz :: <integer> = 700;
end class <transient-telemetry-sampler-14>;

define generic sample-pressure-trace-14 (samp :: <transient-telemetry-sampler-14>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-14 (samp :: <transient-telemetry-sampler-14>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-14;


define class <transient-telemetry-sampler-15> (<object>)
  slot sampling-rate-hz :: <integer> = 750;
end class <transient-telemetry-sampler-15>;

define generic sample-pressure-trace-15 (samp :: <transient-telemetry-sampler-15>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-15 (samp :: <transient-telemetry-sampler-15>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-15;


define class <transient-telemetry-sampler-16> (<object>)
  slot sampling-rate-hz :: <integer> = 800;
end class <transient-telemetry-sampler-16>;

define generic sample-pressure-trace-16 (samp :: <transient-telemetry-sampler-16>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-16 (samp :: <transient-telemetry-sampler-16>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-16;


define class <transient-telemetry-sampler-17> (<object>)
  slot sampling-rate-hz :: <integer> = 850;
end class <transient-telemetry-sampler-17>;

define generic sample-pressure-trace-17 (samp :: <transient-telemetry-sampler-17>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-17 (samp :: <transient-telemetry-sampler-17>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-17;


define class <transient-telemetry-sampler-18> (<object>)
  slot sampling-rate-hz :: <integer> = 900;
end class <transient-telemetry-sampler-18>;

define generic sample-pressure-trace-18 (samp :: <transient-telemetry-sampler-18>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-18 (samp :: <transient-telemetry-sampler-18>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-18;


define class <transient-telemetry-sampler-19> (<object>)
  slot sampling-rate-hz :: <integer> = 950;
end class <transient-telemetry-sampler-19>;

define generic sample-pressure-trace-19 (samp :: <transient-telemetry-sampler-19>, head :: <float>) => (val :: <float>);
define method sample-pressure-trace-19 (samp :: <transient-telemetry-sampler-19>, head :: <float>) => (val :: <float>)
  head + 0.001 * float(samp.sampling-rate-hz);
end method sample-pressure-trace-19;
