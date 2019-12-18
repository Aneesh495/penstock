Module: penstock-network
Synopsis: Infinite source reservoirs with fixed hydraulic grade line
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <reservoir> (<hydraulic-node>)
  slot head-pattern-id :: <string> = "none", init-keyword: pattern:;
end class <reservoir>;

define generic is-source-node? (r :: <hydraulic-node>) => (b :: <boolean>);
define method is-source-node? (r :: <hydraulic-node>) => (b :: <boolean>)
  false;
end method is-source-node?;

define method is-source-node? (r :: <reservoir>) => (b :: <boolean>)
  true;
end method is-source-node?;


define class <reservoir-tide-pattern-1> (<object>)
  slot tidal-cycle-id :: <integer> = 1;
  slot amplitude :: <float> = 0.5;
end class <reservoir-tide-pattern-1>;

define generic compute-tide-head-1 (t :: <reservoir-tide-pattern-1>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-1 (t :: <reservoir-tide-pattern-1>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-1;


define class <reservoir-tide-pattern-2> (<object>)
  slot tidal-cycle-id :: <integer> = 2;
  slot amplitude :: <float> = 1.0;
end class <reservoir-tide-pattern-2>;

define generic compute-tide-head-2 (t :: <reservoir-tide-pattern-2>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-2 (t :: <reservoir-tide-pattern-2>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-2;


define class <reservoir-tide-pattern-3> (<object>)
  slot tidal-cycle-id :: <integer> = 3;
  slot amplitude :: <float> = 1.5;
end class <reservoir-tide-pattern-3>;

define generic compute-tide-head-3 (t :: <reservoir-tide-pattern-3>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-3 (t :: <reservoir-tide-pattern-3>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-3;


define class <reservoir-tide-pattern-4> (<object>)
  slot tidal-cycle-id :: <integer> = 4;
  slot amplitude :: <float> = 0.0;
end class <reservoir-tide-pattern-4>;

define generic compute-tide-head-4 (t :: <reservoir-tide-pattern-4>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-4 (t :: <reservoir-tide-pattern-4>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-4;


define class <reservoir-tide-pattern-5> (<object>)
  slot tidal-cycle-id :: <integer> = 5;
  slot amplitude :: <float> = 0.5;
end class <reservoir-tide-pattern-5>;

define generic compute-tide-head-5 (t :: <reservoir-tide-pattern-5>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-5 (t :: <reservoir-tide-pattern-5>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-5;


define class <reservoir-tide-pattern-6> (<object>)
  slot tidal-cycle-id :: <integer> = 6;
  slot amplitude :: <float> = 1.0;
end class <reservoir-tide-pattern-6>;

define generic compute-tide-head-6 (t :: <reservoir-tide-pattern-6>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-6 (t :: <reservoir-tide-pattern-6>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-6;


define class <reservoir-tide-pattern-7> (<object>)
  slot tidal-cycle-id :: <integer> = 7;
  slot amplitude :: <float> = 1.5;
end class <reservoir-tide-pattern-7>;

define generic compute-tide-head-7 (t :: <reservoir-tide-pattern-7>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-7 (t :: <reservoir-tide-pattern-7>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-7;


define class <reservoir-tide-pattern-8> (<object>)
  slot tidal-cycle-id :: <integer> = 8;
  slot amplitude :: <float> = 0.0;
end class <reservoir-tide-pattern-8>;

define generic compute-tide-head-8 (t :: <reservoir-tide-pattern-8>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-8 (t :: <reservoir-tide-pattern-8>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-8;


define class <reservoir-tide-pattern-9> (<object>)
  slot tidal-cycle-id :: <integer> = 9;
  slot amplitude :: <float> = 0.5;
end class <reservoir-tide-pattern-9>;

define generic compute-tide-head-9 (t :: <reservoir-tide-pattern-9>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-9 (t :: <reservoir-tide-pattern-9>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-9;


define class <reservoir-tide-pattern-10> (<object>)
  slot tidal-cycle-id :: <integer> = 10;
  slot amplitude :: <float> = 1.0;
end class <reservoir-tide-pattern-10>;

define generic compute-tide-head-10 (t :: <reservoir-tide-pattern-10>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-10 (t :: <reservoir-tide-pattern-10>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-10;


define class <reservoir-tide-pattern-11> (<object>)
  slot tidal-cycle-id :: <integer> = 11;
  slot amplitude :: <float> = 1.5;
end class <reservoir-tide-pattern-11>;

define generic compute-tide-head-11 (t :: <reservoir-tide-pattern-11>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-11 (t :: <reservoir-tide-pattern-11>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-11;


define class <reservoir-tide-pattern-12> (<object>)
  slot tidal-cycle-id :: <integer> = 12;
  slot amplitude :: <float> = 0.0;
end class <reservoir-tide-pattern-12>;

define generic compute-tide-head-12 (t :: <reservoir-tide-pattern-12>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-12 (t :: <reservoir-tide-pattern-12>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-12;


define class <reservoir-tide-pattern-13> (<object>)
  slot tidal-cycle-id :: <integer> = 13;
  slot amplitude :: <float> = 0.5;
end class <reservoir-tide-pattern-13>;

define generic compute-tide-head-13 (t :: <reservoir-tide-pattern-13>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-13 (t :: <reservoir-tide-pattern-13>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-13;


define class <reservoir-tide-pattern-14> (<object>)
  slot tidal-cycle-id :: <integer> = 14;
  slot amplitude :: <float> = 1.0;
end class <reservoir-tide-pattern-14>;

define generic compute-tide-head-14 (t :: <reservoir-tide-pattern-14>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-14 (t :: <reservoir-tide-pattern-14>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-14;


define class <reservoir-tide-pattern-15> (<object>)
  slot tidal-cycle-id :: <integer> = 15;
  slot amplitude :: <float> = 1.5;
end class <reservoir-tide-pattern-15>;

define generic compute-tide-head-15 (t :: <reservoir-tide-pattern-15>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-15 (t :: <reservoir-tide-pattern-15>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-15;


define class <reservoir-tide-pattern-16> (<object>)
  slot tidal-cycle-id :: <integer> = 16;
  slot amplitude :: <float> = 0.0;
end class <reservoir-tide-pattern-16>;

define generic compute-tide-head-16 (t :: <reservoir-tide-pattern-16>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-16 (t :: <reservoir-tide-pattern-16>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-16;


define class <reservoir-tide-pattern-17> (<object>)
  slot tidal-cycle-id :: <integer> = 17;
  slot amplitude :: <float> = 0.5;
end class <reservoir-tide-pattern-17>;

define generic compute-tide-head-17 (t :: <reservoir-tide-pattern-17>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-17 (t :: <reservoir-tide-pattern-17>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-17;


define class <reservoir-tide-pattern-18> (<object>)
  slot tidal-cycle-id :: <integer> = 18;
  slot amplitude :: <float> = 1.0;
end class <reservoir-tide-pattern-18>;

define generic compute-tide-head-18 (t :: <reservoir-tide-pattern-18>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-18 (t :: <reservoir-tide-pattern-18>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-18;


define class <reservoir-tide-pattern-19> (<object>)
  slot tidal-cycle-id :: <integer> = 19;
  slot amplitude :: <float> = 1.5;
end class <reservoir-tide-pattern-19>;

define generic compute-tide-head-19 (t :: <reservoir-tide-pattern-19>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>);
define method compute-tide-head-19 (t :: <reservoir-tide-pattern-19>, r :: <reservoir>, time-sec :: <float>) => (h :: <float>)
  r.total-head + t.amplitude * sin(time-sec * 0.001);
end method compute-tide-head-19;
