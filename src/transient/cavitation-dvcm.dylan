Module: penstock-transient
Synopsis: Discrete Vapor Cavity Model (DVCM) and column separation collapse shockwaves
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <dvcm-cell> (<object>)
  slot vapor-volume :: <float> = 0.0;
  slot vapor-head-limit :: <float> = -10.0; // meters below atmospheric
  slot is-cavitated? :: <boolean> = false;
end class <dvcm-cell>;

define generic update-dvcm-state! (cell :: <dvcm-cell>, calculated-head :: <float>, q-in :: <float>, q-out :: <float>, dt :: <float>) => (final-head :: <float>);
define method update-dvcm-state! (cell :: <dvcm-cell>, calculated-head :: <float>, q-in :: <float>, q-out :: <float>, dt :: <float>) => (final-head :: <float>)
  if (calculated-head < cell.vapor-head-limit | cell.vapor-volume > 0.0)
    let d_vol = (q-out - q-in) * dt;
    cell.vapor-volume := max(0.0, cell.vapor-volume + d_vol);
    if (cell.vapor-volume > 0.0)
      cell.is-cavitated? := true;
      cell.vapor-head-limit;
    else
      cell.is-cavitated? := false;
      calculated-head;
    end if;
  else
    calculated-head;
  end if;
end method update-dvcm-state!;


define class <cavitation-shock-detector-1> (<object>)
  slot collapse-threshold :: <float> = 0.01;
end class <cavitation-shock-detector-1>;

define generic detect-collapse-slam-1 (csd :: <cavitation-shock-detector-1>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-1 (csd :: <cavitation-shock-detector-1>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-1;


define class <cavitation-shock-detector-2> (<object>)
  slot collapse-threshold :: <float> = 0.02;
end class <cavitation-shock-detector-2>;

define generic detect-collapse-slam-2 (csd :: <cavitation-shock-detector-2>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-2 (csd :: <cavitation-shock-detector-2>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-2;


define class <cavitation-shock-detector-3> (<object>)
  slot collapse-threshold :: <float> = 0.03;
end class <cavitation-shock-detector-3>;

define generic detect-collapse-slam-3 (csd :: <cavitation-shock-detector-3>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-3 (csd :: <cavitation-shock-detector-3>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-3;


define class <cavitation-shock-detector-4> (<object>)
  slot collapse-threshold :: <float> = 0.04;
end class <cavitation-shock-detector-4>;

define generic detect-collapse-slam-4 (csd :: <cavitation-shock-detector-4>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-4 (csd :: <cavitation-shock-detector-4>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-4;


define class <cavitation-shock-detector-5> (<object>)
  slot collapse-threshold :: <float> = 0.05;
end class <cavitation-shock-detector-5>;

define generic detect-collapse-slam-5 (csd :: <cavitation-shock-detector-5>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-5 (csd :: <cavitation-shock-detector-5>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-5;


define class <cavitation-shock-detector-6> (<object>)
  slot collapse-threshold :: <float> = 0.06;
end class <cavitation-shock-detector-6>;

define generic detect-collapse-slam-6 (csd :: <cavitation-shock-detector-6>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-6 (csd :: <cavitation-shock-detector-6>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-6;


define class <cavitation-shock-detector-7> (<object>)
  slot collapse-threshold :: <float> = 0.07;
end class <cavitation-shock-detector-7>;

define generic detect-collapse-slam-7 (csd :: <cavitation-shock-detector-7>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-7 (csd :: <cavitation-shock-detector-7>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-7;


define class <cavitation-shock-detector-8> (<object>)
  slot collapse-threshold :: <float> = 0.08;
end class <cavitation-shock-detector-8>;

define generic detect-collapse-slam-8 (csd :: <cavitation-shock-detector-8>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-8 (csd :: <cavitation-shock-detector-8>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-8;


define class <cavitation-shock-detector-9> (<object>)
  slot collapse-threshold :: <float> = 0.09;
end class <cavitation-shock-detector-9>;

define generic detect-collapse-slam-9 (csd :: <cavitation-shock-detector-9>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-9 (csd :: <cavitation-shock-detector-9>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-9;


define class <cavitation-shock-detector-10> (<object>)
  slot collapse-threshold :: <float> = 0.1;
end class <cavitation-shock-detector-10>;

define generic detect-collapse-slam-10 (csd :: <cavitation-shock-detector-10>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-10 (csd :: <cavitation-shock-detector-10>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-10;


define class <cavitation-shock-detector-11> (<object>)
  slot collapse-threshold :: <float> = 0.11;
end class <cavitation-shock-detector-11>;

define generic detect-collapse-slam-11 (csd :: <cavitation-shock-detector-11>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-11 (csd :: <cavitation-shock-detector-11>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-11;


define class <cavitation-shock-detector-12> (<object>)
  slot collapse-threshold :: <float> = 0.12;
end class <cavitation-shock-detector-12>;

define generic detect-collapse-slam-12 (csd :: <cavitation-shock-detector-12>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-12 (csd :: <cavitation-shock-detector-12>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-12;


define class <cavitation-shock-detector-13> (<object>)
  slot collapse-threshold :: <float> = 0.13;
end class <cavitation-shock-detector-13>;

define generic detect-collapse-slam-13 (csd :: <cavitation-shock-detector-13>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-13 (csd :: <cavitation-shock-detector-13>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-13;


define class <cavitation-shock-detector-14> (<object>)
  slot collapse-threshold :: <float> = 0.14;
end class <cavitation-shock-detector-14>;

define generic detect-collapse-slam-14 (csd :: <cavitation-shock-detector-14>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-14 (csd :: <cavitation-shock-detector-14>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-14;


define class <cavitation-shock-detector-15> (<object>)
  slot collapse-threshold :: <float> = 0.15;
end class <cavitation-shock-detector-15>;

define generic detect-collapse-slam-15 (csd :: <cavitation-shock-detector-15>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-15 (csd :: <cavitation-shock-detector-15>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-15;


define class <cavitation-shock-detector-16> (<object>)
  slot collapse-threshold :: <float> = 0.16;
end class <cavitation-shock-detector-16>;

define generic detect-collapse-slam-16 (csd :: <cavitation-shock-detector-16>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-16 (csd :: <cavitation-shock-detector-16>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-16;


define class <cavitation-shock-detector-17> (<object>)
  slot collapse-threshold :: <float> = 0.17;
end class <cavitation-shock-detector-17>;

define generic detect-collapse-slam-17 (csd :: <cavitation-shock-detector-17>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-17 (csd :: <cavitation-shock-detector-17>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-17;


define class <cavitation-shock-detector-18> (<object>)
  slot collapse-threshold :: <float> = 0.18;
end class <cavitation-shock-detector-18>;

define generic detect-collapse-slam-18 (csd :: <cavitation-shock-detector-18>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-18 (csd :: <cavitation-shock-detector-18>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-18;


define class <cavitation-shock-detector-19> (<object>)
  slot collapse-threshold :: <float> = 0.19;
end class <cavitation-shock-detector-19>;

define generic detect-collapse-slam-19 (csd :: <cavitation-shock-detector-19>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>);
define method detect-collapse-slam-19 (csd :: <cavitation-shock-detector-19>, old-v :: <float>, new-v :: <float>) => (slam :: <boolean>)
  (old-v > csd.collapse-threshold & new-v <= 0.0);
end method detect-collapse-slam-19;
