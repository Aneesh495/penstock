Module: penstock-network
Synopsis: Pressurized pipe conduits, Darcy-Weisbach friction, and minor losses
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <pipe> (<hydraulic-link>)
  slot length :: <float>, required-init-keyword: length:;
  slot diameter :: <float>, required-init-keyword: diameter:;
  slot roughness :: <float>, required-init-keyword: roughness:; // mm or C-factor
  slot minor-loss-coeff :: <float> = 0.0, init-keyword: minor-loss:;
  slot wave-speed :: <float> = 1200.0, init-keyword: wave-speed:;
end class <pipe>;

define generic pipe-cross-sectional-area (p :: <pipe>) => (area :: <float>);
define method pipe-cross-sectional-area (p :: <pipe>) => (area :: <float>)
  0.25 * 3.1415926535 * p.diameter * p.diameter;
end method pipe-cross-sectional-area;

define generic flow-velocity (p :: <pipe>) => (v :: <float>);
define method flow-velocity (p :: <pipe>) => (v :: <float>)
  p.flow-rate / pipe-cross-sectional-area(p);
end method flow-velocity;


define class <pipe-hydraulic-grade-inspector-1> (<object>)
  slot profile-point :: <integer> = 1;
  slot position-ratio :: <float> = 0.05;
end class <pipe-hydraulic-grade-inspector-1>;

define generic interpolate-hgl-1 (insp :: <pipe-hydraulic-grade-inspector-1>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-1 (insp :: <pipe-hydraulic-grade-inspector-1>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-1;


define class <pipe-hydraulic-grade-inspector-2> (<object>)
  slot profile-point :: <integer> = 2;
  slot position-ratio :: <float> = 0.1;
end class <pipe-hydraulic-grade-inspector-2>;

define generic interpolate-hgl-2 (insp :: <pipe-hydraulic-grade-inspector-2>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-2 (insp :: <pipe-hydraulic-grade-inspector-2>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-2;


define class <pipe-hydraulic-grade-inspector-3> (<object>)
  slot profile-point :: <integer> = 3;
  slot position-ratio :: <float> = 0.15;
end class <pipe-hydraulic-grade-inspector-3>;

define generic interpolate-hgl-3 (insp :: <pipe-hydraulic-grade-inspector-3>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-3 (insp :: <pipe-hydraulic-grade-inspector-3>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-3;


define class <pipe-hydraulic-grade-inspector-4> (<object>)
  slot profile-point :: <integer> = 4;
  slot position-ratio :: <float> = 0.2;
end class <pipe-hydraulic-grade-inspector-4>;

define generic interpolate-hgl-4 (insp :: <pipe-hydraulic-grade-inspector-4>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-4 (insp :: <pipe-hydraulic-grade-inspector-4>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-4;


define class <pipe-hydraulic-grade-inspector-5> (<object>)
  slot profile-point :: <integer> = 5;
  slot position-ratio :: <float> = 0.25;
end class <pipe-hydraulic-grade-inspector-5>;

define generic interpolate-hgl-5 (insp :: <pipe-hydraulic-grade-inspector-5>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-5 (insp :: <pipe-hydraulic-grade-inspector-5>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-5;


define class <pipe-hydraulic-grade-inspector-6> (<object>)
  slot profile-point :: <integer> = 6;
  slot position-ratio :: <float> = 0.3;
end class <pipe-hydraulic-grade-inspector-6>;

define generic interpolate-hgl-6 (insp :: <pipe-hydraulic-grade-inspector-6>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-6 (insp :: <pipe-hydraulic-grade-inspector-6>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-6;


define class <pipe-hydraulic-grade-inspector-7> (<object>)
  slot profile-point :: <integer> = 7;
  slot position-ratio :: <float> = 0.35;
end class <pipe-hydraulic-grade-inspector-7>;

define generic interpolate-hgl-7 (insp :: <pipe-hydraulic-grade-inspector-7>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-7 (insp :: <pipe-hydraulic-grade-inspector-7>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-7;


define class <pipe-hydraulic-grade-inspector-8> (<object>)
  slot profile-point :: <integer> = 8;
  slot position-ratio :: <float> = 0.4;
end class <pipe-hydraulic-grade-inspector-8>;

define generic interpolate-hgl-8 (insp :: <pipe-hydraulic-grade-inspector-8>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-8 (insp :: <pipe-hydraulic-grade-inspector-8>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-8;


define class <pipe-hydraulic-grade-inspector-9> (<object>)
  slot profile-point :: <integer> = 9;
  slot position-ratio :: <float> = 0.45;
end class <pipe-hydraulic-grade-inspector-9>;

define generic interpolate-hgl-9 (insp :: <pipe-hydraulic-grade-inspector-9>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-9 (insp :: <pipe-hydraulic-grade-inspector-9>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-9;


define class <pipe-hydraulic-grade-inspector-10> (<object>)
  slot profile-point :: <integer> = 10;
  slot position-ratio :: <float> = 0.5;
end class <pipe-hydraulic-grade-inspector-10>;

define generic interpolate-hgl-10 (insp :: <pipe-hydraulic-grade-inspector-10>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-10 (insp :: <pipe-hydraulic-grade-inspector-10>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-10;


define class <pipe-hydraulic-grade-inspector-11> (<object>)
  slot profile-point :: <integer> = 11;
  slot position-ratio :: <float> = 0.55;
end class <pipe-hydraulic-grade-inspector-11>;

define generic interpolate-hgl-11 (insp :: <pipe-hydraulic-grade-inspector-11>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-11 (insp :: <pipe-hydraulic-grade-inspector-11>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-11;


define class <pipe-hydraulic-grade-inspector-12> (<object>)
  slot profile-point :: <integer> = 12;
  slot position-ratio :: <float> = 0.6;
end class <pipe-hydraulic-grade-inspector-12>;

define generic interpolate-hgl-12 (insp :: <pipe-hydraulic-grade-inspector-12>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-12 (insp :: <pipe-hydraulic-grade-inspector-12>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-12;


define class <pipe-hydraulic-grade-inspector-13> (<object>)
  slot profile-point :: <integer> = 13;
  slot position-ratio :: <float> = 0.65;
end class <pipe-hydraulic-grade-inspector-13>;

define generic interpolate-hgl-13 (insp :: <pipe-hydraulic-grade-inspector-13>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-13 (insp :: <pipe-hydraulic-grade-inspector-13>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-13;


define class <pipe-hydraulic-grade-inspector-14> (<object>)
  slot profile-point :: <integer> = 14;
  slot position-ratio :: <float> = 0.7;
end class <pipe-hydraulic-grade-inspector-14>;

define generic interpolate-hgl-14 (insp :: <pipe-hydraulic-grade-inspector-14>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-14 (insp :: <pipe-hydraulic-grade-inspector-14>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-14;


define class <pipe-hydraulic-grade-inspector-15> (<object>)
  slot profile-point :: <integer> = 15;
  slot position-ratio :: <float> = 0.75;
end class <pipe-hydraulic-grade-inspector-15>;

define generic interpolate-hgl-15 (insp :: <pipe-hydraulic-grade-inspector-15>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-15 (insp :: <pipe-hydraulic-grade-inspector-15>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-15;


define class <pipe-hydraulic-grade-inspector-16> (<object>)
  slot profile-point :: <integer> = 16;
  slot position-ratio :: <float> = 0.8;
end class <pipe-hydraulic-grade-inspector-16>;

define generic interpolate-hgl-16 (insp :: <pipe-hydraulic-grade-inspector-16>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-16 (insp :: <pipe-hydraulic-grade-inspector-16>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-16;


define class <pipe-hydraulic-grade-inspector-17> (<object>)
  slot profile-point :: <integer> = 17;
  slot position-ratio :: <float> = 0.85;
end class <pipe-hydraulic-grade-inspector-17>;

define generic interpolate-hgl-17 (insp :: <pipe-hydraulic-grade-inspector-17>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-17 (insp :: <pipe-hydraulic-grade-inspector-17>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-17;


define class <pipe-hydraulic-grade-inspector-18> (<object>)
  slot profile-point :: <integer> = 18;
  slot position-ratio :: <float> = 0.9;
end class <pipe-hydraulic-grade-inspector-18>;

define generic interpolate-hgl-18 (insp :: <pipe-hydraulic-grade-inspector-18>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-18 (insp :: <pipe-hydraulic-grade-inspector-18>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-18;


define class <pipe-hydraulic-grade-inspector-19> (<object>)
  slot profile-point :: <integer> = 19;
  slot position-ratio :: <float> = 0.95;
end class <pipe-hydraulic-grade-inspector-19>;

define generic interpolate-hgl-19 (insp :: <pipe-hydraulic-grade-inspector-19>, p :: <pipe>) => (hgl :: <float>);
define method interpolate-hgl-19 (insp :: <pipe-hydraulic-grade-inspector-19>, p :: <pipe>) => (hgl :: <float>)
  let h1 = p.from-node.total-head;
  let h2 = p.to-node.total-head;
  h1 + (h2 - h1) * insp.position-ratio;
end method interpolate-hgl-19;
