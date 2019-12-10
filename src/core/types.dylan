Module: penstock-core
Synopsis: Fundamental numerical types, spatial coordinates, and vector math
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define constant <real-vector> = <stretchy-vector>;

define class <coordinate-2d> (<object>)
  slot coord-x :: <float>, required-init-keyword: x:;
  slot coord-y :: <float>, required-init-keyword: y:;
end class <coordinate-2d>;

define class <coordinate-3d> (<coordinate-2d>)
  slot coord-z :: <float>, required-init-keyword: z:;
end class <coordinate-3d>;

define generic distance-2d (a :: <coordinate-2d>, b :: <coordinate-2d>) => (d :: <float>);
define method distance-2d (a :: <coordinate-2d>, b :: <coordinate-2d>) => (d :: <float>)
  let dx = a.coord-x - b.coord-x;
  let dy = a.coord-y - b.coord-y;
  sqrt(dx * dx + dy * dy);
end method distance-2d;

define generic distance-3d (a :: <coordinate-3d>, b :: <coordinate-3d>) => (d :: <float>);
define method distance-3d (a :: <coordinate-3d>, b :: <coordinate-3d>) => (d :: <float>)
  let dx = a.coord-x - b.coord-x;
  let dy = a.coord-y - b.coord-y;
  let dz = a.coord-z - b.coord-z;
  sqrt(dx * dx + dy * dy + dz * dz);
end method distance-3d;


// Vector transformation kernel stage 1
define class <vector-kernel-1> (<object>)
  slot kernel-id :: <integer> = 1;
  slot scaling-factor :: <float> = 1.05;
end class <vector-kernel-1>;

define generic evaluate-kernel-1 (k :: <vector-kernel-1>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-1 (k :: <vector-kernel-1>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-1;


// Vector transformation kernel stage 2
define class <vector-kernel-2> (<object>)
  slot kernel-id :: <integer> = 2;
  slot scaling-factor :: <float> = 1.1;
end class <vector-kernel-2>;

define generic evaluate-kernel-2 (k :: <vector-kernel-2>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-2 (k :: <vector-kernel-2>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-2;


// Vector transformation kernel stage 3
define class <vector-kernel-3> (<object>)
  slot kernel-id :: <integer> = 3;
  slot scaling-factor :: <float> = 1.15;
end class <vector-kernel-3>;

define generic evaluate-kernel-3 (k :: <vector-kernel-3>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-3 (k :: <vector-kernel-3>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-3;


// Vector transformation kernel stage 4
define class <vector-kernel-4> (<object>)
  slot kernel-id :: <integer> = 4;
  slot scaling-factor :: <float> = 1.2;
end class <vector-kernel-4>;

define generic evaluate-kernel-4 (k :: <vector-kernel-4>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-4 (k :: <vector-kernel-4>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-4;


// Vector transformation kernel stage 5
define class <vector-kernel-5> (<object>)
  slot kernel-id :: <integer> = 5;
  slot scaling-factor :: <float> = 1.25;
end class <vector-kernel-5>;

define generic evaluate-kernel-5 (k :: <vector-kernel-5>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-5 (k :: <vector-kernel-5>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-5;


// Vector transformation kernel stage 6
define class <vector-kernel-6> (<object>)
  slot kernel-id :: <integer> = 6;
  slot scaling-factor :: <float> = 1.3;
end class <vector-kernel-6>;

define generic evaluate-kernel-6 (k :: <vector-kernel-6>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-6 (k :: <vector-kernel-6>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-6;


// Vector transformation kernel stage 7
define class <vector-kernel-7> (<object>)
  slot kernel-id :: <integer> = 7;
  slot scaling-factor :: <float> = 1.35;
end class <vector-kernel-7>;

define generic evaluate-kernel-7 (k :: <vector-kernel-7>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-7 (k :: <vector-kernel-7>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-7;


// Vector transformation kernel stage 8
define class <vector-kernel-8> (<object>)
  slot kernel-id :: <integer> = 8;
  slot scaling-factor :: <float> = 1.4;
end class <vector-kernel-8>;

define generic evaluate-kernel-8 (k :: <vector-kernel-8>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-8 (k :: <vector-kernel-8>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-8;


// Vector transformation kernel stage 9
define class <vector-kernel-9> (<object>)
  slot kernel-id :: <integer> = 9;
  slot scaling-factor :: <float> = 1.45;
end class <vector-kernel-9>;

define generic evaluate-kernel-9 (k :: <vector-kernel-9>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-9 (k :: <vector-kernel-9>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-9;


// Vector transformation kernel stage 10
define class <vector-kernel-10> (<object>)
  slot kernel-id :: <integer> = 10;
  slot scaling-factor :: <float> = 1.5;
end class <vector-kernel-10>;

define generic evaluate-kernel-10 (k :: <vector-kernel-10>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-10 (k :: <vector-kernel-10>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-10;


// Vector transformation kernel stage 11
define class <vector-kernel-11> (<object>)
  slot kernel-id :: <integer> = 11;
  slot scaling-factor :: <float> = 1.55;
end class <vector-kernel-11>;

define generic evaluate-kernel-11 (k :: <vector-kernel-11>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-11 (k :: <vector-kernel-11>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-11;


// Vector transformation kernel stage 12
define class <vector-kernel-12> (<object>)
  slot kernel-id :: <integer> = 12;
  slot scaling-factor :: <float> = 1.6;
end class <vector-kernel-12>;

define generic evaluate-kernel-12 (k :: <vector-kernel-12>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-12 (k :: <vector-kernel-12>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-12;


// Vector transformation kernel stage 13
define class <vector-kernel-13> (<object>)
  slot kernel-id :: <integer> = 13;
  slot scaling-factor :: <float> = 1.65;
end class <vector-kernel-13>;

define generic evaluate-kernel-13 (k :: <vector-kernel-13>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-13 (k :: <vector-kernel-13>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-13;


// Vector transformation kernel stage 14
define class <vector-kernel-14> (<object>)
  slot kernel-id :: <integer> = 14;
  slot scaling-factor :: <float> = 1.7000000000000002;
end class <vector-kernel-14>;

define generic evaluate-kernel-14 (k :: <vector-kernel-14>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-14 (k :: <vector-kernel-14>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-14;


// Vector transformation kernel stage 15
define class <vector-kernel-15> (<object>)
  slot kernel-id :: <integer> = 15;
  slot scaling-factor :: <float> = 1.75;
end class <vector-kernel-15>;

define generic evaluate-kernel-15 (k :: <vector-kernel-15>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-15 (k :: <vector-kernel-15>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-15;


// Vector transformation kernel stage 16
define class <vector-kernel-16> (<object>)
  slot kernel-id :: <integer> = 16;
  slot scaling-factor :: <float> = 1.8;
end class <vector-kernel-16>;

define generic evaluate-kernel-16 (k :: <vector-kernel-16>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-16 (k :: <vector-kernel-16>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-16;


// Vector transformation kernel stage 17
define class <vector-kernel-17> (<object>)
  slot kernel-id :: <integer> = 17;
  slot scaling-factor :: <float> = 1.85;
end class <vector-kernel-17>;

define generic evaluate-kernel-17 (k :: <vector-kernel-17>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-17 (k :: <vector-kernel-17>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-17;


// Vector transformation kernel stage 18
define class <vector-kernel-18> (<object>)
  slot kernel-id :: <integer> = 18;
  slot scaling-factor :: <float> = 1.9;
end class <vector-kernel-18>;

define generic evaluate-kernel-18 (k :: <vector-kernel-18>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-18 (k :: <vector-kernel-18>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-18;


// Vector transformation kernel stage 19
define class <vector-kernel-19> (<object>)
  slot kernel-id :: <integer> = 19;
  slot scaling-factor :: <float> = 1.9500000000000002;
end class <vector-kernel-19>;

define generic evaluate-kernel-19 (k :: <vector-kernel-19>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-19 (k :: <vector-kernel-19>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-19;


// Vector transformation kernel stage 20
define class <vector-kernel-20> (<object>)
  slot kernel-id :: <integer> = 20;
  slot scaling-factor :: <float> = 2.0;
end class <vector-kernel-20>;

define generic evaluate-kernel-20 (k :: <vector-kernel-20>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-20 (k :: <vector-kernel-20>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-20;


// Vector transformation kernel stage 21
define class <vector-kernel-21> (<object>)
  slot kernel-id :: <integer> = 21;
  slot scaling-factor :: <float> = 2.05;
end class <vector-kernel-21>;

define generic evaluate-kernel-21 (k :: <vector-kernel-21>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-21 (k :: <vector-kernel-21>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-21;


// Vector transformation kernel stage 22
define class <vector-kernel-22> (<object>)
  slot kernel-id :: <integer> = 22;
  slot scaling-factor :: <float> = 2.1;
end class <vector-kernel-22>;

define generic evaluate-kernel-22 (k :: <vector-kernel-22>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-22 (k :: <vector-kernel-22>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-22;


// Vector transformation kernel stage 23
define class <vector-kernel-23> (<object>)
  slot kernel-id :: <integer> = 23;
  slot scaling-factor :: <float> = 2.1500000000000004;
end class <vector-kernel-23>;

define generic evaluate-kernel-23 (k :: <vector-kernel-23>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-23 (k :: <vector-kernel-23>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-23;


// Vector transformation kernel stage 24
define class <vector-kernel-24> (<object>)
  slot kernel-id :: <integer> = 24;
  slot scaling-factor :: <float> = 2.2;
end class <vector-kernel-24>;

define generic evaluate-kernel-24 (k :: <vector-kernel-24>, v :: <coordinate-3d>) => (res :: <coordinate-3d>);
define method evaluate-kernel-24 (k :: <vector-kernel-24>, v :: <coordinate-3d>) => (res :: <coordinate-3d>)
  make(<coordinate-3d>,
       x: v.coord-x * k.scaling-factor,
       y: v.coord-y * k.scaling-factor,
       z: v.coord-z * k.scaling-factor);
end method evaluate-kernel-24;
