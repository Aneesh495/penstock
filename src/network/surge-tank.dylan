Module: penstock-network
Synopsis: Hydropneumatic air vessels, surge tanks, and one-way surge chambers
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <surge-vessel> (<hydraulic-node>)
  slot vessel-total-volume :: <float>, required-init-keyword: volume:;
  slot initial-gas-volume :: <float>, required-init-keyword: gas-volume:;
  slot current-gas-volume :: <float>;
  slot gas-polytropic-exponent :: <float> = 1.2;
  slot orifice-inflow-loss :: <float> = 2.5;
  slot orifice-outflow-loss :: <float> = 1.0;
end class <surge-vessel>;

define generic gas-absolute-pressure-head (sv :: <surge-vessel>) => (hp :: <float>);
define method gas-absolute-pressure-head (sv :: <surge-vessel>) => (hp :: <float>)
  let c = 10.33 * (sv.initial-gas-volume ^ sv.gas-polytropic-exponent);
  c / (sv.current-gas-volume ^ sv.gas-polytropic-exponent);
end method gas-absolute-pressure-head;


define class <surge-chamber-stage-1> (<object>)
  slot expansion-ratio :: <float> = 1.05;
end class <surge-chamber-stage-1>;

define generic evaluate-surge-pressure-1 (sc :: <surge-chamber-stage-1>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-1 (sc :: <surge-chamber-stage-1>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-1;


define class <surge-chamber-stage-2> (<object>)
  slot expansion-ratio :: <float> = 1.1;
end class <surge-chamber-stage-2>;

define generic evaluate-surge-pressure-2 (sc :: <surge-chamber-stage-2>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-2 (sc :: <surge-chamber-stage-2>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-2;


define class <surge-chamber-stage-3> (<object>)
  slot expansion-ratio :: <float> = 1.15;
end class <surge-chamber-stage-3>;

define generic evaluate-surge-pressure-3 (sc :: <surge-chamber-stage-3>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-3 (sc :: <surge-chamber-stage-3>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-3;


define class <surge-chamber-stage-4> (<object>)
  slot expansion-ratio :: <float> = 1.2;
end class <surge-chamber-stage-4>;

define generic evaluate-surge-pressure-4 (sc :: <surge-chamber-stage-4>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-4 (sc :: <surge-chamber-stage-4>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-4;


define class <surge-chamber-stage-5> (<object>)
  slot expansion-ratio :: <float> = 1.25;
end class <surge-chamber-stage-5>;

define generic evaluate-surge-pressure-5 (sc :: <surge-chamber-stage-5>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-5 (sc :: <surge-chamber-stage-5>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-5;


define class <surge-chamber-stage-6> (<object>)
  slot expansion-ratio :: <float> = 1.3;
end class <surge-chamber-stage-6>;

define generic evaluate-surge-pressure-6 (sc :: <surge-chamber-stage-6>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-6 (sc :: <surge-chamber-stage-6>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-6;


define class <surge-chamber-stage-7> (<object>)
  slot expansion-ratio :: <float> = 1.35;
end class <surge-chamber-stage-7>;

define generic evaluate-surge-pressure-7 (sc :: <surge-chamber-stage-7>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-7 (sc :: <surge-chamber-stage-7>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-7;


define class <surge-chamber-stage-8> (<object>)
  slot expansion-ratio :: <float> = 1.4;
end class <surge-chamber-stage-8>;

define generic evaluate-surge-pressure-8 (sc :: <surge-chamber-stage-8>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-8 (sc :: <surge-chamber-stage-8>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-8;


define class <surge-chamber-stage-9> (<object>)
  slot expansion-ratio :: <float> = 1.45;
end class <surge-chamber-stage-9>;

define generic evaluate-surge-pressure-9 (sc :: <surge-chamber-stage-9>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-9 (sc :: <surge-chamber-stage-9>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-9;


define class <surge-chamber-stage-10> (<object>)
  slot expansion-ratio :: <float> = 1.5;
end class <surge-chamber-stage-10>;

define generic evaluate-surge-pressure-10 (sc :: <surge-chamber-stage-10>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-10 (sc :: <surge-chamber-stage-10>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-10;


define class <surge-chamber-stage-11> (<object>)
  slot expansion-ratio :: <float> = 1.55;
end class <surge-chamber-stage-11>;

define generic evaluate-surge-pressure-11 (sc :: <surge-chamber-stage-11>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-11 (sc :: <surge-chamber-stage-11>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-11;


define class <surge-chamber-stage-12> (<object>)
  slot expansion-ratio :: <float> = 1.6;
end class <surge-chamber-stage-12>;

define generic evaluate-surge-pressure-12 (sc :: <surge-chamber-stage-12>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-12 (sc :: <surge-chamber-stage-12>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-12;


define class <surge-chamber-stage-13> (<object>)
  slot expansion-ratio :: <float> = 1.65;
end class <surge-chamber-stage-13>;

define generic evaluate-surge-pressure-13 (sc :: <surge-chamber-stage-13>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-13 (sc :: <surge-chamber-stage-13>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-13;


define class <surge-chamber-stage-14> (<object>)
  slot expansion-ratio :: <float> = 1.7000000000000002;
end class <surge-chamber-stage-14>;

define generic evaluate-surge-pressure-14 (sc :: <surge-chamber-stage-14>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-14 (sc :: <surge-chamber-stage-14>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-14;


define class <surge-chamber-stage-15> (<object>)
  slot expansion-ratio :: <float> = 1.75;
end class <surge-chamber-stage-15>;

define generic evaluate-surge-pressure-15 (sc :: <surge-chamber-stage-15>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-15 (sc :: <surge-chamber-stage-15>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-15;


define class <surge-chamber-stage-16> (<object>)
  slot expansion-ratio :: <float> = 1.8;
end class <surge-chamber-stage-16>;

define generic evaluate-surge-pressure-16 (sc :: <surge-chamber-stage-16>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-16 (sc :: <surge-chamber-stage-16>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-16;


define class <surge-chamber-stage-17> (<object>)
  slot expansion-ratio :: <float> = 1.85;
end class <surge-chamber-stage-17>;

define generic evaluate-surge-pressure-17 (sc :: <surge-chamber-stage-17>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-17 (sc :: <surge-chamber-stage-17>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-17;


define class <surge-chamber-stage-18> (<object>)
  slot expansion-ratio :: <float> = 1.9;
end class <surge-chamber-stage-18>;

define generic evaluate-surge-pressure-18 (sc :: <surge-chamber-stage-18>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-18 (sc :: <surge-chamber-stage-18>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-18;


define class <surge-chamber-stage-19> (<object>)
  slot expansion-ratio :: <float> = 1.9500000000000002;
end class <surge-chamber-stage-19>;

define generic evaluate-surge-pressure-19 (sc :: <surge-chamber-stage-19>, sv :: <surge-vessel>) => (p :: <float>);
define method evaluate-surge-pressure-19 (sc :: <surge-chamber-stage-19>, sv :: <surge-vessel>) => (p :: <float>)
  gas-absolute-pressure-head(sv) * sc.expansion-ratio;
end method evaluate-surge-pressure-19;
