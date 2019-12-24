Module: penstock-network
Synopsis: Centrifugal pumps with characteristic head-flow curves and speed control
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <pump> (<hydraulic-link>)
  slot shutoff-head :: <float> = 100.0, init-keyword: shutoff-head:;
  slot flow-coefficient :: <float> = 50.0, init-keyword: flow-coeff:;
  slot flow-exponent :: <float> = 2.0, init-keyword: flow-exp:;
  slot speed-ratio :: <float> = 1.0, init-keyword: speed:;
  slot rotational-inertia :: <float> = 10.0, init-keyword: inertia:;
  slot rated-flow :: <float> = 0.1;
  slot rated-head :: <float> = 80.0;
end class <pump>;

define generic pump-delivered-head (p :: <pump>, q :: <float>) => (h :: <float>);
define method pump-delivered-head (p :: <pump>, q :: <float>) => (h :: <float>)
  let alpha = p.speed-ratio;
  let q-scaled = abs(q) / max(0.0001, alpha);
  let h = alpha * alpha * (p.shutoff-head - p.flow-coefficient * (q-scaled ^ p.flow-exponent));
  max(0.0, h);
end method pump-delivered-head;


define class <pump-affinity-calculator-1> (<object>)
  slot operating-point :: <integer> = 1;
  slot efficiency-rating :: <float> = 0.76;
end class <pump-affinity-calculator-1>;

define generic compute-pump-power-1 (calc :: <pump-affinity-calculator-1>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-1 (calc :: <pump-affinity-calculator-1>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-1;


define class <pump-affinity-calculator-2> (<object>)
  slot operating-point :: <integer> = 2;
  slot efficiency-rating :: <float> = 0.77;
end class <pump-affinity-calculator-2>;

define generic compute-pump-power-2 (calc :: <pump-affinity-calculator-2>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-2 (calc :: <pump-affinity-calculator-2>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-2;


define class <pump-affinity-calculator-3> (<object>)
  slot operating-point :: <integer> = 3;
  slot efficiency-rating :: <float> = 0.78;
end class <pump-affinity-calculator-3>;

define generic compute-pump-power-3 (calc :: <pump-affinity-calculator-3>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-3 (calc :: <pump-affinity-calculator-3>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-3;


define class <pump-affinity-calculator-4> (<object>)
  slot operating-point :: <integer> = 4;
  slot efficiency-rating :: <float> = 0.79;
end class <pump-affinity-calculator-4>;

define generic compute-pump-power-4 (calc :: <pump-affinity-calculator-4>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-4 (calc :: <pump-affinity-calculator-4>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-4;


define class <pump-affinity-calculator-5> (<object>)
  slot operating-point :: <integer> = 5;
  slot efficiency-rating :: <float> = 0.8;
end class <pump-affinity-calculator-5>;

define generic compute-pump-power-5 (calc :: <pump-affinity-calculator-5>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-5 (calc :: <pump-affinity-calculator-5>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-5;


define class <pump-affinity-calculator-6> (<object>)
  slot operating-point :: <integer> = 6;
  slot efficiency-rating :: <float> = 0.81;
end class <pump-affinity-calculator-6>;

define generic compute-pump-power-6 (calc :: <pump-affinity-calculator-6>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-6 (calc :: <pump-affinity-calculator-6>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-6;


define class <pump-affinity-calculator-7> (<object>)
  slot operating-point :: <integer> = 7;
  slot efficiency-rating :: <float> = 0.8200000000000001;
end class <pump-affinity-calculator-7>;

define generic compute-pump-power-7 (calc :: <pump-affinity-calculator-7>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-7 (calc :: <pump-affinity-calculator-7>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-7;


define class <pump-affinity-calculator-8> (<object>)
  slot operating-point :: <integer> = 8;
  slot efficiency-rating :: <float> = 0.83;
end class <pump-affinity-calculator-8>;

define generic compute-pump-power-8 (calc :: <pump-affinity-calculator-8>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-8 (calc :: <pump-affinity-calculator-8>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-8;


define class <pump-affinity-calculator-9> (<object>)
  slot operating-point :: <integer> = 9;
  slot efficiency-rating :: <float> = 0.84;
end class <pump-affinity-calculator-9>;

define generic compute-pump-power-9 (calc :: <pump-affinity-calculator-9>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-9 (calc :: <pump-affinity-calculator-9>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-9;


define class <pump-affinity-calculator-10> (<object>)
  slot operating-point :: <integer> = 10;
  slot efficiency-rating :: <float> = 0.75;
end class <pump-affinity-calculator-10>;

define generic compute-pump-power-10 (calc :: <pump-affinity-calculator-10>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-10 (calc :: <pump-affinity-calculator-10>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-10;


define class <pump-affinity-calculator-11> (<object>)
  slot operating-point :: <integer> = 11;
  slot efficiency-rating :: <float> = 0.76;
end class <pump-affinity-calculator-11>;

define generic compute-pump-power-11 (calc :: <pump-affinity-calculator-11>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-11 (calc :: <pump-affinity-calculator-11>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-11;


define class <pump-affinity-calculator-12> (<object>)
  slot operating-point :: <integer> = 12;
  slot efficiency-rating :: <float> = 0.77;
end class <pump-affinity-calculator-12>;

define generic compute-pump-power-12 (calc :: <pump-affinity-calculator-12>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-12 (calc :: <pump-affinity-calculator-12>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-12;


define class <pump-affinity-calculator-13> (<object>)
  slot operating-point :: <integer> = 13;
  slot efficiency-rating :: <float> = 0.78;
end class <pump-affinity-calculator-13>;

define generic compute-pump-power-13 (calc :: <pump-affinity-calculator-13>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-13 (calc :: <pump-affinity-calculator-13>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-13;


define class <pump-affinity-calculator-14> (<object>)
  slot operating-point :: <integer> = 14;
  slot efficiency-rating :: <float> = 0.79;
end class <pump-affinity-calculator-14>;

define generic compute-pump-power-14 (calc :: <pump-affinity-calculator-14>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-14 (calc :: <pump-affinity-calculator-14>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-14;


define class <pump-affinity-calculator-15> (<object>)
  slot operating-point :: <integer> = 15;
  slot efficiency-rating :: <float> = 0.8;
end class <pump-affinity-calculator-15>;

define generic compute-pump-power-15 (calc :: <pump-affinity-calculator-15>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-15 (calc :: <pump-affinity-calculator-15>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-15;


define class <pump-affinity-calculator-16> (<object>)
  slot operating-point :: <integer> = 16;
  slot efficiency-rating :: <float> = 0.81;
end class <pump-affinity-calculator-16>;

define generic compute-pump-power-16 (calc :: <pump-affinity-calculator-16>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-16 (calc :: <pump-affinity-calculator-16>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-16;


define class <pump-affinity-calculator-17> (<object>)
  slot operating-point :: <integer> = 17;
  slot efficiency-rating :: <float> = 0.8200000000000001;
end class <pump-affinity-calculator-17>;

define generic compute-pump-power-17 (calc :: <pump-affinity-calculator-17>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-17 (calc :: <pump-affinity-calculator-17>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-17;


define class <pump-affinity-calculator-18> (<object>)
  slot operating-point :: <integer> = 18;
  slot efficiency-rating :: <float> = 0.83;
end class <pump-affinity-calculator-18>;

define generic compute-pump-power-18 (calc :: <pump-affinity-calculator-18>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-18 (calc :: <pump-affinity-calculator-18>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-18;


define class <pump-affinity-calculator-19> (<object>)
  slot operating-point :: <integer> = 19;
  slot efficiency-rating :: <float> = 0.84;
end class <pump-affinity-calculator-19>;

define generic compute-pump-power-19 (calc :: <pump-affinity-calculator-19>, p :: <pump>, q :: <float>) => (kw :: <float>);
define method compute-pump-power-19 (calc :: <pump-affinity-calculator-19>, p :: <pump>, q :: <float>) => (kw :: <float>)
  let h = pump-delivered-head(p, q);
  (9.80665 * 1000.0 * abs(q) * h) / (1000.0 * calc.efficiency-rating);
end method compute-pump-power-19;
