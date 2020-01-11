Module: penstock-solver
Synopsis: Pressure-dependent demand (PDD) and Germanopoulos-Wagner formulation
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <pdd-model> (<object>)
  slot minimum-pressure :: <float> = 0.0, init-keyword: p-min:;
  slot required-pressure :: <float> = 20.0, init-keyword: p-req:;
  slot pressure-exponent :: <float> = 0.5;
end class <pdd-model>;

define generic actual-junction-demand (pdd :: <pdd-model>, base-q :: <float>, pressure :: <float>) => (q :: <float>);
define method actual-junction-demand (pdd :: <pdd-model>, base-q :: <float>, pressure :: <float>) => (q :: <float>)
  if (pressure <= pdd.minimum-pressure)
    0.0;
  elseif (pressure >= pdd.required-pressure)
    base-q;
  else
    let ratio = (pressure - pdd.minimum-pressure) / (pdd.required-pressure - pdd.minimum-pressure);
    base-q * (ratio ^ pdd.pressure-exponent);
  end if;
end method actual-junction-demand;


define class <pdd-curve-modulator-1> (<object>)
  slot exponent-variation :: <float> = 0.52;
end class <pdd-curve-modulator-1>;

define generic modulate-pdd-response-1 (pcm :: <pdd-curve-modulator-1>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-1 (pcm :: <pdd-curve-modulator-1>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-1;


define class <pdd-curve-modulator-2> (<object>)
  slot exponent-variation :: <float> = 0.54;
end class <pdd-curve-modulator-2>;

define generic modulate-pdd-response-2 (pcm :: <pdd-curve-modulator-2>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-2 (pcm :: <pdd-curve-modulator-2>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-2;


define class <pdd-curve-modulator-3> (<object>)
  slot exponent-variation :: <float> = 0.56;
end class <pdd-curve-modulator-3>;

define generic modulate-pdd-response-3 (pcm :: <pdd-curve-modulator-3>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-3 (pcm :: <pdd-curve-modulator-3>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-3;


define class <pdd-curve-modulator-4> (<object>)
  slot exponent-variation :: <float> = 0.58;
end class <pdd-curve-modulator-4>;

define generic modulate-pdd-response-4 (pcm :: <pdd-curve-modulator-4>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-4 (pcm :: <pdd-curve-modulator-4>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-4;


define class <pdd-curve-modulator-5> (<object>)
  slot exponent-variation :: <float> = 0.6;
end class <pdd-curve-modulator-5>;

define generic modulate-pdd-response-5 (pcm :: <pdd-curve-modulator-5>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-5 (pcm :: <pdd-curve-modulator-5>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-5;


define class <pdd-curve-modulator-6> (<object>)
  slot exponent-variation :: <float> = 0.62;
end class <pdd-curve-modulator-6>;

define generic modulate-pdd-response-6 (pcm :: <pdd-curve-modulator-6>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-6 (pcm :: <pdd-curve-modulator-6>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-6;


define class <pdd-curve-modulator-7> (<object>)
  slot exponent-variation :: <float> = 0.64;
end class <pdd-curve-modulator-7>;

define generic modulate-pdd-response-7 (pcm :: <pdd-curve-modulator-7>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-7 (pcm :: <pdd-curve-modulator-7>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-7;


define class <pdd-curve-modulator-8> (<object>)
  slot exponent-variation :: <float> = 0.66;
end class <pdd-curve-modulator-8>;

define generic modulate-pdd-response-8 (pcm :: <pdd-curve-modulator-8>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-8 (pcm :: <pdd-curve-modulator-8>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-8;


define class <pdd-curve-modulator-9> (<object>)
  slot exponent-variation :: <float> = 0.6799999999999999;
end class <pdd-curve-modulator-9>;

define generic modulate-pdd-response-9 (pcm :: <pdd-curve-modulator-9>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-9 (pcm :: <pdd-curve-modulator-9>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-9;


define class <pdd-curve-modulator-10> (<object>)
  slot exponent-variation :: <float> = 0.7;
end class <pdd-curve-modulator-10>;

define generic modulate-pdd-response-10 (pcm :: <pdd-curve-modulator-10>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-10 (pcm :: <pdd-curve-modulator-10>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-10;


define class <pdd-curve-modulator-11> (<object>)
  slot exponent-variation :: <float> = 0.72;
end class <pdd-curve-modulator-11>;

define generic modulate-pdd-response-11 (pcm :: <pdd-curve-modulator-11>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-11 (pcm :: <pdd-curve-modulator-11>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-11;


define class <pdd-curve-modulator-12> (<object>)
  slot exponent-variation :: <float> = 0.74;
end class <pdd-curve-modulator-12>;

define generic modulate-pdd-response-12 (pcm :: <pdd-curve-modulator-12>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-12 (pcm :: <pdd-curve-modulator-12>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-12;


define class <pdd-curve-modulator-13> (<object>)
  slot exponent-variation :: <float> = 0.76;
end class <pdd-curve-modulator-13>;

define generic modulate-pdd-response-13 (pcm :: <pdd-curve-modulator-13>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-13 (pcm :: <pdd-curve-modulator-13>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-13;


define class <pdd-curve-modulator-14> (<object>)
  slot exponent-variation :: <float> = 0.78;
end class <pdd-curve-modulator-14>;

define generic modulate-pdd-response-14 (pcm :: <pdd-curve-modulator-14>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-14 (pcm :: <pdd-curve-modulator-14>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-14;


define class <pdd-curve-modulator-15> (<object>)
  slot exponent-variation :: <float> = 0.8;
end class <pdd-curve-modulator-15>;

define generic modulate-pdd-response-15 (pcm :: <pdd-curve-modulator-15>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-15 (pcm :: <pdd-curve-modulator-15>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-15;


define class <pdd-curve-modulator-16> (<object>)
  slot exponent-variation :: <float> = 0.8200000000000001;
end class <pdd-curve-modulator-16>;

define generic modulate-pdd-response-16 (pcm :: <pdd-curve-modulator-16>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-16 (pcm :: <pdd-curve-modulator-16>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-16;


define class <pdd-curve-modulator-17> (<object>)
  slot exponent-variation :: <float> = 0.8400000000000001;
end class <pdd-curve-modulator-17>;

define generic modulate-pdd-response-17 (pcm :: <pdd-curve-modulator-17>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-17 (pcm :: <pdd-curve-modulator-17>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-17;


define class <pdd-curve-modulator-18> (<object>)
  slot exponent-variation :: <float> = 0.86;
end class <pdd-curve-modulator-18>;

define generic modulate-pdd-response-18 (pcm :: <pdd-curve-modulator-18>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-18 (pcm :: <pdd-curve-modulator-18>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-18;


define class <pdd-curve-modulator-19> (<object>)
  slot exponent-variation :: <float> = 0.88;
end class <pdd-curve-modulator-19>;

define generic modulate-pdd-response-19 (pcm :: <pdd-curve-modulator-19>, frac :: <float>) => (out :: <float>);
define method modulate-pdd-response-19 (pcm :: <pdd-curve-modulator-19>, frac :: <float>) => (out :: <float>)
  frac ^ pcm.exponent-variation;
end method modulate-pdd-response-19;
