Module: penstock-network
Synopsis: Consumer junctions with time patterns, base demands, and emitters
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <junction> (<hydraulic-node>)
  slot base-demand :: <float> = 0.0, init-keyword: base-demand:;
  slot current-demand :: <float> = 0.0;
  slot demand-pattern-id :: <string> = "default", init-keyword: pattern:;
  slot emitter-coefficient :: <float> = 0.0, init-keyword: emitter:;
  slot emitter-exponent :: <float> = 0.5;
end class <junction>;

define generic compute-emitter-flow (j :: <junction>) => (q-emit :: <float>);
define method compute-emitter-flow (j :: <junction>) => (q-emit :: <float>)
  let p = pressure-head(j);
  if (p > 0.0 & j.emitter-coefficient > 0.0)
    j.emitter-coefficient * (p ^ j.emitter-exponent);
  else
    0.0;
  end if;
end method compute-emitter-flow;


define class <demand-modulator-1> (<object>)
  slot step-index :: <integer> = 1;
  slot factor :: <float> = 0.8500000000000001;
end class <demand-modulator-1>;

define generic modulate-demand-1 (m :: <demand-modulator-1>, j :: <junction>) => (q :: <float>);
define method modulate-demand-1 (m :: <demand-modulator-1>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-1;


define class <demand-modulator-2> (<object>)
  slot step-index :: <integer> = 2;
  slot factor :: <float> = 0.9;
end class <demand-modulator-2>;

define generic modulate-demand-2 (m :: <demand-modulator-2>, j :: <junction>) => (q :: <float>);
define method modulate-demand-2 (m :: <demand-modulator-2>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-2;


define class <demand-modulator-3> (<object>)
  slot step-index :: <integer> = 3;
  slot factor :: <float> = 0.9500000000000001;
end class <demand-modulator-3>;

define generic modulate-demand-3 (m :: <demand-modulator-3>, j :: <junction>) => (q :: <float>);
define method modulate-demand-3 (m :: <demand-modulator-3>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-3;


define class <demand-modulator-4> (<object>)
  slot step-index :: <integer> = 4;
  slot factor :: <float> = 1.0;
end class <demand-modulator-4>;

define generic modulate-demand-4 (m :: <demand-modulator-4>, j :: <junction>) => (q :: <float>);
define method modulate-demand-4 (m :: <demand-modulator-4>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-4;


define class <demand-modulator-5> (<object>)
  slot step-index :: <integer> = 5;
  slot factor :: <float> = 1.05;
end class <demand-modulator-5>;

define generic modulate-demand-5 (m :: <demand-modulator-5>, j :: <junction>) => (q :: <float>);
define method modulate-demand-5 (m :: <demand-modulator-5>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-5;


define class <demand-modulator-6> (<object>)
  slot step-index :: <integer> = 6;
  slot factor :: <float> = 1.1;
end class <demand-modulator-6>;

define generic modulate-demand-6 (m :: <demand-modulator-6>, j :: <junction>) => (q :: <float>);
define method modulate-demand-6 (m :: <demand-modulator-6>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-6;


define class <demand-modulator-7> (<object>)
  slot step-index :: <integer> = 7;
  slot factor :: <float> = 1.1500000000000001;
end class <demand-modulator-7>;

define generic modulate-demand-7 (m :: <demand-modulator-7>, j :: <junction>) => (q :: <float>);
define method modulate-demand-7 (m :: <demand-modulator-7>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-7;


define class <demand-modulator-8> (<object>)
  slot step-index :: <integer> = 8;
  slot factor :: <float> = 0.8;
end class <demand-modulator-8>;

define generic modulate-demand-8 (m :: <demand-modulator-8>, j :: <junction>) => (q :: <float>);
define method modulate-demand-8 (m :: <demand-modulator-8>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-8;


define class <demand-modulator-9> (<object>)
  slot step-index :: <integer> = 9;
  slot factor :: <float> = 0.8500000000000001;
end class <demand-modulator-9>;

define generic modulate-demand-9 (m :: <demand-modulator-9>, j :: <junction>) => (q :: <float>);
define method modulate-demand-9 (m :: <demand-modulator-9>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-9;


define class <demand-modulator-10> (<object>)
  slot step-index :: <integer> = 10;
  slot factor :: <float> = 0.9;
end class <demand-modulator-10>;

define generic modulate-demand-10 (m :: <demand-modulator-10>, j :: <junction>) => (q :: <float>);
define method modulate-demand-10 (m :: <demand-modulator-10>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-10;


define class <demand-modulator-11> (<object>)
  slot step-index :: <integer> = 11;
  slot factor :: <float> = 0.9500000000000001;
end class <demand-modulator-11>;

define generic modulate-demand-11 (m :: <demand-modulator-11>, j :: <junction>) => (q :: <float>);
define method modulate-demand-11 (m :: <demand-modulator-11>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-11;


define class <demand-modulator-12> (<object>)
  slot step-index :: <integer> = 12;
  slot factor :: <float> = 1.0;
end class <demand-modulator-12>;

define generic modulate-demand-12 (m :: <demand-modulator-12>, j :: <junction>) => (q :: <float>);
define method modulate-demand-12 (m :: <demand-modulator-12>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-12;


define class <demand-modulator-13> (<object>)
  slot step-index :: <integer> = 13;
  slot factor :: <float> = 1.05;
end class <demand-modulator-13>;

define generic modulate-demand-13 (m :: <demand-modulator-13>, j :: <junction>) => (q :: <float>);
define method modulate-demand-13 (m :: <demand-modulator-13>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-13;


define class <demand-modulator-14> (<object>)
  slot step-index :: <integer> = 14;
  slot factor :: <float> = 1.1;
end class <demand-modulator-14>;

define generic modulate-demand-14 (m :: <demand-modulator-14>, j :: <junction>) => (q :: <float>);
define method modulate-demand-14 (m :: <demand-modulator-14>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-14;


define class <demand-modulator-15> (<object>)
  slot step-index :: <integer> = 15;
  slot factor :: <float> = 1.1500000000000001;
end class <demand-modulator-15>;

define generic modulate-demand-15 (m :: <demand-modulator-15>, j :: <junction>) => (q :: <float>);
define method modulate-demand-15 (m :: <demand-modulator-15>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-15;


define class <demand-modulator-16> (<object>)
  slot step-index :: <integer> = 16;
  slot factor :: <float> = 0.8;
end class <demand-modulator-16>;

define generic modulate-demand-16 (m :: <demand-modulator-16>, j :: <junction>) => (q :: <float>);
define method modulate-demand-16 (m :: <demand-modulator-16>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-16;


define class <demand-modulator-17> (<object>)
  slot step-index :: <integer> = 17;
  slot factor :: <float> = 0.8500000000000001;
end class <demand-modulator-17>;

define generic modulate-demand-17 (m :: <demand-modulator-17>, j :: <junction>) => (q :: <float>);
define method modulate-demand-17 (m :: <demand-modulator-17>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-17;


define class <demand-modulator-18> (<object>)
  slot step-index :: <integer> = 18;
  slot factor :: <float> = 0.9;
end class <demand-modulator-18>;

define generic modulate-demand-18 (m :: <demand-modulator-18>, j :: <junction>) => (q :: <float>);
define method modulate-demand-18 (m :: <demand-modulator-18>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-18;


define class <demand-modulator-19> (<object>)
  slot step-index :: <integer> = 19;
  slot factor :: <float> = 0.9500000000000001;
end class <demand-modulator-19>;

define generic modulate-demand-19 (m :: <demand-modulator-19>, j :: <junction>) => (q :: <float>);
define method modulate-demand-19 (m :: <demand-modulator-19>, j :: <junction>) => (q :: <float>)
  j.base-demand * m.factor;
end method modulate-demand-19;
