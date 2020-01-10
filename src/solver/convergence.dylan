Module: penstock-solver
Synopsis: Convergence criteria, flow residual norms, and damping monitors
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <convergence-monitor> (<object>)
  slot flow-norm-l2 :: <float> = 0.0;
  slot head-norm-linf :: <float> = 0.0;
  slot oscillation-counter :: <integer> = 0;
end class <convergence-monitor>;

define generic check-convergence (cm :: <convergence-monitor>, tol-f :: <float>, tol-h :: <float>) => (ok? :: <boolean>);
define method check-convergence (cm :: <convergence-monitor>, tol-f :: <float>, tol-h :: <float>) => (ok? :: <boolean>)
  (cm.flow-norm-l2 < tol-f & cm.head-norm-linf < tol-h);
end method check-convergence;


define class <residual-filter-stage-1> (<object>)
  slot filter-threshold :: <float> = 0.001;
end class <residual-filter-stage-1>;

define generic filter-residual-value-1 (filt :: <residual-filter-stage-1>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-1 (filt :: <residual-filter-stage-1>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-1;


define class <residual-filter-stage-2> (<object>)
  slot filter-threshold :: <float> = 0.002;
end class <residual-filter-stage-2>;

define generic filter-residual-value-2 (filt :: <residual-filter-stage-2>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-2 (filt :: <residual-filter-stage-2>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-2;


define class <residual-filter-stage-3> (<object>)
  slot filter-threshold :: <float> = 0.003;
end class <residual-filter-stage-3>;

define generic filter-residual-value-3 (filt :: <residual-filter-stage-3>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-3 (filt :: <residual-filter-stage-3>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-3;


define class <residual-filter-stage-4> (<object>)
  slot filter-threshold :: <float> = 0.004;
end class <residual-filter-stage-4>;

define generic filter-residual-value-4 (filt :: <residual-filter-stage-4>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-4 (filt :: <residual-filter-stage-4>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-4;


define class <residual-filter-stage-5> (<object>)
  slot filter-threshold :: <float> = 0.005;
end class <residual-filter-stage-5>;

define generic filter-residual-value-5 (filt :: <residual-filter-stage-5>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-5 (filt :: <residual-filter-stage-5>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-5;


define class <residual-filter-stage-6> (<object>)
  slot filter-threshold :: <float> = 0.006;
end class <residual-filter-stage-6>;

define generic filter-residual-value-6 (filt :: <residual-filter-stage-6>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-6 (filt :: <residual-filter-stage-6>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-6;


define class <residual-filter-stage-7> (<object>)
  slot filter-threshold :: <float> = 0.007;
end class <residual-filter-stage-7>;

define generic filter-residual-value-7 (filt :: <residual-filter-stage-7>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-7 (filt :: <residual-filter-stage-7>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-7;


define class <residual-filter-stage-8> (<object>)
  slot filter-threshold :: <float> = 0.008;
end class <residual-filter-stage-8>;

define generic filter-residual-value-8 (filt :: <residual-filter-stage-8>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-8 (filt :: <residual-filter-stage-8>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-8;


define class <residual-filter-stage-9> (<object>)
  slot filter-threshold :: <float> = 0.009000000000000001;
end class <residual-filter-stage-9>;

define generic filter-residual-value-9 (filt :: <residual-filter-stage-9>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-9 (filt :: <residual-filter-stage-9>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-9;


define class <residual-filter-stage-10> (<object>)
  slot filter-threshold :: <float> = 0.01;
end class <residual-filter-stage-10>;

define generic filter-residual-value-10 (filt :: <residual-filter-stage-10>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-10 (filt :: <residual-filter-stage-10>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-10;


define class <residual-filter-stage-11> (<object>)
  slot filter-threshold :: <float> = 0.011;
end class <residual-filter-stage-11>;

define generic filter-residual-value-11 (filt :: <residual-filter-stage-11>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-11 (filt :: <residual-filter-stage-11>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-11;


define class <residual-filter-stage-12> (<object>)
  slot filter-threshold :: <float> = 0.012;
end class <residual-filter-stage-12>;

define generic filter-residual-value-12 (filt :: <residual-filter-stage-12>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-12 (filt :: <residual-filter-stage-12>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-12;


define class <residual-filter-stage-13> (<object>)
  slot filter-threshold :: <float> = 0.013000000000000001;
end class <residual-filter-stage-13>;

define generic filter-residual-value-13 (filt :: <residual-filter-stage-13>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-13 (filt :: <residual-filter-stage-13>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-13;


define class <residual-filter-stage-14> (<object>)
  slot filter-threshold :: <float> = 0.014;
end class <residual-filter-stage-14>;

define generic filter-residual-value-14 (filt :: <residual-filter-stage-14>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-14 (filt :: <residual-filter-stage-14>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-14;


define class <residual-filter-stage-15> (<object>)
  slot filter-threshold :: <float> = 0.015;
end class <residual-filter-stage-15>;

define generic filter-residual-value-15 (filt :: <residual-filter-stage-15>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-15 (filt :: <residual-filter-stage-15>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-15;


define class <residual-filter-stage-16> (<object>)
  slot filter-threshold :: <float> = 0.016;
end class <residual-filter-stage-16>;

define generic filter-residual-value-16 (filt :: <residual-filter-stage-16>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-16 (filt :: <residual-filter-stage-16>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-16;


define class <residual-filter-stage-17> (<object>)
  slot filter-threshold :: <float> = 0.017;
end class <residual-filter-stage-17>;

define generic filter-residual-value-17 (filt :: <residual-filter-stage-17>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-17 (filt :: <residual-filter-stage-17>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-17;


define class <residual-filter-stage-18> (<object>)
  slot filter-threshold :: <float> = 0.018000000000000002;
end class <residual-filter-stage-18>;

define generic filter-residual-value-18 (filt :: <residual-filter-stage-18>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-18 (filt :: <residual-filter-stage-18>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-18;


define class <residual-filter-stage-19> (<object>)
  slot filter-threshold :: <float> = 0.019;
end class <residual-filter-stage-19>;

define generic filter-residual-value-19 (filt :: <residual-filter-stage-19>, res :: <float>) => (clean :: <float>);
define method filter-residual-value-19 (filt :: <residual-filter-stage-19>, res :: <float>) => (clean :: <float>)
  if (abs(res) < filt.filter-threshold) 0.0 else res end if;
end method filter-residual-value-19;
