Module: penstock-transient
Synopsis: Centrifugal pump power failure, rotational deceleration, and torque balance
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <pump-trip-dynamics> (<object>)
  slot rated-rotational-speed-rpm :: <float> = 1750.0;
  slot moment-of-inertia-kgm2 :: <float> = 15.0;
  slot trip-time-seconds :: <float> = 1.0;
  slot current-relative-speed :: <float> = 1.0;
end class <pump-trip-dynamics>;

define generic step-pump-inertia (ptd :: <pump-trip-dynamics>, torque-ratio :: <float>, dt :: <float>) => (new-speed :: <float>);
define method step-pump-inertia (ptd :: <pump-trip-dynamics>, torque-ratio :: <float>, dt :: <float>) => (new-speed :: <float>)
  let omega0 = ptd.current-relative-speed;
  let d_alpha = -(torque-ratio * dt) / (ptd.moment-of-inertia-kgm2 * 0.1);
  ptd.current-relative-speed := max(0.0, omega0 + d_alpha);
  ptd.current-relative-speed;
end method step-pump-inertia;


define class <pump-rundown-stage-1> (<object>)
  slot rundown-checkpoint :: <float> = 0.05;
end class <pump-rundown-stage-1>;

define generic check-rundown-fraction-1 (prs :: <pump-rundown-stage-1>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-1 (prs :: <pump-rundown-stage-1>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-1;


define class <pump-rundown-stage-2> (<object>)
  slot rundown-checkpoint :: <float> = 0.1;
end class <pump-rundown-stage-2>;

define generic check-rundown-fraction-2 (prs :: <pump-rundown-stage-2>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-2 (prs :: <pump-rundown-stage-2>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-2;


define class <pump-rundown-stage-3> (<object>)
  slot rundown-checkpoint :: <float> = 0.15000000000000002;
end class <pump-rundown-stage-3>;

define generic check-rundown-fraction-3 (prs :: <pump-rundown-stage-3>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-3 (prs :: <pump-rundown-stage-3>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-3;


define class <pump-rundown-stage-4> (<object>)
  slot rundown-checkpoint :: <float> = 0.2;
end class <pump-rundown-stage-4>;

define generic check-rundown-fraction-4 (prs :: <pump-rundown-stage-4>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-4 (prs :: <pump-rundown-stage-4>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-4;


define class <pump-rundown-stage-5> (<object>)
  slot rundown-checkpoint :: <float> = 0.25;
end class <pump-rundown-stage-5>;

define generic check-rundown-fraction-5 (prs :: <pump-rundown-stage-5>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-5 (prs :: <pump-rundown-stage-5>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-5;


define class <pump-rundown-stage-6> (<object>)
  slot rundown-checkpoint :: <float> = 0.30000000000000004;
end class <pump-rundown-stage-6>;

define generic check-rundown-fraction-6 (prs :: <pump-rundown-stage-6>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-6 (prs :: <pump-rundown-stage-6>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-6;


define class <pump-rundown-stage-7> (<object>)
  slot rundown-checkpoint :: <float> = 0.35000000000000003;
end class <pump-rundown-stage-7>;

define generic check-rundown-fraction-7 (prs :: <pump-rundown-stage-7>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-7 (prs :: <pump-rundown-stage-7>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-7;


define class <pump-rundown-stage-8> (<object>)
  slot rundown-checkpoint :: <float> = 0.4;
end class <pump-rundown-stage-8>;

define generic check-rundown-fraction-8 (prs :: <pump-rundown-stage-8>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-8 (prs :: <pump-rundown-stage-8>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-8;


define class <pump-rundown-stage-9> (<object>)
  slot rundown-checkpoint :: <float> = 0.45;
end class <pump-rundown-stage-9>;

define generic check-rundown-fraction-9 (prs :: <pump-rundown-stage-9>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-9 (prs :: <pump-rundown-stage-9>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-9;


define class <pump-rundown-stage-10> (<object>)
  slot rundown-checkpoint :: <float> = 0.5;
end class <pump-rundown-stage-10>;

define generic check-rundown-fraction-10 (prs :: <pump-rundown-stage-10>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-10 (prs :: <pump-rundown-stage-10>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-10;


define class <pump-rundown-stage-11> (<object>)
  slot rundown-checkpoint :: <float> = 0.55;
end class <pump-rundown-stage-11>;

define generic check-rundown-fraction-11 (prs :: <pump-rundown-stage-11>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-11 (prs :: <pump-rundown-stage-11>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-11;


define class <pump-rundown-stage-12> (<object>)
  slot rundown-checkpoint :: <float> = 0.6000000000000001;
end class <pump-rundown-stage-12>;

define generic check-rundown-fraction-12 (prs :: <pump-rundown-stage-12>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-12 (prs :: <pump-rundown-stage-12>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-12;


define class <pump-rundown-stage-13> (<object>)
  slot rundown-checkpoint :: <float> = 0.65;
end class <pump-rundown-stage-13>;

define generic check-rundown-fraction-13 (prs :: <pump-rundown-stage-13>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-13 (prs :: <pump-rundown-stage-13>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-13;


define class <pump-rundown-stage-14> (<object>)
  slot rundown-checkpoint :: <float> = 0.7000000000000001;
end class <pump-rundown-stage-14>;

define generic check-rundown-fraction-14 (prs :: <pump-rundown-stage-14>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-14 (prs :: <pump-rundown-stage-14>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-14;


define class <pump-rundown-stage-15> (<object>)
  slot rundown-checkpoint :: <float> = 0.75;
end class <pump-rundown-stage-15>;

define generic check-rundown-fraction-15 (prs :: <pump-rundown-stage-15>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-15 (prs :: <pump-rundown-stage-15>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-15;


define class <pump-rundown-stage-16> (<object>)
  slot rundown-checkpoint :: <float> = 0.8;
end class <pump-rundown-stage-16>;

define generic check-rundown-fraction-16 (prs :: <pump-rundown-stage-16>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-16 (prs :: <pump-rundown-stage-16>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-16;


define class <pump-rundown-stage-17> (<object>)
  slot rundown-checkpoint :: <float> = 0.8500000000000001;
end class <pump-rundown-stage-17>;

define generic check-rundown-fraction-17 (prs :: <pump-rundown-stage-17>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-17 (prs :: <pump-rundown-stage-17>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-17;


define class <pump-rundown-stage-18> (<object>)
  slot rundown-checkpoint :: <float> = 0.9;
end class <pump-rundown-stage-18>;

define generic check-rundown-fraction-18 (prs :: <pump-rundown-stage-18>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-18 (prs :: <pump-rundown-stage-18>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-18;


define class <pump-rundown-stage-19> (<object>)
  slot rundown-checkpoint :: <float> = 0.9500000000000001;
end class <pump-rundown-stage-19>;

define generic check-rundown-fraction-19 (prs :: <pump-rundown-stage-19>, alpha :: <float>) => (reached :: <boolean>);
define method check-rundown-fraction-19 (prs :: <pump-rundown-stage-19>, alpha :: <float>) => (reached :: <boolean>)
  alpha <= prs.rundown-checkpoint;
end method check-rundown-fraction-19;
