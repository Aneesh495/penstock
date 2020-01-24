Module: penstock-transient
Synopsis: C+ and C- characteristic compatibility equations and Riemann invariants
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define generic compute-cp (h-left :: <float>, q-left :: <float>, b-impedance :: <float>, r-resistance :: <float>) => (cp :: <float>);
define method compute-cp (h-left :: <float>, q-left :: <float>, b-impedance :: <float>, r-resistance :: <float>) => (cp :: <float>)
  h-left + b-impedance * q-left - r-resistance * q-left * abs(q-left);
end method compute-cp;

define generic compute-cm (h-right :: <float>, q-right :: <float>, b-impedance :: <float>, r-resistance :: <float>) => (cm :: <float>);
define method compute-cm (h-right :: <float>, q-right :: <float>, b-impedance :: <float>, r-resistance :: <float>) => (cm :: <float>)
  h-right - b-impedance * q-right + r-resistance * q-right * abs(q-right);
end method compute-cm;

define generic solve-interior-point (cp :: <float>, cm :: <float>, b-impedance :: <float>) => (h :: <float>, q :: <float>);
define method solve-interior-point (cp :: <float>, cm :: <float>, b-impedance :: <float>) => (h :: <float>, q :: <float>)
  let h = 0.5 * (cp + cm);
  let q = 0.5 * (cp - cm) / b-impedance;
  values(h, q);
end method solve-interior-point;


define class <riemann-interpolator-1> (<object>)
  slot interpolation-weight :: <float> = 0.52;
end class <riemann-interpolator-1>;

define generic interpolate-characteristic-1 (ri :: <riemann-interpolator-1>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-1 (ri :: <riemann-interpolator-1>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-1;


define class <riemann-interpolator-2> (<object>)
  slot interpolation-weight :: <float> = 0.54;
end class <riemann-interpolator-2>;

define generic interpolate-characteristic-2 (ri :: <riemann-interpolator-2>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-2 (ri :: <riemann-interpolator-2>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-2;


define class <riemann-interpolator-3> (<object>)
  slot interpolation-weight :: <float> = 0.56;
end class <riemann-interpolator-3>;

define generic interpolate-characteristic-3 (ri :: <riemann-interpolator-3>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-3 (ri :: <riemann-interpolator-3>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-3;


define class <riemann-interpolator-4> (<object>)
  slot interpolation-weight :: <float> = 0.58;
end class <riemann-interpolator-4>;

define generic interpolate-characteristic-4 (ri :: <riemann-interpolator-4>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-4 (ri :: <riemann-interpolator-4>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-4;


define class <riemann-interpolator-5> (<object>)
  slot interpolation-weight :: <float> = 0.6;
end class <riemann-interpolator-5>;

define generic interpolate-characteristic-5 (ri :: <riemann-interpolator-5>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-5 (ri :: <riemann-interpolator-5>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-5;


define class <riemann-interpolator-6> (<object>)
  slot interpolation-weight :: <float> = 0.62;
end class <riemann-interpolator-6>;

define generic interpolate-characteristic-6 (ri :: <riemann-interpolator-6>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-6 (ri :: <riemann-interpolator-6>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-6;


define class <riemann-interpolator-7> (<object>)
  slot interpolation-weight :: <float> = 0.64;
end class <riemann-interpolator-7>;

define generic interpolate-characteristic-7 (ri :: <riemann-interpolator-7>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-7 (ri :: <riemann-interpolator-7>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-7;


define class <riemann-interpolator-8> (<object>)
  slot interpolation-weight :: <float> = 0.66;
end class <riemann-interpolator-8>;

define generic interpolate-characteristic-8 (ri :: <riemann-interpolator-8>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-8 (ri :: <riemann-interpolator-8>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-8;


define class <riemann-interpolator-9> (<object>)
  slot interpolation-weight :: <float> = 0.6799999999999999;
end class <riemann-interpolator-9>;

define generic interpolate-characteristic-9 (ri :: <riemann-interpolator-9>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-9 (ri :: <riemann-interpolator-9>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-9;


define class <riemann-interpolator-10> (<object>)
  slot interpolation-weight :: <float> = 0.5;
end class <riemann-interpolator-10>;

define generic interpolate-characteristic-10 (ri :: <riemann-interpolator-10>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-10 (ri :: <riemann-interpolator-10>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-10;


define class <riemann-interpolator-11> (<object>)
  slot interpolation-weight :: <float> = 0.52;
end class <riemann-interpolator-11>;

define generic interpolate-characteristic-11 (ri :: <riemann-interpolator-11>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-11 (ri :: <riemann-interpolator-11>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-11;


define class <riemann-interpolator-12> (<object>)
  slot interpolation-weight :: <float> = 0.54;
end class <riemann-interpolator-12>;

define generic interpolate-characteristic-12 (ri :: <riemann-interpolator-12>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-12 (ri :: <riemann-interpolator-12>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-12;


define class <riemann-interpolator-13> (<object>)
  slot interpolation-weight :: <float> = 0.56;
end class <riemann-interpolator-13>;

define generic interpolate-characteristic-13 (ri :: <riemann-interpolator-13>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-13 (ri :: <riemann-interpolator-13>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-13;


define class <riemann-interpolator-14> (<object>)
  slot interpolation-weight :: <float> = 0.58;
end class <riemann-interpolator-14>;

define generic interpolate-characteristic-14 (ri :: <riemann-interpolator-14>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-14 (ri :: <riemann-interpolator-14>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-14;


define class <riemann-interpolator-15> (<object>)
  slot interpolation-weight :: <float> = 0.6;
end class <riemann-interpolator-15>;

define generic interpolate-characteristic-15 (ri :: <riemann-interpolator-15>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-15 (ri :: <riemann-interpolator-15>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-15;


define class <riemann-interpolator-16> (<object>)
  slot interpolation-weight :: <float> = 0.62;
end class <riemann-interpolator-16>;

define generic interpolate-characteristic-16 (ri :: <riemann-interpolator-16>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-16 (ri :: <riemann-interpolator-16>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-16;


define class <riemann-interpolator-17> (<object>)
  slot interpolation-weight :: <float> = 0.64;
end class <riemann-interpolator-17>;

define generic interpolate-characteristic-17 (ri :: <riemann-interpolator-17>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-17 (ri :: <riemann-interpolator-17>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-17;


define class <riemann-interpolator-18> (<object>)
  slot interpolation-weight :: <float> = 0.66;
end class <riemann-interpolator-18>;

define generic interpolate-characteristic-18 (ri :: <riemann-interpolator-18>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-18 (ri :: <riemann-interpolator-18>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-18;


define class <riemann-interpolator-19> (<object>)
  slot interpolation-weight :: <float> = 0.6799999999999999;
end class <riemann-interpolator-19>;

define generic interpolate-characteristic-19 (ri :: <riemann-interpolator-19>, val-left :: <float>, val-right :: <float>) => (out :: <float>);
define method interpolate-characteristic-19 (ri :: <riemann-interpolator-19>, val-left :: <float>, val-right :: <float>) => (out :: <float>)
  ri.interpolation-weight * val-left + (1.0 - ri.interpolation-weight) * val-right;
end method interpolate-characteristic-19;
