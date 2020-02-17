Module: penstock-quality
Synopsis: Multi-source water provenance tracking and blending ratios
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <source-provenance> (<object>)
  slot source-id :: <string>, required-init-keyword: source:;
  slot fraction :: <float> = 1.0;
end class <source-provenance>;


define class <source-tracer-tag-1> (<object>)
  slot tag-source-index :: <integer> = 1;
end class <source-tracer-tag-1>;

define generic compute-tag-ratio-1 (stt :: <source-tracer-tag-1>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-1 (stt :: <source-tracer-tag-1>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-1;


define class <source-tracer-tag-2> (<object>)
  slot tag-source-index :: <integer> = 2;
end class <source-tracer-tag-2>;

define generic compute-tag-ratio-2 (stt :: <source-tracer-tag-2>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-2 (stt :: <source-tracer-tag-2>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-2;


define class <source-tracer-tag-3> (<object>)
  slot tag-source-index :: <integer> = 3;
end class <source-tracer-tag-3>;

define generic compute-tag-ratio-3 (stt :: <source-tracer-tag-3>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-3 (stt :: <source-tracer-tag-3>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-3;


define class <source-tracer-tag-4> (<object>)
  slot tag-source-index :: <integer> = 4;
end class <source-tracer-tag-4>;

define generic compute-tag-ratio-4 (stt :: <source-tracer-tag-4>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-4 (stt :: <source-tracer-tag-4>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-4;


define class <source-tracer-tag-5> (<object>)
  slot tag-source-index :: <integer> = 5;
end class <source-tracer-tag-5>;

define generic compute-tag-ratio-5 (stt :: <source-tracer-tag-5>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-5 (stt :: <source-tracer-tag-5>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-5;


define class <source-tracer-tag-6> (<object>)
  slot tag-source-index :: <integer> = 6;
end class <source-tracer-tag-6>;

define generic compute-tag-ratio-6 (stt :: <source-tracer-tag-6>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-6 (stt :: <source-tracer-tag-6>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-6;


define class <source-tracer-tag-7> (<object>)
  slot tag-source-index :: <integer> = 7;
end class <source-tracer-tag-7>;

define generic compute-tag-ratio-7 (stt :: <source-tracer-tag-7>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-7 (stt :: <source-tracer-tag-7>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-7;


define class <source-tracer-tag-8> (<object>)
  slot tag-source-index :: <integer> = 8;
end class <source-tracer-tag-8>;

define generic compute-tag-ratio-8 (stt :: <source-tracer-tag-8>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-8 (stt :: <source-tracer-tag-8>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-8;


define class <source-tracer-tag-9> (<object>)
  slot tag-source-index :: <integer> = 9;
end class <source-tracer-tag-9>;

define generic compute-tag-ratio-9 (stt :: <source-tracer-tag-9>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-9 (stt :: <source-tracer-tag-9>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-9;


define class <source-tracer-tag-10> (<object>)
  slot tag-source-index :: <integer> = 10;
end class <source-tracer-tag-10>;

define generic compute-tag-ratio-10 (stt :: <source-tracer-tag-10>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-10 (stt :: <source-tracer-tag-10>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-10;


define class <source-tracer-tag-11> (<object>)
  slot tag-source-index :: <integer> = 11;
end class <source-tracer-tag-11>;

define generic compute-tag-ratio-11 (stt :: <source-tracer-tag-11>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-11 (stt :: <source-tracer-tag-11>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-11;


define class <source-tracer-tag-12> (<object>)
  slot tag-source-index :: <integer> = 12;
end class <source-tracer-tag-12>;

define generic compute-tag-ratio-12 (stt :: <source-tracer-tag-12>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-12 (stt :: <source-tracer-tag-12>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-12;


define class <source-tracer-tag-13> (<object>)
  slot tag-source-index :: <integer> = 13;
end class <source-tracer-tag-13>;

define generic compute-tag-ratio-13 (stt :: <source-tracer-tag-13>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-13 (stt :: <source-tracer-tag-13>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-13;


define class <source-tracer-tag-14> (<object>)
  slot tag-source-index :: <integer> = 14;
end class <source-tracer-tag-14>;

define generic compute-tag-ratio-14 (stt :: <source-tracer-tag-14>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-14 (stt :: <source-tracer-tag-14>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-14;


define class <source-tracer-tag-15> (<object>)
  slot tag-source-index :: <integer> = 15;
end class <source-tracer-tag-15>;

define generic compute-tag-ratio-15 (stt :: <source-tracer-tag-15>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-15 (stt :: <source-tracer-tag-15>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-15;


define class <source-tracer-tag-16> (<object>)
  slot tag-source-index :: <integer> = 16;
end class <source-tracer-tag-16>;

define generic compute-tag-ratio-16 (stt :: <source-tracer-tag-16>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-16 (stt :: <source-tracer-tag-16>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-16;


define class <source-tracer-tag-17> (<object>)
  slot tag-source-index :: <integer> = 17;
end class <source-tracer-tag-17>;

define generic compute-tag-ratio-17 (stt :: <source-tracer-tag-17>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-17 (stt :: <source-tracer-tag-17>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-17;


define class <source-tracer-tag-18> (<object>)
  slot tag-source-index :: <integer> = 18;
end class <source-tracer-tag-18>;

define generic compute-tag-ratio-18 (stt :: <source-tracer-tag-18>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-18 (stt :: <source-tracer-tag-18>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-18;


define class <source-tracer-tag-19> (<object>)
  slot tag-source-index :: <integer> = 19;
end class <source-tracer-tag-19>;

define generic compute-tag-ratio-19 (stt :: <source-tracer-tag-19>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>);
define method compute-tag-ratio-19 (stt :: <source-tracer-tag-19>, q-source :: <float>, q-total :: <float>) => (ratio :: <float>)
  if (q-total > 0.0) q-source / q-total else 0.0 end if;
end method compute-tag-ratio-19;
