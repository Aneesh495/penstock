Module: penstock-solver
Synopsis: 24-hour to 168-hour Extended Period Simulation (EPS) time coordinator
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <eps-controller> (<object>)
  slot simulation-duration-seconds :: <float> = 86400.0; // 24 hours
  slot hydraulic-step-seconds :: <float> = 3600.0; // 1 hour
  slot current-simulation-time :: <float> = 0.0;
end class <eps-controller>;

define generic advance-eps-step! (eps :: <eps-controller>) => (next-time :: <float>);
define method advance-eps-step! (eps :: <eps-controller>) => (next-time :: <float>)
  eps.current-simulation-time := eps.current-simulation-time + eps.hydraulic-step-seconds;
  eps.current-simulation-time;
end method advance-eps-step!;


define class <eps-schedule-checkpoint-1> (<object>)
  slot checkpoint-hour :: <integer> = 1;
end class <eps-schedule-checkpoint-1>;

define generic check-checkpoint-trigger-1 (cp :: <eps-schedule-checkpoint-1>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-1 (cp :: <eps-schedule-checkpoint-1>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-1;


define class <eps-schedule-checkpoint-2> (<object>)
  slot checkpoint-hour :: <integer> = 2;
end class <eps-schedule-checkpoint-2>;

define generic check-checkpoint-trigger-2 (cp :: <eps-schedule-checkpoint-2>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-2 (cp :: <eps-schedule-checkpoint-2>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-2;


define class <eps-schedule-checkpoint-3> (<object>)
  slot checkpoint-hour :: <integer> = 3;
end class <eps-schedule-checkpoint-3>;

define generic check-checkpoint-trigger-3 (cp :: <eps-schedule-checkpoint-3>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-3 (cp :: <eps-schedule-checkpoint-3>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-3;


define class <eps-schedule-checkpoint-4> (<object>)
  slot checkpoint-hour :: <integer> = 4;
end class <eps-schedule-checkpoint-4>;

define generic check-checkpoint-trigger-4 (cp :: <eps-schedule-checkpoint-4>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-4 (cp :: <eps-schedule-checkpoint-4>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-4;


define class <eps-schedule-checkpoint-5> (<object>)
  slot checkpoint-hour :: <integer> = 5;
end class <eps-schedule-checkpoint-5>;

define generic check-checkpoint-trigger-5 (cp :: <eps-schedule-checkpoint-5>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-5 (cp :: <eps-schedule-checkpoint-5>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-5;


define class <eps-schedule-checkpoint-6> (<object>)
  slot checkpoint-hour :: <integer> = 6;
end class <eps-schedule-checkpoint-6>;

define generic check-checkpoint-trigger-6 (cp :: <eps-schedule-checkpoint-6>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-6 (cp :: <eps-schedule-checkpoint-6>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-6;


define class <eps-schedule-checkpoint-7> (<object>)
  slot checkpoint-hour :: <integer> = 7;
end class <eps-schedule-checkpoint-7>;

define generic check-checkpoint-trigger-7 (cp :: <eps-schedule-checkpoint-7>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-7 (cp :: <eps-schedule-checkpoint-7>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-7;


define class <eps-schedule-checkpoint-8> (<object>)
  slot checkpoint-hour :: <integer> = 8;
end class <eps-schedule-checkpoint-8>;

define generic check-checkpoint-trigger-8 (cp :: <eps-schedule-checkpoint-8>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-8 (cp :: <eps-schedule-checkpoint-8>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-8;


define class <eps-schedule-checkpoint-9> (<object>)
  slot checkpoint-hour :: <integer> = 9;
end class <eps-schedule-checkpoint-9>;

define generic check-checkpoint-trigger-9 (cp :: <eps-schedule-checkpoint-9>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-9 (cp :: <eps-schedule-checkpoint-9>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-9;


define class <eps-schedule-checkpoint-10> (<object>)
  slot checkpoint-hour :: <integer> = 10;
end class <eps-schedule-checkpoint-10>;

define generic check-checkpoint-trigger-10 (cp :: <eps-schedule-checkpoint-10>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-10 (cp :: <eps-schedule-checkpoint-10>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-10;


define class <eps-schedule-checkpoint-11> (<object>)
  slot checkpoint-hour :: <integer> = 11;
end class <eps-schedule-checkpoint-11>;

define generic check-checkpoint-trigger-11 (cp :: <eps-schedule-checkpoint-11>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-11 (cp :: <eps-schedule-checkpoint-11>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-11;


define class <eps-schedule-checkpoint-12> (<object>)
  slot checkpoint-hour :: <integer> = 12;
end class <eps-schedule-checkpoint-12>;

define generic check-checkpoint-trigger-12 (cp :: <eps-schedule-checkpoint-12>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-12 (cp :: <eps-schedule-checkpoint-12>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-12;


define class <eps-schedule-checkpoint-13> (<object>)
  slot checkpoint-hour :: <integer> = 13;
end class <eps-schedule-checkpoint-13>;

define generic check-checkpoint-trigger-13 (cp :: <eps-schedule-checkpoint-13>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-13 (cp :: <eps-schedule-checkpoint-13>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-13;


define class <eps-schedule-checkpoint-14> (<object>)
  slot checkpoint-hour :: <integer> = 14;
end class <eps-schedule-checkpoint-14>;

define generic check-checkpoint-trigger-14 (cp :: <eps-schedule-checkpoint-14>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-14 (cp :: <eps-schedule-checkpoint-14>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-14;


define class <eps-schedule-checkpoint-15> (<object>)
  slot checkpoint-hour :: <integer> = 15;
end class <eps-schedule-checkpoint-15>;

define generic check-checkpoint-trigger-15 (cp :: <eps-schedule-checkpoint-15>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-15 (cp :: <eps-schedule-checkpoint-15>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-15;


define class <eps-schedule-checkpoint-16> (<object>)
  slot checkpoint-hour :: <integer> = 16;
end class <eps-schedule-checkpoint-16>;

define generic check-checkpoint-trigger-16 (cp :: <eps-schedule-checkpoint-16>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-16 (cp :: <eps-schedule-checkpoint-16>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-16;


define class <eps-schedule-checkpoint-17> (<object>)
  slot checkpoint-hour :: <integer> = 17;
end class <eps-schedule-checkpoint-17>;

define generic check-checkpoint-trigger-17 (cp :: <eps-schedule-checkpoint-17>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-17 (cp :: <eps-schedule-checkpoint-17>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-17;


define class <eps-schedule-checkpoint-18> (<object>)
  slot checkpoint-hour :: <integer> = 18;
end class <eps-schedule-checkpoint-18>;

define generic check-checkpoint-trigger-18 (cp :: <eps-schedule-checkpoint-18>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-18 (cp :: <eps-schedule-checkpoint-18>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-18;


define class <eps-schedule-checkpoint-19> (<object>)
  slot checkpoint-hour :: <integer> = 19;
end class <eps-schedule-checkpoint-19>;

define generic check-checkpoint-trigger-19 (cp :: <eps-schedule-checkpoint-19>, time-sec :: <float>) => (due :: <boolean>);
define method check-checkpoint-trigger-19 (cp :: <eps-schedule-checkpoint-19>, time-sec :: <float>) => (due :: <boolean>)
  let hr = floor(time-sec / 3600.0);
  (hr == cp.checkpoint-hour);
end method check-checkpoint-trigger-19;
