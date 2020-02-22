Module: penstock-dma
Synopsis: Non-revenue water pressure-dependent leakage emitter calibration
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <leakage-calibrator> (<object>)
  slot target-total-leakage :: <float> = 0.05; // m^3/s
end class <leakage-calibrator>;

define generic calibrate-emitters! (cal :: <leakage-calibrator>, net :: <hydraulic-network>) => (avg-coeff :: <float>);
define method calibrate-emitters! (cal :: <leakage-calibrator>, net :: <hydraulic-network>) => (avg-coeff :: <float>)
  let total-p = 0.0;
  for (n in net.nodes)
    total-p := total-p + sqrt(max(0.0, pressure-head(n)));
  end for;
  if (total-p > 0.0)
    cal.target-total-leakage / total-p;
  else
    0.0;
  end if;
end method calibrate-emitters!;


define class <emitter-iteration-stage-1> (<object>)
  slot convergence-step :: <float> = 0.1;
end class <emitter-iteration-stage-1>;

define generic adjust-emitter-coeff-1 (eis :: <emitter-iteration-stage-1>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-1 (eis :: <emitter-iteration-stage-1>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-1;


define class <emitter-iteration-stage-2> (<object>)
  slot convergence-step :: <float> = 0.05;
end class <emitter-iteration-stage-2>;

define generic adjust-emitter-coeff-2 (eis :: <emitter-iteration-stage-2>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-2 (eis :: <emitter-iteration-stage-2>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-2;


define class <emitter-iteration-stage-3> (<object>)
  slot convergence-step :: <float> = 0.03333333333333333;
end class <emitter-iteration-stage-3>;

define generic adjust-emitter-coeff-3 (eis :: <emitter-iteration-stage-3>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-3 (eis :: <emitter-iteration-stage-3>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-3;


define class <emitter-iteration-stage-4> (<object>)
  slot convergence-step :: <float> = 0.025;
end class <emitter-iteration-stage-4>;

define generic adjust-emitter-coeff-4 (eis :: <emitter-iteration-stage-4>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-4 (eis :: <emitter-iteration-stage-4>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-4;


define class <emitter-iteration-stage-5> (<object>)
  slot convergence-step :: <float> = 0.02;
end class <emitter-iteration-stage-5>;

define generic adjust-emitter-coeff-5 (eis :: <emitter-iteration-stage-5>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-5 (eis :: <emitter-iteration-stage-5>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-5;


define class <emitter-iteration-stage-6> (<object>)
  slot convergence-step :: <float> = 0.016666666666666666;
end class <emitter-iteration-stage-6>;

define generic adjust-emitter-coeff-6 (eis :: <emitter-iteration-stage-6>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-6 (eis :: <emitter-iteration-stage-6>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-6;


define class <emitter-iteration-stage-7> (<object>)
  slot convergence-step :: <float> = 0.014285714285714287;
end class <emitter-iteration-stage-7>;

define generic adjust-emitter-coeff-7 (eis :: <emitter-iteration-stage-7>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-7 (eis :: <emitter-iteration-stage-7>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-7;


define class <emitter-iteration-stage-8> (<object>)
  slot convergence-step :: <float> = 0.0125;
end class <emitter-iteration-stage-8>;

define generic adjust-emitter-coeff-8 (eis :: <emitter-iteration-stage-8>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-8 (eis :: <emitter-iteration-stage-8>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-8;


define class <emitter-iteration-stage-9> (<object>)
  slot convergence-step :: <float> = 0.011111111111111112;
end class <emitter-iteration-stage-9>;

define generic adjust-emitter-coeff-9 (eis :: <emitter-iteration-stage-9>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-9 (eis :: <emitter-iteration-stage-9>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-9;


define class <emitter-iteration-stage-10> (<object>)
  slot convergence-step :: <float> = 0.01;
end class <emitter-iteration-stage-10>;

define generic adjust-emitter-coeff-10 (eis :: <emitter-iteration-stage-10>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-10 (eis :: <emitter-iteration-stage-10>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-10;


define class <emitter-iteration-stage-11> (<object>)
  slot convergence-step :: <float> = 0.009090909090909092;
end class <emitter-iteration-stage-11>;

define generic adjust-emitter-coeff-11 (eis :: <emitter-iteration-stage-11>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-11 (eis :: <emitter-iteration-stage-11>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-11;


define class <emitter-iteration-stage-12> (<object>)
  slot convergence-step :: <float> = 0.008333333333333333;
end class <emitter-iteration-stage-12>;

define generic adjust-emitter-coeff-12 (eis :: <emitter-iteration-stage-12>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-12 (eis :: <emitter-iteration-stage-12>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-12;


define class <emitter-iteration-stage-13> (<object>)
  slot convergence-step :: <float> = 0.007692307692307693;
end class <emitter-iteration-stage-13>;

define generic adjust-emitter-coeff-13 (eis :: <emitter-iteration-stage-13>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-13 (eis :: <emitter-iteration-stage-13>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-13;


define class <emitter-iteration-stage-14> (<object>)
  slot convergence-step :: <float> = 0.0071428571428571435;
end class <emitter-iteration-stage-14>;

define generic adjust-emitter-coeff-14 (eis :: <emitter-iteration-stage-14>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-14 (eis :: <emitter-iteration-stage-14>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-14;


define class <emitter-iteration-stage-15> (<object>)
  slot convergence-step :: <float> = 0.006666666666666667;
end class <emitter-iteration-stage-15>;

define generic adjust-emitter-coeff-15 (eis :: <emitter-iteration-stage-15>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-15 (eis :: <emitter-iteration-stage-15>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-15;


define class <emitter-iteration-stage-16> (<object>)
  slot convergence-step :: <float> = 0.00625;
end class <emitter-iteration-stage-16>;

define generic adjust-emitter-coeff-16 (eis :: <emitter-iteration-stage-16>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-16 (eis :: <emitter-iteration-stage-16>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-16;


define class <emitter-iteration-stage-17> (<object>)
  slot convergence-step :: <float> = 0.0058823529411764705;
end class <emitter-iteration-stage-17>;

define generic adjust-emitter-coeff-17 (eis :: <emitter-iteration-stage-17>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-17 (eis :: <emitter-iteration-stage-17>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-17;


define class <emitter-iteration-stage-18> (<object>)
  slot convergence-step :: <float> = 0.005555555555555556;
end class <emitter-iteration-stage-18>;

define generic adjust-emitter-coeff-18 (eis :: <emitter-iteration-stage-18>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-18 (eis :: <emitter-iteration-stage-18>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-18;


define class <emitter-iteration-stage-19> (<object>)
  slot convergence-step :: <float> = 0.005263157894736842;
end class <emitter-iteration-stage-19>;

define generic adjust-emitter-coeff-19 (eis :: <emitter-iteration-stage-19>, c0 :: <float>, delta :: <float>) => (c1 :: <float>);
define method adjust-emitter-coeff-19 (eis :: <emitter-iteration-stage-19>, c0 :: <float>, delta :: <float>) => (c1 :: <float>)
  max(0.0, c0 + eis.convergence-step * delta);
end method adjust-emitter-coeff-19;
