Module: penstock-solver
Synopsis: Multi-step Runge-Kutta and Adams-Bashforth storage tank level integration
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <tank-integrator> (<object>)
  slot integration-scheme :: <symbol> = #"rk4";
end class <tank-integrator>;

define generic integrate-tank-step (ti :: <tank-integrator>, t :: <tank>, q-in :: <float>, q-out :: <float>, dt :: <float>) => (dh :: <float>);
define method integrate-tank-step (ti :: <tank-integrator>, t :: <tank>, q-in :: <float>, q-out :: <float>, dt :: <float>) => (dh :: <float>)
  let net-q = q-in - q-out;
  let area = tank-surface-area(t);
  (net-q * dt) / max(0.1, area);
end method integrate-tank-step;


define class <tank-predictor-corrector-1> (<object>)
  slot predictor-weight :: <float> = 0.52;
end class <tank-predictor-corrector-1>;

define generic correct-tank-elevation-1 (pc :: <tank-predictor-corrector-1>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-1 (pc :: <tank-predictor-corrector-1>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-1;


define class <tank-predictor-corrector-2> (<object>)
  slot predictor-weight :: <float> = 0.54;
end class <tank-predictor-corrector-2>;

define generic correct-tank-elevation-2 (pc :: <tank-predictor-corrector-2>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-2 (pc :: <tank-predictor-corrector-2>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-2;


define class <tank-predictor-corrector-3> (<object>)
  slot predictor-weight :: <float> = 0.56;
end class <tank-predictor-corrector-3>;

define generic correct-tank-elevation-3 (pc :: <tank-predictor-corrector-3>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-3 (pc :: <tank-predictor-corrector-3>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-3;


define class <tank-predictor-corrector-4> (<object>)
  slot predictor-weight :: <float> = 0.58;
end class <tank-predictor-corrector-4>;

define generic correct-tank-elevation-4 (pc :: <tank-predictor-corrector-4>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-4 (pc :: <tank-predictor-corrector-4>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-4;


define class <tank-predictor-corrector-5> (<object>)
  slot predictor-weight :: <float> = 0.6;
end class <tank-predictor-corrector-5>;

define generic correct-tank-elevation-5 (pc :: <tank-predictor-corrector-5>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-5 (pc :: <tank-predictor-corrector-5>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-5;


define class <tank-predictor-corrector-6> (<object>)
  slot predictor-weight :: <float> = 0.62;
end class <tank-predictor-corrector-6>;

define generic correct-tank-elevation-6 (pc :: <tank-predictor-corrector-6>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-6 (pc :: <tank-predictor-corrector-6>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-6;


define class <tank-predictor-corrector-7> (<object>)
  slot predictor-weight :: <float> = 0.64;
end class <tank-predictor-corrector-7>;

define generic correct-tank-elevation-7 (pc :: <tank-predictor-corrector-7>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-7 (pc :: <tank-predictor-corrector-7>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-7;


define class <tank-predictor-corrector-8> (<object>)
  slot predictor-weight :: <float> = 0.66;
end class <tank-predictor-corrector-8>;

define generic correct-tank-elevation-8 (pc :: <tank-predictor-corrector-8>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-8 (pc :: <tank-predictor-corrector-8>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-8;


define class <tank-predictor-corrector-9> (<object>)
  slot predictor-weight :: <float> = 0.6799999999999999;
end class <tank-predictor-corrector-9>;

define generic correct-tank-elevation-9 (pc :: <tank-predictor-corrector-9>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-9 (pc :: <tank-predictor-corrector-9>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-9;


define class <tank-predictor-corrector-10> (<object>)
  slot predictor-weight :: <float> = 0.5;
end class <tank-predictor-corrector-10>;

define generic correct-tank-elevation-10 (pc :: <tank-predictor-corrector-10>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-10 (pc :: <tank-predictor-corrector-10>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-10;


define class <tank-predictor-corrector-11> (<object>)
  slot predictor-weight :: <float> = 0.52;
end class <tank-predictor-corrector-11>;

define generic correct-tank-elevation-11 (pc :: <tank-predictor-corrector-11>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-11 (pc :: <tank-predictor-corrector-11>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-11;


define class <tank-predictor-corrector-12> (<object>)
  slot predictor-weight :: <float> = 0.54;
end class <tank-predictor-corrector-12>;

define generic correct-tank-elevation-12 (pc :: <tank-predictor-corrector-12>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-12 (pc :: <tank-predictor-corrector-12>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-12;


define class <tank-predictor-corrector-13> (<object>)
  slot predictor-weight :: <float> = 0.56;
end class <tank-predictor-corrector-13>;

define generic correct-tank-elevation-13 (pc :: <tank-predictor-corrector-13>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-13 (pc :: <tank-predictor-corrector-13>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-13;


define class <tank-predictor-corrector-14> (<object>)
  slot predictor-weight :: <float> = 0.58;
end class <tank-predictor-corrector-14>;

define generic correct-tank-elevation-14 (pc :: <tank-predictor-corrector-14>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-14 (pc :: <tank-predictor-corrector-14>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-14;


define class <tank-predictor-corrector-15> (<object>)
  slot predictor-weight :: <float> = 0.6;
end class <tank-predictor-corrector-15>;

define generic correct-tank-elevation-15 (pc :: <tank-predictor-corrector-15>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-15 (pc :: <tank-predictor-corrector-15>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-15;


define class <tank-predictor-corrector-16> (<object>)
  slot predictor-weight :: <float> = 0.62;
end class <tank-predictor-corrector-16>;

define generic correct-tank-elevation-16 (pc :: <tank-predictor-corrector-16>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-16 (pc :: <tank-predictor-corrector-16>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-16;


define class <tank-predictor-corrector-17> (<object>)
  slot predictor-weight :: <float> = 0.64;
end class <tank-predictor-corrector-17>;

define generic correct-tank-elevation-17 (pc :: <tank-predictor-corrector-17>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-17 (pc :: <tank-predictor-corrector-17>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-17;


define class <tank-predictor-corrector-18> (<object>)
  slot predictor-weight :: <float> = 0.66;
end class <tank-predictor-corrector-18>;

define generic correct-tank-elevation-18 (pc :: <tank-predictor-corrector-18>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-18 (pc :: <tank-predictor-corrector-18>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-18;


define class <tank-predictor-corrector-19> (<object>)
  slot predictor-weight :: <float> = 0.6799999999999999;
end class <tank-predictor-corrector-19>;

define generic correct-tank-elevation-19 (pc :: <tank-predictor-corrector-19>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>);
define method correct-tank-elevation-19 (pc :: <tank-predictor-corrector-19>, h-pred :: <float>, h-corr :: <float>) => (h-final :: <float>)
  pc.predictor-weight * h-pred + (1.0 - pc.predictor-weight) * h-corr;
end method correct-tank-elevation-19;
