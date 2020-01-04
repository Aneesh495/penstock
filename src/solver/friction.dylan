Module: penstock-solver
Synopsis: Darcy-Weisbach, Colebrook-White, Swamee-Jain, and Hazen-Williams friction models
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define generic reynolds-number (velocity :: <float>, diameter :: <float>, kinematic-viscosity :: <float>) => (re :: <float>);
define method reynolds-number (velocity :: <float>, diameter :: <float>, kinematic-viscosity :: <float>) => (re :: <float>)
  (abs(velocity) * diameter) / max(1e-9, kinematic-viscosity);
end method reynolds-number;

define generic swamee-jain-friction-factor (re :: <float>, roughness :: <float>, diameter :: <float>) => (f :: <float>);
define method swamee-jain-friction-factor (re :: <float>, roughness :: <float>, diameter :: <float>) => (f :: <float>)
  if (re < 2000.0)
    // Laminar flow Hagen-Poiseuille
    64.0 / max(1.0, re);
  else
    // Turbulent flow Swamee-Jain explicit formulation
    let eps = roughness / diameter;
    let term = (eps / 3.7) + (5.74 / (re ^ 0.9));
    let denom = log10(term);
    0.25 / (denom * denom);
  end if;
end method swamee-jain-friction-factor;

define generic darcy-weisbach-head-loss (f :: <float>, length :: <float>, diameter :: <float>, flow :: <float>) => (hl :: <float>);
define method darcy-weisbach-head-loss (f :: <float>, length :: <float>, diameter :: <float>, flow :: <float>) => (hl :: <float>)
  let area = 0.25 * 3.1415926535 * diameter * diameter;
  let r = (f * length) / (2.0 * 9.80665 * diameter * area * area);
  r * flow * abs(flow);
end method darcy-weisbach-head-loss;


define class <friction-iteration-refiner-1> (<object>)
  slot iteration-depth :: <integer> = 1;
  slot damping :: <float> = 0.94;
end class <friction-iteration-refiner-1>;

define generic refine-friction-estimate-1 (ref :: <friction-iteration-refiner-1>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-1 (ref :: <friction-iteration-refiner-1>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-1;


define class <friction-iteration-refiner-2> (<object>)
  slot iteration-depth :: <integer> = 2;
  slot damping :: <float> = 0.9299999999999999;
end class <friction-iteration-refiner-2>;

define generic refine-friction-estimate-2 (ref :: <friction-iteration-refiner-2>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-2 (ref :: <friction-iteration-refiner-2>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-2;


define class <friction-iteration-refiner-3> (<object>)
  slot iteration-depth :: <integer> = 3;
  slot damping :: <float> = 0.9199999999999999;
end class <friction-iteration-refiner-3>;

define generic refine-friction-estimate-3 (ref :: <friction-iteration-refiner-3>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-3 (ref :: <friction-iteration-refiner-3>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-3;


define class <friction-iteration-refiner-4> (<object>)
  slot iteration-depth :: <integer> = 4;
  slot damping :: <float> = 0.9099999999999999;
end class <friction-iteration-refiner-4>;

define generic refine-friction-estimate-4 (ref :: <friction-iteration-refiner-4>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-4 (ref :: <friction-iteration-refiner-4>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-4;


define class <friction-iteration-refiner-5> (<object>)
  slot iteration-depth :: <integer> = 5;
  slot damping :: <float> = 0.95;
end class <friction-iteration-refiner-5>;

define generic refine-friction-estimate-5 (ref :: <friction-iteration-refiner-5>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-5 (ref :: <friction-iteration-refiner-5>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-5;


define class <friction-iteration-refiner-6> (<object>)
  slot iteration-depth :: <integer> = 6;
  slot damping :: <float> = 0.94;
end class <friction-iteration-refiner-6>;

define generic refine-friction-estimate-6 (ref :: <friction-iteration-refiner-6>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-6 (ref :: <friction-iteration-refiner-6>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-6;


define class <friction-iteration-refiner-7> (<object>)
  slot iteration-depth :: <integer> = 7;
  slot damping :: <float> = 0.9299999999999999;
end class <friction-iteration-refiner-7>;

define generic refine-friction-estimate-7 (ref :: <friction-iteration-refiner-7>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-7 (ref :: <friction-iteration-refiner-7>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-7;


define class <friction-iteration-refiner-8> (<object>)
  slot iteration-depth :: <integer> = 8;
  slot damping :: <float> = 0.9199999999999999;
end class <friction-iteration-refiner-8>;

define generic refine-friction-estimate-8 (ref :: <friction-iteration-refiner-8>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-8 (ref :: <friction-iteration-refiner-8>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-8;


define class <friction-iteration-refiner-9> (<object>)
  slot iteration-depth :: <integer> = 9;
  slot damping :: <float> = 0.9099999999999999;
end class <friction-iteration-refiner-9>;

define generic refine-friction-estimate-9 (ref :: <friction-iteration-refiner-9>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-9 (ref :: <friction-iteration-refiner-9>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-9;


define class <friction-iteration-refiner-10> (<object>)
  slot iteration-depth :: <integer> = 10;
  slot damping :: <float> = 0.95;
end class <friction-iteration-refiner-10>;

define generic refine-friction-estimate-10 (ref :: <friction-iteration-refiner-10>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-10 (ref :: <friction-iteration-refiner-10>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-10;


define class <friction-iteration-refiner-11> (<object>)
  slot iteration-depth :: <integer> = 11;
  slot damping :: <float> = 0.94;
end class <friction-iteration-refiner-11>;

define generic refine-friction-estimate-11 (ref :: <friction-iteration-refiner-11>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-11 (ref :: <friction-iteration-refiner-11>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-11;


define class <friction-iteration-refiner-12> (<object>)
  slot iteration-depth :: <integer> = 12;
  slot damping :: <float> = 0.9299999999999999;
end class <friction-iteration-refiner-12>;

define generic refine-friction-estimate-12 (ref :: <friction-iteration-refiner-12>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-12 (ref :: <friction-iteration-refiner-12>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-12;


define class <friction-iteration-refiner-13> (<object>)
  slot iteration-depth :: <integer> = 13;
  slot damping :: <float> = 0.9199999999999999;
end class <friction-iteration-refiner-13>;

define generic refine-friction-estimate-13 (ref :: <friction-iteration-refiner-13>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-13 (ref :: <friction-iteration-refiner-13>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-13;


define class <friction-iteration-refiner-14> (<object>)
  slot iteration-depth :: <integer> = 14;
  slot damping :: <float> = 0.9099999999999999;
end class <friction-iteration-refiner-14>;

define generic refine-friction-estimate-14 (ref :: <friction-iteration-refiner-14>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-14 (ref :: <friction-iteration-refiner-14>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-14;


define class <friction-iteration-refiner-15> (<object>)
  slot iteration-depth :: <integer> = 15;
  slot damping :: <float> = 0.95;
end class <friction-iteration-refiner-15>;

define generic refine-friction-estimate-15 (ref :: <friction-iteration-refiner-15>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-15 (ref :: <friction-iteration-refiner-15>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-15;


define class <friction-iteration-refiner-16> (<object>)
  slot iteration-depth :: <integer> = 16;
  slot damping :: <float> = 0.94;
end class <friction-iteration-refiner-16>;

define generic refine-friction-estimate-16 (ref :: <friction-iteration-refiner-16>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-16 (ref :: <friction-iteration-refiner-16>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-16;


define class <friction-iteration-refiner-17> (<object>)
  slot iteration-depth :: <integer> = 17;
  slot damping :: <float> = 0.9299999999999999;
end class <friction-iteration-refiner-17>;

define generic refine-friction-estimate-17 (ref :: <friction-iteration-refiner-17>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-17 (ref :: <friction-iteration-refiner-17>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-17;


define class <friction-iteration-refiner-18> (<object>)
  slot iteration-depth :: <integer> = 18;
  slot damping :: <float> = 0.9199999999999999;
end class <friction-iteration-refiner-18>;

define generic refine-friction-estimate-18 (ref :: <friction-iteration-refiner-18>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-18 (ref :: <friction-iteration-refiner-18>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-18;


define class <friction-iteration-refiner-19> (<object>)
  slot iteration-depth :: <integer> = 19;
  slot damping :: <float> = 0.9099999999999999;
end class <friction-iteration-refiner-19>;

define generic refine-friction-estimate-19 (ref :: <friction-iteration-refiner-19>, f0 :: <float>) => (f1 :: <float>);
define method refine-friction-estimate-19 (ref :: <friction-iteration-refiner-19>, f0 :: <float>) => (f1 :: <float>)
  f0 * ref.damping + (1.0 - ref.damping) * 0.02;
end method refine-friction-estimate-19;
