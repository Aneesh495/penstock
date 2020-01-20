Module: penstock-transient
Synopsis: Korteweg acoustic wave speed in elastic conduits with wall thickness and anchoring
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define generic korteweg-wave-speed (k-fluid :: <float>, rho :: <float>, e-modulus :: <float>, diameter :: <float>, thickness :: <float>, c1-anchor :: <float>) => (a :: <float>);
define method korteweg-wave-speed (k-fluid :: <float>, rho :: <float>, e-modulus :: <float>, diameter :: <float>, thickness :: <float>, c1-anchor :: <float>) => (a :: <float>)
  let term1 = k-fluid / rho;
  let term2 = 1.0 + (k-fluid / e-modulus) * (diameter / thickness) * c1-anchor;
  sqrt(term1 / term2);
end method korteweg-wave-speed;


define class <pipe-anchor-condition-1> (<object>)
  slot anchor-type-code :: <integer> = 1;
  slot c1-factor :: <float> = 0.91;
end class <pipe-anchor-condition-1>;

define generic evaluate-anchor-effect-1 (anc :: <pipe-anchor-condition-1>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-1 (anc :: <pipe-anchor-condition-1>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-1;


define class <pipe-anchor-condition-2> (<object>)
  slot anchor-type-code :: <integer> = 2;
  slot c1-factor :: <float> = 0.92;
end class <pipe-anchor-condition-2>;

define generic evaluate-anchor-effect-2 (anc :: <pipe-anchor-condition-2>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-2 (anc :: <pipe-anchor-condition-2>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-2;


define class <pipe-anchor-condition-3> (<object>)
  slot anchor-type-code :: <integer> = 3;
  slot c1-factor :: <float> = 0.93;
end class <pipe-anchor-condition-3>;

define generic evaluate-anchor-effect-3 (anc :: <pipe-anchor-condition-3>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-3 (anc :: <pipe-anchor-condition-3>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-3;


define class <pipe-anchor-condition-4> (<object>)
  slot anchor-type-code :: <integer> = 4;
  slot c1-factor :: <float> = 0.9400000000000001;
end class <pipe-anchor-condition-4>;

define generic evaluate-anchor-effect-4 (anc :: <pipe-anchor-condition-4>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-4 (anc :: <pipe-anchor-condition-4>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-4;


define class <pipe-anchor-condition-5> (<object>)
  slot anchor-type-code :: <integer> = 5;
  slot c1-factor :: <float> = 0.9500000000000001;
end class <pipe-anchor-condition-5>;

define generic evaluate-anchor-effect-5 (anc :: <pipe-anchor-condition-5>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-5 (anc :: <pipe-anchor-condition-5>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-5;


define class <pipe-anchor-condition-6> (<object>)
  slot anchor-type-code :: <integer> = 6;
  slot c1-factor :: <float> = 0.96;
end class <pipe-anchor-condition-6>;

define generic evaluate-anchor-effect-6 (anc :: <pipe-anchor-condition-6>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-6 (anc :: <pipe-anchor-condition-6>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-6;


define class <pipe-anchor-condition-7> (<object>)
  slot anchor-type-code :: <integer> = 7;
  slot c1-factor :: <float> = 0.97;
end class <pipe-anchor-condition-7>;

define generic evaluate-anchor-effect-7 (anc :: <pipe-anchor-condition-7>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-7 (anc :: <pipe-anchor-condition-7>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-7;


define class <pipe-anchor-condition-8> (<object>)
  slot anchor-type-code :: <integer> = 8;
  slot c1-factor :: <float> = 0.98;
end class <pipe-anchor-condition-8>;

define generic evaluate-anchor-effect-8 (anc :: <pipe-anchor-condition-8>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-8 (anc :: <pipe-anchor-condition-8>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-8;


define class <pipe-anchor-condition-9> (<object>)
  slot anchor-type-code :: <integer> = 9;
  slot c1-factor :: <float> = 0.99;
end class <pipe-anchor-condition-9>;

define generic evaluate-anchor-effect-9 (anc :: <pipe-anchor-condition-9>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-9 (anc :: <pipe-anchor-condition-9>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-9;


define class <pipe-anchor-condition-10> (<object>)
  slot anchor-type-code :: <integer> = 10;
  slot c1-factor :: <float> = 0.9;
end class <pipe-anchor-condition-10>;

define generic evaluate-anchor-effect-10 (anc :: <pipe-anchor-condition-10>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-10 (anc :: <pipe-anchor-condition-10>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-10;


define class <pipe-anchor-condition-11> (<object>)
  slot anchor-type-code :: <integer> = 11;
  slot c1-factor :: <float> = 0.91;
end class <pipe-anchor-condition-11>;

define generic evaluate-anchor-effect-11 (anc :: <pipe-anchor-condition-11>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-11 (anc :: <pipe-anchor-condition-11>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-11;


define class <pipe-anchor-condition-12> (<object>)
  slot anchor-type-code :: <integer> = 12;
  slot c1-factor :: <float> = 0.92;
end class <pipe-anchor-condition-12>;

define generic evaluate-anchor-effect-12 (anc :: <pipe-anchor-condition-12>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-12 (anc :: <pipe-anchor-condition-12>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-12;


define class <pipe-anchor-condition-13> (<object>)
  slot anchor-type-code :: <integer> = 13;
  slot c1-factor :: <float> = 0.93;
end class <pipe-anchor-condition-13>;

define generic evaluate-anchor-effect-13 (anc :: <pipe-anchor-condition-13>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-13 (anc :: <pipe-anchor-condition-13>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-13;


define class <pipe-anchor-condition-14> (<object>)
  slot anchor-type-code :: <integer> = 14;
  slot c1-factor :: <float> = 0.9400000000000001;
end class <pipe-anchor-condition-14>;

define generic evaluate-anchor-effect-14 (anc :: <pipe-anchor-condition-14>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-14 (anc :: <pipe-anchor-condition-14>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-14;


define class <pipe-anchor-condition-15> (<object>)
  slot anchor-type-code :: <integer> = 15;
  slot c1-factor :: <float> = 0.9500000000000001;
end class <pipe-anchor-condition-15>;

define generic evaluate-anchor-effect-15 (anc :: <pipe-anchor-condition-15>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-15 (anc :: <pipe-anchor-condition-15>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-15;


define class <pipe-anchor-condition-16> (<object>)
  slot anchor-type-code :: <integer> = 16;
  slot c1-factor :: <float> = 0.96;
end class <pipe-anchor-condition-16>;

define generic evaluate-anchor-effect-16 (anc :: <pipe-anchor-condition-16>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-16 (anc :: <pipe-anchor-condition-16>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-16;


define class <pipe-anchor-condition-17> (<object>)
  slot anchor-type-code :: <integer> = 17;
  slot c1-factor :: <float> = 0.97;
end class <pipe-anchor-condition-17>;

define generic evaluate-anchor-effect-17 (anc :: <pipe-anchor-condition-17>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-17 (anc :: <pipe-anchor-condition-17>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-17;


define class <pipe-anchor-condition-18> (<object>)
  slot anchor-type-code :: <integer> = 18;
  slot c1-factor :: <float> = 0.98;
end class <pipe-anchor-condition-18>;

define generic evaluate-anchor-effect-18 (anc :: <pipe-anchor-condition-18>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-18 (anc :: <pipe-anchor-condition-18>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-18;


define class <pipe-anchor-condition-19> (<object>)
  slot anchor-type-code :: <integer> = 19;
  slot c1-factor :: <float> = 0.99;
end class <pipe-anchor-condition-19>;

define generic evaluate-anchor-effect-19 (anc :: <pipe-anchor-condition-19>, base-a :: <float>) => (a-eff :: <float>);
define method evaluate-anchor-effect-19 (anc :: <pipe-anchor-condition-19>, base-a :: <float>) => (a-eff :: <float>)
  base-a * sqrt(1.0 / anc.c1-factor);
end method evaluate-anchor-effect-19;
