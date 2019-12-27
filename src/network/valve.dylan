Module: penstock-network
Synopsis: Control valves: PRV, PSV, PBV, FCV, and throttle valves
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <control-valve> (<hydraulic-link>)
  slot valve-type :: <symbol> = #"prv", init-keyword: type:;
  slot setting :: <float> = 50.0, init-keyword: setting:;
  slot valve-status :: <symbol> = #"active";
  slot loss-coefficient :: <float> = 0.0;
end class <control-valve>;

define generic regulate-valve (v :: <control-valve>, upstream-h :: <float>, downstream-h :: <float>) => (status :: <symbol>);
define method regulate-valve (v :: <control-valve>, upstream-h :: <float>, downstream-h :: <float>) => (status :: <symbol>)
  if (v.valve-type == #"prv")
    if (upstream-h < v.setting)
      v.valve-status := #"open";
    elseif (downstream-h > v.setting)
      v.valve-status := #"closed";
    else
      v.valve-status := #"active";
    end if;
  end if;
  v.valve-status;
end method regulate-valve;


define class <valve-discharge-curve-1> (<object>)
  slot opening-fraction :: <float> = 0.05;
  slot discharge-coefficient :: <float> = 0.01118033988749895;
end class <valve-discharge-curve-1>;

define generic compute-valve-loss-1 (vd :: <valve-discharge-curve-1>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-1 (vd :: <valve-discharge-curve-1>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-1;


define class <valve-discharge-curve-2> (<object>)
  slot opening-fraction :: <float> = 0.1;
  slot discharge-coefficient :: <float> = 0.0316227766016838;
end class <valve-discharge-curve-2>;

define generic compute-valve-loss-2 (vd :: <valve-discharge-curve-2>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-2 (vd :: <valve-discharge-curve-2>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-2;


define class <valve-discharge-curve-3> (<object>)
  slot opening-fraction :: <float> = 0.15;
  slot discharge-coefficient :: <float> = 0.05809475019311125;
end class <valve-discharge-curve-3>;

define generic compute-valve-loss-3 (vd :: <valve-discharge-curve-3>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-3 (vd :: <valve-discharge-curve-3>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-3;


define class <valve-discharge-curve-4> (<object>)
  slot opening-fraction :: <float> = 0.2;
  slot discharge-coefficient :: <float> = 0.0894427190999916;
end class <valve-discharge-curve-4>;

define generic compute-valve-loss-4 (vd :: <valve-discharge-curve-4>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-4 (vd :: <valve-discharge-curve-4>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-4;


define class <valve-discharge-curve-5> (<object>)
  slot opening-fraction :: <float> = 0.25;
  slot discharge-coefficient :: <float> = 0.125;
end class <valve-discharge-curve-5>;

define generic compute-valve-loss-5 (vd :: <valve-discharge-curve-5>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-5 (vd :: <valve-discharge-curve-5>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-5;


define class <valve-discharge-curve-6> (<object>)
  slot opening-fraction :: <float> = 0.3;
  slot discharge-coefficient :: <float> = 0.1643167672515498;
end class <valve-discharge-curve-6>;

define generic compute-valve-loss-6 (vd :: <valve-discharge-curve-6>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-6 (vd :: <valve-discharge-curve-6>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-6;


define class <valve-discharge-curve-7> (<object>)
  slot opening-fraction :: <float> = 0.35;
  slot discharge-coefficient :: <float> = 0.20706279240848655;
end class <valve-discharge-curve-7>;

define generic compute-valve-loss-7 (vd :: <valve-discharge-curve-7>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-7 (vd :: <valve-discharge-curve-7>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-7;


define class <valve-discharge-curve-8> (<object>)
  slot opening-fraction :: <float> = 0.4;
  slot discharge-coefficient :: <float> = 0.2529822128134704;
end class <valve-discharge-curve-8>;

define generic compute-valve-loss-8 (vd :: <valve-discharge-curve-8>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-8 (vd :: <valve-discharge-curve-8>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-8;


define class <valve-discharge-curve-9> (<object>)
  slot opening-fraction :: <float> = 0.45;
  slot discharge-coefficient :: <float> = 0.3018691769624716;
end class <valve-discharge-curve-9>;

define generic compute-valve-loss-9 (vd :: <valve-discharge-curve-9>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-9 (vd :: <valve-discharge-curve-9>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-9;


define class <valve-discharge-curve-10> (<object>)
  slot opening-fraction :: <float> = 0.5;
  slot discharge-coefficient :: <float> = 0.3535533905932738;
end class <valve-discharge-curve-10>;

define generic compute-valve-loss-10 (vd :: <valve-discharge-curve-10>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-10 (vd :: <valve-discharge-curve-10>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-10;


define class <valve-discharge-curve-11> (<object>)
  slot opening-fraction :: <float> = 0.55;
  slot discharge-coefficient :: <float> = 0.4078909167902615;
end class <valve-discharge-curve-11>;

define generic compute-valve-loss-11 (vd :: <valve-discharge-curve-11>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-11 (vd :: <valve-discharge-curve-11>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-11;


define class <valve-discharge-curve-12> (<object>)
  slot opening-fraction :: <float> = 0.6;
  slot discharge-coefficient :: <float> = 0.46475800154489;
end class <valve-discharge-curve-12>;

define generic compute-valve-loss-12 (vd :: <valve-discharge-curve-12>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-12 (vd :: <valve-discharge-curve-12>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-12;


define class <valve-discharge-curve-13> (<object>)
  slot opening-fraction :: <float> = 0.65;
  slot discharge-coefficient :: <float> = 0.5240467536394058;
end class <valve-discharge-curve-13>;

define generic compute-valve-loss-13 (vd :: <valve-discharge-curve-13>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-13 (vd :: <valve-discharge-curve-13>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-13;


define class <valve-discharge-curve-14> (<object>)
  slot opening-fraction :: <float> = 0.7;
  slot discharge-coefficient :: <float> = 0.5856620185738528;
end class <valve-discharge-curve-14>;

define generic compute-valve-loss-14 (vd :: <valve-discharge-curve-14>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-14 (vd :: <valve-discharge-curve-14>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-14;


define class <valve-discharge-curve-15> (<object>)
  slot opening-fraction :: <float> = 0.75;
  slot discharge-coefficient :: <float> = 0.649519052838329;
end class <valve-discharge-curve-15>;

define generic compute-valve-loss-15 (vd :: <valve-discharge-curve-15>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-15 (vd :: <valve-discharge-curve-15>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-15;


define class <valve-discharge-curve-16> (<object>)
  slot opening-fraction :: <float> = 0.8;
  slot discharge-coefficient :: <float> = 0.7155417527999328;
end class <valve-discharge-curve-16>;

define generic compute-valve-loss-16 (vd :: <valve-discharge-curve-16>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-16 (vd :: <valve-discharge-curve-16>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-16;


define class <valve-discharge-curve-17> (<object>)
  slot opening-fraction :: <float> = 0.85;
  slot discharge-coefficient :: <float> = 0.7836612788698953;
end class <valve-discharge-curve-17>;

define generic compute-valve-loss-17 (vd :: <valve-discharge-curve-17>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-17 (vd :: <valve-discharge-curve-17>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-17;


define class <valve-discharge-curve-18> (<object>)
  slot opening-fraction :: <float> = 0.9;
  slot discharge-coefficient :: <float> = 0.8538149682454624;
end class <valve-discharge-curve-18>;

define generic compute-valve-loss-18 (vd :: <valve-discharge-curve-18>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-18 (vd :: <valve-discharge-curve-18>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-18;


define class <valve-discharge-curve-19> (<object>)
  slot opening-fraction :: <float> = 0.95;
  slot discharge-coefficient :: <float> = 0.9259454627568515;
end class <valve-discharge-curve-19>;

define generic compute-valve-loss-19 (vd :: <valve-discharge-curve-19>, v :: <control-valve>, q :: <float>) => (hl :: <float>);
define method compute-valve-loss-19 (vd :: <valve-discharge-curve-19>, v :: <control-valve>, q :: <float>) => (hl :: <float>)
  let cd = max(0.001, vd.discharge-coefficient);
  (q * q) / (2.0 * 9.80665 * cd * cd);
end method compute-valve-loss-19;
