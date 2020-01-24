Module: penstock-transient
Synopsis: Transient boundary conditions: reservoirs, dead ends, multi-pipe junctions, and orifices
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define generic solve-reservoir-boundary (res-head :: <float>, cm :: <float>, b-impedance :: <float>) => (h :: <float>, q :: <float>);
define method solve-reservoir-boundary (res-head :: <float>, cm :: <float>, b-impedance :: <float>) => (h :: <float>, q :: <float>)
  let h = res-head;
  let q = (res-head - cm) / b-impedance;
  values(h, q);
end method solve-reservoir-boundary;

define generic solve-dead-end-boundary (cp :: <float>) => (h :: <float>, q :: <float>);
define method solve-dead-end-boundary (cp :: <float>) => (h :: <float>, q :: <float>)
  let q = 0.0;
  let h = cp;
  values(h, q);
end method solve-dead-end-boundary;


define class <multi-pipe-junction-boundary-1> (<object>)
  slot connected-pipe-count :: <integer> = 3;
end class <multi-pipe-junction-boundary-1>;

define generic compute-junction-common-head-1 (junc :: <multi-pipe-junction-boundary-1>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-1 (junc :: <multi-pipe-junction-boundary-1>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-1;


define class <multi-pipe-junction-boundary-2> (<object>)
  slot connected-pipe-count :: <integer> = 4;
end class <multi-pipe-junction-boundary-2>;

define generic compute-junction-common-head-2 (junc :: <multi-pipe-junction-boundary-2>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-2 (junc :: <multi-pipe-junction-boundary-2>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-2;


define class <multi-pipe-junction-boundary-3> (<object>)
  slot connected-pipe-count :: <integer> = 5;
end class <multi-pipe-junction-boundary-3>;

define generic compute-junction-common-head-3 (junc :: <multi-pipe-junction-boundary-3>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-3 (junc :: <multi-pipe-junction-boundary-3>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-3;


define class <multi-pipe-junction-boundary-4> (<object>)
  slot connected-pipe-count :: <integer> = 6;
end class <multi-pipe-junction-boundary-4>;

define generic compute-junction-common-head-4 (junc :: <multi-pipe-junction-boundary-4>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-4 (junc :: <multi-pipe-junction-boundary-4>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-4;


define class <multi-pipe-junction-boundary-5> (<object>)
  slot connected-pipe-count :: <integer> = 7;
end class <multi-pipe-junction-boundary-5>;

define generic compute-junction-common-head-5 (junc :: <multi-pipe-junction-boundary-5>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-5 (junc :: <multi-pipe-junction-boundary-5>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-5;


define class <multi-pipe-junction-boundary-6> (<object>)
  slot connected-pipe-count :: <integer> = 2;
end class <multi-pipe-junction-boundary-6>;

define generic compute-junction-common-head-6 (junc :: <multi-pipe-junction-boundary-6>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-6 (junc :: <multi-pipe-junction-boundary-6>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-6;


define class <multi-pipe-junction-boundary-7> (<object>)
  slot connected-pipe-count :: <integer> = 3;
end class <multi-pipe-junction-boundary-7>;

define generic compute-junction-common-head-7 (junc :: <multi-pipe-junction-boundary-7>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-7 (junc :: <multi-pipe-junction-boundary-7>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-7;


define class <multi-pipe-junction-boundary-8> (<object>)
  slot connected-pipe-count :: <integer> = 4;
end class <multi-pipe-junction-boundary-8>;

define generic compute-junction-common-head-8 (junc :: <multi-pipe-junction-boundary-8>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-8 (junc :: <multi-pipe-junction-boundary-8>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-8;


define class <multi-pipe-junction-boundary-9> (<object>)
  slot connected-pipe-count :: <integer> = 5;
end class <multi-pipe-junction-boundary-9>;

define generic compute-junction-common-head-9 (junc :: <multi-pipe-junction-boundary-9>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-9 (junc :: <multi-pipe-junction-boundary-9>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-9;


define class <multi-pipe-junction-boundary-10> (<object>)
  slot connected-pipe-count :: <integer> = 6;
end class <multi-pipe-junction-boundary-10>;

define generic compute-junction-common-head-10 (junc :: <multi-pipe-junction-boundary-10>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-10 (junc :: <multi-pipe-junction-boundary-10>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-10;


define class <multi-pipe-junction-boundary-11> (<object>)
  slot connected-pipe-count :: <integer> = 7;
end class <multi-pipe-junction-boundary-11>;

define generic compute-junction-common-head-11 (junc :: <multi-pipe-junction-boundary-11>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-11 (junc :: <multi-pipe-junction-boundary-11>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-11;


define class <multi-pipe-junction-boundary-12> (<object>)
  slot connected-pipe-count :: <integer> = 2;
end class <multi-pipe-junction-boundary-12>;

define generic compute-junction-common-head-12 (junc :: <multi-pipe-junction-boundary-12>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-12 (junc :: <multi-pipe-junction-boundary-12>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-12;


define class <multi-pipe-junction-boundary-13> (<object>)
  slot connected-pipe-count :: <integer> = 3;
end class <multi-pipe-junction-boundary-13>;

define generic compute-junction-common-head-13 (junc :: <multi-pipe-junction-boundary-13>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-13 (junc :: <multi-pipe-junction-boundary-13>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-13;


define class <multi-pipe-junction-boundary-14> (<object>)
  slot connected-pipe-count :: <integer> = 4;
end class <multi-pipe-junction-boundary-14>;

define generic compute-junction-common-head-14 (junc :: <multi-pipe-junction-boundary-14>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-14 (junc :: <multi-pipe-junction-boundary-14>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-14;


define class <multi-pipe-junction-boundary-15> (<object>)
  slot connected-pipe-count :: <integer> = 5;
end class <multi-pipe-junction-boundary-15>;

define generic compute-junction-common-head-15 (junc :: <multi-pipe-junction-boundary-15>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-15 (junc :: <multi-pipe-junction-boundary-15>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-15;


define class <multi-pipe-junction-boundary-16> (<object>)
  slot connected-pipe-count :: <integer> = 6;
end class <multi-pipe-junction-boundary-16>;

define generic compute-junction-common-head-16 (junc :: <multi-pipe-junction-boundary-16>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-16 (junc :: <multi-pipe-junction-boundary-16>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-16;


define class <multi-pipe-junction-boundary-17> (<object>)
  slot connected-pipe-count :: <integer> = 7;
end class <multi-pipe-junction-boundary-17>;

define generic compute-junction-common-head-17 (junc :: <multi-pipe-junction-boundary-17>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-17 (junc :: <multi-pipe-junction-boundary-17>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-17;


define class <multi-pipe-junction-boundary-18> (<object>)
  slot connected-pipe-count :: <integer> = 2;
end class <multi-pipe-junction-boundary-18>;

define generic compute-junction-common-head-18 (junc :: <multi-pipe-junction-boundary-18>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-18 (junc :: <multi-pipe-junction-boundary-18>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-18;


define class <multi-pipe-junction-boundary-19> (<object>)
  slot connected-pipe-count :: <integer> = 3;
end class <multi-pipe-junction-boundary-19>;

define generic compute-junction-common-head-19 (junc :: <multi-pipe-junction-boundary-19>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>);
define method compute-junction-common-head-19 (junc :: <multi-pipe-junction-boundary-19>, cp-sum :: <float>, inv-b-sum :: <float>) => (h :: <float>)
  cp-sum / max(1e-9, inv-b-sum);
end method compute-junction-common-head-19;
