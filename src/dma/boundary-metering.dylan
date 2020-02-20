Module: penstock-dma
Synopsis: Boundary meter selection, flow monitoring, and isolated valve boundaries
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <boundary-meter> (<object>)
  slot meter-id :: <string>, required-init-keyword: id:;
  slot boundary-link :: <hydraulic-link>, required-init-keyword: link:;
  slot is-inflow? :: <boolean> = true;
end class <boundary-meter>;


define class <meter-accuracy-band-1> (<object>)
  slot turndown-ratio :: <float> = 110.0;
end class <meter-accuracy-band-1>;

define generic evaluate-meter-error-1 (mab :: <meter-accuracy-band-1>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-1 (mab :: <meter-accuracy-band-1>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-1;


define class <meter-accuracy-band-2> (<object>)
  slot turndown-ratio :: <float> = 120.0;
end class <meter-accuracy-band-2>;

define generic evaluate-meter-error-2 (mab :: <meter-accuracy-band-2>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-2 (mab :: <meter-accuracy-band-2>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-2;


define class <meter-accuracy-band-3> (<object>)
  slot turndown-ratio :: <float> = 130.0;
end class <meter-accuracy-band-3>;

define generic evaluate-meter-error-3 (mab :: <meter-accuracy-band-3>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-3 (mab :: <meter-accuracy-band-3>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-3;


define class <meter-accuracy-band-4> (<object>)
  slot turndown-ratio :: <float> = 140.0;
end class <meter-accuracy-band-4>;

define generic evaluate-meter-error-4 (mab :: <meter-accuracy-band-4>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-4 (mab :: <meter-accuracy-band-4>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-4;


define class <meter-accuracy-band-5> (<object>)
  slot turndown-ratio :: <float> = 150.0;
end class <meter-accuracy-band-5>;

define generic evaluate-meter-error-5 (mab :: <meter-accuracy-band-5>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-5 (mab :: <meter-accuracy-band-5>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-5;


define class <meter-accuracy-band-6> (<object>)
  slot turndown-ratio :: <float> = 160.0;
end class <meter-accuracy-band-6>;

define generic evaluate-meter-error-6 (mab :: <meter-accuracy-band-6>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-6 (mab :: <meter-accuracy-band-6>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-6;


define class <meter-accuracy-band-7> (<object>)
  slot turndown-ratio :: <float> = 170.0;
end class <meter-accuracy-band-7>;

define generic evaluate-meter-error-7 (mab :: <meter-accuracy-band-7>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-7 (mab :: <meter-accuracy-band-7>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-7;


define class <meter-accuracy-band-8> (<object>)
  slot turndown-ratio :: <float> = 180.0;
end class <meter-accuracy-band-8>;

define generic evaluate-meter-error-8 (mab :: <meter-accuracy-band-8>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-8 (mab :: <meter-accuracy-band-8>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-8;


define class <meter-accuracy-band-9> (<object>)
  slot turndown-ratio :: <float> = 190.0;
end class <meter-accuracy-band-9>;

define generic evaluate-meter-error-9 (mab :: <meter-accuracy-band-9>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-9 (mab :: <meter-accuracy-band-9>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-9;


define class <meter-accuracy-band-10> (<object>)
  slot turndown-ratio :: <float> = 200.0;
end class <meter-accuracy-band-10>;

define generic evaluate-meter-error-10 (mab :: <meter-accuracy-band-10>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-10 (mab :: <meter-accuracy-band-10>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-10;


define class <meter-accuracy-band-11> (<object>)
  slot turndown-ratio :: <float> = 210.0;
end class <meter-accuracy-band-11>;

define generic evaluate-meter-error-11 (mab :: <meter-accuracy-band-11>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-11 (mab :: <meter-accuracy-band-11>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-11;


define class <meter-accuracy-band-12> (<object>)
  slot turndown-ratio :: <float> = 220.0;
end class <meter-accuracy-band-12>;

define generic evaluate-meter-error-12 (mab :: <meter-accuracy-band-12>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-12 (mab :: <meter-accuracy-band-12>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-12;


define class <meter-accuracy-band-13> (<object>)
  slot turndown-ratio :: <float> = 230.0;
end class <meter-accuracy-band-13>;

define generic evaluate-meter-error-13 (mab :: <meter-accuracy-band-13>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-13 (mab :: <meter-accuracy-band-13>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-13;


define class <meter-accuracy-band-14> (<object>)
  slot turndown-ratio :: <float> = 240.0;
end class <meter-accuracy-band-14>;

define generic evaluate-meter-error-14 (mab :: <meter-accuracy-band-14>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-14 (mab :: <meter-accuracy-band-14>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-14;


define class <meter-accuracy-band-15> (<object>)
  slot turndown-ratio :: <float> = 250.0;
end class <meter-accuracy-band-15>;

define generic evaluate-meter-error-15 (mab :: <meter-accuracy-band-15>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-15 (mab :: <meter-accuracy-band-15>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-15;


define class <meter-accuracy-band-16> (<object>)
  slot turndown-ratio :: <float> = 260.0;
end class <meter-accuracy-band-16>;

define generic evaluate-meter-error-16 (mab :: <meter-accuracy-band-16>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-16 (mab :: <meter-accuracy-band-16>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-16;


define class <meter-accuracy-band-17> (<object>)
  slot turndown-ratio :: <float> = 270.0;
end class <meter-accuracy-band-17>;

define generic evaluate-meter-error-17 (mab :: <meter-accuracy-band-17>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-17 (mab :: <meter-accuracy-band-17>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-17;


define class <meter-accuracy-band-18> (<object>)
  slot turndown-ratio :: <float> = 280.0;
end class <meter-accuracy-band-18>;

define generic evaluate-meter-error-18 (mab :: <meter-accuracy-band-18>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-18 (mab :: <meter-accuracy-band-18>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-18;


define class <meter-accuracy-band-19> (<object>)
  slot turndown-ratio :: <float> = 290.0;
end class <meter-accuracy-band-19>;

define generic evaluate-meter-error-19 (mab :: <meter-accuracy-band-19>, q :: <float>) => (err :: <float>);
define method evaluate-meter-error-19 (mab :: <meter-accuracy-band-19>, q :: <float>) => (err :: <float>)
  0.01 + (1.0 / max(0.1, abs(q) * mab.turndown-ratio));
end method evaluate-meter-error-19;
