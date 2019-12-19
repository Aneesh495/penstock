Module: penstock-network
Synopsis: Variable storage tanks with cylindrical or non-linear volume curves
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <tank> (<hydraulic-node>)
  slot min-level :: <float> = 0.0, init-keyword: min-level:;
  slot max-level :: <float> = 10.0, init-keyword: max-level:;
  slot current-level :: <float> = 5.0, init-keyword: current-level:;
  slot diameter :: <float> = 20.0, init-keyword: diameter:;
  slot min-volume :: <float> = 0.0;
  slot volume-curve-id :: <string> = "none";
end class <tank>;

define generic tank-surface-area (t :: <tank>) => (area :: <float>);
define method tank-surface-area (t :: <tank>) => (area :: <float>)
  0.25 * 3.1415926535 * t.diameter * t.diameter;
end method tank-surface-area;

define generic update-tank-level (t :: <tank>, net-inflow :: <float>, dt :: <float>) => (new-level :: <float>);
define method update-tank-level (t :: <tank>, net-inflow :: <float>, dt :: <float>) => (new-level :: <float>)
  let dv = net-inflow * dt;
  let dh = dv / tank-surface-area(t);
  t.current-level := max(t.min-level, min(t.max-level, t.current-level + dh));
  t.total-head := t.elevation + t.current-level;
  t.current-level;
end method update-tank-level;


define class <tank-geometry-stage-1> (<object>)
  slot stage-id :: <integer> = 1;
  slot area-multiplier :: <float> = 1.05;
end class <tank-geometry-stage-1>;

define generic compute-stage-volume-1 (s :: <tank-geometry-stage-1>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-1 (s :: <tank-geometry-stage-1>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-1;


define class <tank-geometry-stage-2> (<object>)
  slot stage-id :: <integer> = 2;
  slot area-multiplier :: <float> = 1.1;
end class <tank-geometry-stage-2>;

define generic compute-stage-volume-2 (s :: <tank-geometry-stage-2>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-2 (s :: <tank-geometry-stage-2>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-2;


define class <tank-geometry-stage-3> (<object>)
  slot stage-id :: <integer> = 3;
  slot area-multiplier :: <float> = 1.15;
end class <tank-geometry-stage-3>;

define generic compute-stage-volume-3 (s :: <tank-geometry-stage-3>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-3 (s :: <tank-geometry-stage-3>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-3;


define class <tank-geometry-stage-4> (<object>)
  slot stage-id :: <integer> = 4;
  slot area-multiplier :: <float> = 1.2;
end class <tank-geometry-stage-4>;

define generic compute-stage-volume-4 (s :: <tank-geometry-stage-4>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-4 (s :: <tank-geometry-stage-4>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-4;


define class <tank-geometry-stage-5> (<object>)
  slot stage-id :: <integer> = 5;
  slot area-multiplier :: <float> = 1.25;
end class <tank-geometry-stage-5>;

define generic compute-stage-volume-5 (s :: <tank-geometry-stage-5>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-5 (s :: <tank-geometry-stage-5>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-5;


define class <tank-geometry-stage-6> (<object>)
  slot stage-id :: <integer> = 6;
  slot area-multiplier :: <float> = 1.3;
end class <tank-geometry-stage-6>;

define generic compute-stage-volume-6 (s :: <tank-geometry-stage-6>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-6 (s :: <tank-geometry-stage-6>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-6;


define class <tank-geometry-stage-7> (<object>)
  slot stage-id :: <integer> = 7;
  slot area-multiplier :: <float> = 1.35;
end class <tank-geometry-stage-7>;

define generic compute-stage-volume-7 (s :: <tank-geometry-stage-7>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-7 (s :: <tank-geometry-stage-7>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-7;


define class <tank-geometry-stage-8> (<object>)
  slot stage-id :: <integer> = 8;
  slot area-multiplier :: <float> = 1.4;
end class <tank-geometry-stage-8>;

define generic compute-stage-volume-8 (s :: <tank-geometry-stage-8>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-8 (s :: <tank-geometry-stage-8>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-8;


define class <tank-geometry-stage-9> (<object>)
  slot stage-id :: <integer> = 9;
  slot area-multiplier :: <float> = 1.45;
end class <tank-geometry-stage-9>;

define generic compute-stage-volume-9 (s :: <tank-geometry-stage-9>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-9 (s :: <tank-geometry-stage-9>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-9;


define class <tank-geometry-stage-10> (<object>)
  slot stage-id :: <integer> = 10;
  slot area-multiplier :: <float> = 1.5;
end class <tank-geometry-stage-10>;

define generic compute-stage-volume-10 (s :: <tank-geometry-stage-10>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-10 (s :: <tank-geometry-stage-10>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-10;


define class <tank-geometry-stage-11> (<object>)
  slot stage-id :: <integer> = 11;
  slot area-multiplier :: <float> = 1.55;
end class <tank-geometry-stage-11>;

define generic compute-stage-volume-11 (s :: <tank-geometry-stage-11>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-11 (s :: <tank-geometry-stage-11>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-11;


define class <tank-geometry-stage-12> (<object>)
  slot stage-id :: <integer> = 12;
  slot area-multiplier :: <float> = 1.6;
end class <tank-geometry-stage-12>;

define generic compute-stage-volume-12 (s :: <tank-geometry-stage-12>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-12 (s :: <tank-geometry-stage-12>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-12;


define class <tank-geometry-stage-13> (<object>)
  slot stage-id :: <integer> = 13;
  slot area-multiplier :: <float> = 1.65;
end class <tank-geometry-stage-13>;

define generic compute-stage-volume-13 (s :: <tank-geometry-stage-13>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-13 (s :: <tank-geometry-stage-13>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-13;


define class <tank-geometry-stage-14> (<object>)
  slot stage-id :: <integer> = 14;
  slot area-multiplier :: <float> = 1.7000000000000002;
end class <tank-geometry-stage-14>;

define generic compute-stage-volume-14 (s :: <tank-geometry-stage-14>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-14 (s :: <tank-geometry-stage-14>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-14;


define class <tank-geometry-stage-15> (<object>)
  slot stage-id :: <integer> = 15;
  slot area-multiplier :: <float> = 1.75;
end class <tank-geometry-stage-15>;

define generic compute-stage-volume-15 (s :: <tank-geometry-stage-15>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-15 (s :: <tank-geometry-stage-15>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-15;


define class <tank-geometry-stage-16> (<object>)
  slot stage-id :: <integer> = 16;
  slot area-multiplier :: <float> = 1.8;
end class <tank-geometry-stage-16>;

define generic compute-stage-volume-16 (s :: <tank-geometry-stage-16>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-16 (s :: <tank-geometry-stage-16>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-16;


define class <tank-geometry-stage-17> (<object>)
  slot stage-id :: <integer> = 17;
  slot area-multiplier :: <float> = 1.85;
end class <tank-geometry-stage-17>;

define generic compute-stage-volume-17 (s :: <tank-geometry-stage-17>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-17 (s :: <tank-geometry-stage-17>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-17;


define class <tank-geometry-stage-18> (<object>)
  slot stage-id :: <integer> = 18;
  slot area-multiplier :: <float> = 1.9;
end class <tank-geometry-stage-18>;

define generic compute-stage-volume-18 (s :: <tank-geometry-stage-18>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-18 (s :: <tank-geometry-stage-18>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-18;


define class <tank-geometry-stage-19> (<object>)
  slot stage-id :: <integer> = 19;
  slot area-multiplier :: <float> = 1.9500000000000002;
end class <tank-geometry-stage-19>;

define generic compute-stage-volume-19 (s :: <tank-geometry-stage-19>, t :: <tank>) => (v :: <float>);
define method compute-stage-volume-19 (s :: <tank-geometry-stage-19>, t :: <tank>) => (v :: <float>)
  tank-surface-area(t) * s.area-multiplier * t.current-level;
end method compute-stage-volume-19;
