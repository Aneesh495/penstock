Module: penstock-quality
Synopsis: Non-linear multi-species reaction kinetics and disinfection byproduct formation
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <dbpm-formation-model> (<object>)
  slot thm-formation-potential :: <float> = 50.0; // ug/L
end class <dbpm-formation-model>;


define class <reaction-species-tier-1> (<object>)
  slot reaction-order :: <integer> = 2;
end class <reaction-species-tier-1>;

define generic evaluate-species-rate-1 (rst :: <reaction-species-tier-1>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-1 (rst :: <reaction-species-tier-1>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-1;


define class <reaction-species-tier-2> (<object>)
  slot reaction-order :: <integer> = 3;
end class <reaction-species-tier-2>;

define generic evaluate-species-rate-2 (rst :: <reaction-species-tier-2>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-2 (rst :: <reaction-species-tier-2>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-2;


define class <reaction-species-tier-3> (<object>)
  slot reaction-order :: <integer> = 1;
end class <reaction-species-tier-3>;

define generic evaluate-species-rate-3 (rst :: <reaction-species-tier-3>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-3 (rst :: <reaction-species-tier-3>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-3;


define class <reaction-species-tier-4> (<object>)
  slot reaction-order :: <integer> = 2;
end class <reaction-species-tier-4>;

define generic evaluate-species-rate-4 (rst :: <reaction-species-tier-4>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-4 (rst :: <reaction-species-tier-4>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-4;


define class <reaction-species-tier-5> (<object>)
  slot reaction-order :: <integer> = 3;
end class <reaction-species-tier-5>;

define generic evaluate-species-rate-5 (rst :: <reaction-species-tier-5>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-5 (rst :: <reaction-species-tier-5>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-5;


define class <reaction-species-tier-6> (<object>)
  slot reaction-order :: <integer> = 1;
end class <reaction-species-tier-6>;

define generic evaluate-species-rate-6 (rst :: <reaction-species-tier-6>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-6 (rst :: <reaction-species-tier-6>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-6;


define class <reaction-species-tier-7> (<object>)
  slot reaction-order :: <integer> = 2;
end class <reaction-species-tier-7>;

define generic evaluate-species-rate-7 (rst :: <reaction-species-tier-7>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-7 (rst :: <reaction-species-tier-7>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-7;


define class <reaction-species-tier-8> (<object>)
  slot reaction-order :: <integer> = 3;
end class <reaction-species-tier-8>;

define generic evaluate-species-rate-8 (rst :: <reaction-species-tier-8>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-8 (rst :: <reaction-species-tier-8>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-8;


define class <reaction-species-tier-9> (<object>)
  slot reaction-order :: <integer> = 1;
end class <reaction-species-tier-9>;

define generic evaluate-species-rate-9 (rst :: <reaction-species-tier-9>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-9 (rst :: <reaction-species-tier-9>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-9;


define class <reaction-species-tier-10> (<object>)
  slot reaction-order :: <integer> = 2;
end class <reaction-species-tier-10>;

define generic evaluate-species-rate-10 (rst :: <reaction-species-tier-10>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-10 (rst :: <reaction-species-tier-10>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-10;


define class <reaction-species-tier-11> (<object>)
  slot reaction-order :: <integer> = 3;
end class <reaction-species-tier-11>;

define generic evaluate-species-rate-11 (rst :: <reaction-species-tier-11>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-11 (rst :: <reaction-species-tier-11>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-11;


define class <reaction-species-tier-12> (<object>)
  slot reaction-order :: <integer> = 1;
end class <reaction-species-tier-12>;

define generic evaluate-species-rate-12 (rst :: <reaction-species-tier-12>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-12 (rst :: <reaction-species-tier-12>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-12;


define class <reaction-species-tier-13> (<object>)
  slot reaction-order :: <integer> = 2;
end class <reaction-species-tier-13>;

define generic evaluate-species-rate-13 (rst :: <reaction-species-tier-13>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-13 (rst :: <reaction-species-tier-13>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-13;


define class <reaction-species-tier-14> (<object>)
  slot reaction-order :: <integer> = 3;
end class <reaction-species-tier-14>;

define generic evaluate-species-rate-14 (rst :: <reaction-species-tier-14>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-14 (rst :: <reaction-species-tier-14>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-14;


define class <reaction-species-tier-15> (<object>)
  slot reaction-order :: <integer> = 1;
end class <reaction-species-tier-15>;

define generic evaluate-species-rate-15 (rst :: <reaction-species-tier-15>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-15 (rst :: <reaction-species-tier-15>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-15;


define class <reaction-species-tier-16> (<object>)
  slot reaction-order :: <integer> = 2;
end class <reaction-species-tier-16>;

define generic evaluate-species-rate-16 (rst :: <reaction-species-tier-16>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-16 (rst :: <reaction-species-tier-16>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-16;


define class <reaction-species-tier-17> (<object>)
  slot reaction-order :: <integer> = 3;
end class <reaction-species-tier-17>;

define generic evaluate-species-rate-17 (rst :: <reaction-species-tier-17>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-17 (rst :: <reaction-species-tier-17>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-17;


define class <reaction-species-tier-18> (<object>)
  slot reaction-order :: <integer> = 1;
end class <reaction-species-tier-18>;

define generic evaluate-species-rate-18 (rst :: <reaction-species-tier-18>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-18 (rst :: <reaction-species-tier-18>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-18;


define class <reaction-species-tier-19> (<object>)
  slot reaction-order :: <integer> = 2;
end class <reaction-species-tier-19>;

define generic evaluate-species-rate-19 (rst :: <reaction-species-tier-19>, c :: <float>) => (r :: <float>);
define method evaluate-species-rate-19 (rst :: <reaction-species-tier-19>, c :: <float>) => (r :: <float>)
  -(c ^ rst.reaction-order);
end method evaluate-species-rate-19;
