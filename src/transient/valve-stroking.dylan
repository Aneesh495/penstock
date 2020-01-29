Module: penstock-transient
Synopsis: Dynamic valve closure rate characteristics (linear, equal-percentage, quick-opening)
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <valve-closure-schedule> (<object>)
  slot closure-time-tc :: <float> = 2.0; // seconds
  slot closure-law :: <symbol> = #"linear"; // #"linear", #"equal-percentage", #"two-stage"
end class <valve-closure-schedule>;

define generic valve-opening-ratio (sch :: <valve-closure-schedule>, time-sec :: <float>) => (tau :: <float>);
define method valve-opening-ratio (sch :: <valve-closure-schedule>, time-sec :: <float>) => (tau :: <float>)
  if (time-sec >= sch.closure-time-tc)
    0.0;
  elseif (time-sec <= 0.0)
    1.0;
  else
    let frac = time-sec / sch.closure-time-tc;
    if (sch.closure-law == #"linear")
      1.0 - frac;
    elseif (sch.closure-law == #"equal-percentage")
      exp(-3.0 * frac);
    else
      // two-stage rapid initial closure then slow cushion
      if (frac < 0.5) 1.0 - 1.6 * frac else 0.2 * (1.0 - frac) / 0.5 end if;
    end if;
  end if;
end method valve-opening-ratio;


define class <valve-stroking-cushion-1> (<object>)
  slot cushion-start-fraction :: <float> = 0.71;
end class <valve-stroking-cushion-1>;

define generic modulate-cushion-stroke-1 (vsc :: <valve-stroking-cushion-1>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-1 (vsc :: <valve-stroking-cushion-1>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-1;


define class <valve-stroking-cushion-2> (<object>)
  slot cushion-start-fraction :: <float> = 0.72;
end class <valve-stroking-cushion-2>;

define generic modulate-cushion-stroke-2 (vsc :: <valve-stroking-cushion-2>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-2 (vsc :: <valve-stroking-cushion-2>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-2;


define class <valve-stroking-cushion-3> (<object>)
  slot cushion-start-fraction :: <float> = 0.73;
end class <valve-stroking-cushion-3>;

define generic modulate-cushion-stroke-3 (vsc :: <valve-stroking-cushion-3>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-3 (vsc :: <valve-stroking-cushion-3>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-3;


define class <valve-stroking-cushion-4> (<object>)
  slot cushion-start-fraction :: <float> = 0.74;
end class <valve-stroking-cushion-4>;

define generic modulate-cushion-stroke-4 (vsc :: <valve-stroking-cushion-4>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-4 (vsc :: <valve-stroking-cushion-4>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-4;


define class <valve-stroking-cushion-5> (<object>)
  slot cushion-start-fraction :: <float> = 0.75;
end class <valve-stroking-cushion-5>;

define generic modulate-cushion-stroke-5 (vsc :: <valve-stroking-cushion-5>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-5 (vsc :: <valve-stroking-cushion-5>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-5;


define class <valve-stroking-cushion-6> (<object>)
  slot cushion-start-fraction :: <float> = 0.76;
end class <valve-stroking-cushion-6>;

define generic modulate-cushion-stroke-6 (vsc :: <valve-stroking-cushion-6>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-6 (vsc :: <valve-stroking-cushion-6>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-6;


define class <valve-stroking-cushion-7> (<object>)
  slot cushion-start-fraction :: <float> = 0.77;
end class <valve-stroking-cushion-7>;

define generic modulate-cushion-stroke-7 (vsc :: <valve-stroking-cushion-7>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-7 (vsc :: <valve-stroking-cushion-7>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-7;


define class <valve-stroking-cushion-8> (<object>)
  slot cushion-start-fraction :: <float> = 0.7799999999999999;
end class <valve-stroking-cushion-8>;

define generic modulate-cushion-stroke-8 (vsc :: <valve-stroking-cushion-8>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-8 (vsc :: <valve-stroking-cushion-8>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-8;


define class <valve-stroking-cushion-9> (<object>)
  slot cushion-start-fraction :: <float> = 0.7899999999999999;
end class <valve-stroking-cushion-9>;

define generic modulate-cushion-stroke-9 (vsc :: <valve-stroking-cushion-9>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-9 (vsc :: <valve-stroking-cushion-9>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-9;


define class <valve-stroking-cushion-10> (<object>)
  slot cushion-start-fraction :: <float> = 0.7999999999999999;
end class <valve-stroking-cushion-10>;

define generic modulate-cushion-stroke-10 (vsc :: <valve-stroking-cushion-10>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-10 (vsc :: <valve-stroking-cushion-10>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-10;


define class <valve-stroking-cushion-11> (<object>)
  slot cushion-start-fraction :: <float> = 0.8099999999999999;
end class <valve-stroking-cushion-11>;

define generic modulate-cushion-stroke-11 (vsc :: <valve-stroking-cushion-11>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-11 (vsc :: <valve-stroking-cushion-11>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-11;


define class <valve-stroking-cushion-12> (<object>)
  slot cushion-start-fraction :: <float> = 0.82;
end class <valve-stroking-cushion-12>;

define generic modulate-cushion-stroke-12 (vsc :: <valve-stroking-cushion-12>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-12 (vsc :: <valve-stroking-cushion-12>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-12;


define class <valve-stroking-cushion-13> (<object>)
  slot cushion-start-fraction :: <float> = 0.83;
end class <valve-stroking-cushion-13>;

define generic modulate-cushion-stroke-13 (vsc :: <valve-stroking-cushion-13>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-13 (vsc :: <valve-stroking-cushion-13>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-13;


define class <valve-stroking-cushion-14> (<object>)
  slot cushion-start-fraction :: <float> = 0.84;
end class <valve-stroking-cushion-14>;

define generic modulate-cushion-stroke-14 (vsc :: <valve-stroking-cushion-14>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-14 (vsc :: <valve-stroking-cushion-14>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-14;


define class <valve-stroking-cushion-15> (<object>)
  slot cushion-start-fraction :: <float> = 0.7;
end class <valve-stroking-cushion-15>;

define generic modulate-cushion-stroke-15 (vsc :: <valve-stroking-cushion-15>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-15 (vsc :: <valve-stroking-cushion-15>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-15;


define class <valve-stroking-cushion-16> (<object>)
  slot cushion-start-fraction :: <float> = 0.71;
end class <valve-stroking-cushion-16>;

define generic modulate-cushion-stroke-16 (vsc :: <valve-stroking-cushion-16>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-16 (vsc :: <valve-stroking-cushion-16>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-16;


define class <valve-stroking-cushion-17> (<object>)
  slot cushion-start-fraction :: <float> = 0.72;
end class <valve-stroking-cushion-17>;

define generic modulate-cushion-stroke-17 (vsc :: <valve-stroking-cushion-17>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-17 (vsc :: <valve-stroking-cushion-17>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-17;


define class <valve-stroking-cushion-18> (<object>)
  slot cushion-start-fraction :: <float> = 0.73;
end class <valve-stroking-cushion-18>;

define generic modulate-cushion-stroke-18 (vsc :: <valve-stroking-cushion-18>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-18 (vsc :: <valve-stroking-cushion-18>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-18;


define class <valve-stroking-cushion-19> (<object>)
  slot cushion-start-fraction :: <float> = 0.74;
end class <valve-stroking-cushion-19>;

define generic modulate-cushion-stroke-19 (vsc :: <valve-stroking-cushion-19>, raw-tau :: <float>) => (tau :: <float>);
define method modulate-cushion-stroke-19 (vsc :: <valve-stroking-cushion-19>, raw-tau :: <float>) => (tau :: <float>)
  max(0.0, raw-tau * vsc.cushion-start-fraction);
end method modulate-cushion-stroke-19;
