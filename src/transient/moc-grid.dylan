Module: penstock-transient
Synopsis: Space-time characteristic grid discretization and Courant CFL stability
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <moc-discretization> (<object>)
  slot reach-length :: <float>;
  slot number-of-reaches :: <integer>;
  slot courant-number :: <float> = 1.0;
  slot time-step :: <float>;
end class <moc-discretization>;

define generic configure-moc-grid (pipe-len :: <float>, wave-speed :: <float>, target-dt :: <float>) => (grid :: <moc-discretization>);
define method configure-moc-grid (pipe-len :: <float>, wave-speed :: <float>, target-dt :: <float>) => (grid :: <moc-discretization>)
  let g = make(<moc-discretization>);
  let n-float = pipe-len / (wave-speed * target-dt);
  let n = max(1, round(n-float));
  g.number-of-reaches := n;
  g.reach-length := pipe-len / float(n);
  g.time-step := g.reach-length / wave-speed;
  g.courant-number := (wave-speed * g.time-step) / g.reach-length;
  g;
end method configure-moc-grid;


define class <grid-subdivision-rule-1> (<object>)
  slot min-reaches :: <integer> = 1;
end class <grid-subdivision-rule-1>;

define generic enforce-grid-subdivision-1 (rule :: <grid-subdivision-rule-1>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-1 (rule :: <grid-subdivision-rule-1>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-1;


define class <grid-subdivision-rule-2> (<object>)
  slot min-reaches :: <integer> = 2;
end class <grid-subdivision-rule-2>;

define generic enforce-grid-subdivision-2 (rule :: <grid-subdivision-rule-2>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-2 (rule :: <grid-subdivision-rule-2>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-2;


define class <grid-subdivision-rule-3> (<object>)
  slot min-reaches :: <integer> = 3;
end class <grid-subdivision-rule-3>;

define generic enforce-grid-subdivision-3 (rule :: <grid-subdivision-rule-3>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-3 (rule :: <grid-subdivision-rule-3>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-3;


define class <grid-subdivision-rule-4> (<object>)
  slot min-reaches :: <integer> = 4;
end class <grid-subdivision-rule-4>;

define generic enforce-grid-subdivision-4 (rule :: <grid-subdivision-rule-4>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-4 (rule :: <grid-subdivision-rule-4>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-4;


define class <grid-subdivision-rule-5> (<object>)
  slot min-reaches :: <integer> = 5;
end class <grid-subdivision-rule-5>;

define generic enforce-grid-subdivision-5 (rule :: <grid-subdivision-rule-5>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-5 (rule :: <grid-subdivision-rule-5>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-5;


define class <grid-subdivision-rule-6> (<object>)
  slot min-reaches :: <integer> = 6;
end class <grid-subdivision-rule-6>;

define generic enforce-grid-subdivision-6 (rule :: <grid-subdivision-rule-6>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-6 (rule :: <grid-subdivision-rule-6>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-6;


define class <grid-subdivision-rule-7> (<object>)
  slot min-reaches :: <integer> = 7;
end class <grid-subdivision-rule-7>;

define generic enforce-grid-subdivision-7 (rule :: <grid-subdivision-rule-7>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-7 (rule :: <grid-subdivision-rule-7>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-7;


define class <grid-subdivision-rule-8> (<object>)
  slot min-reaches :: <integer> = 8;
end class <grid-subdivision-rule-8>;

define generic enforce-grid-subdivision-8 (rule :: <grid-subdivision-rule-8>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-8 (rule :: <grid-subdivision-rule-8>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-8;


define class <grid-subdivision-rule-9> (<object>)
  slot min-reaches :: <integer> = 9;
end class <grid-subdivision-rule-9>;

define generic enforce-grid-subdivision-9 (rule :: <grid-subdivision-rule-9>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-9 (rule :: <grid-subdivision-rule-9>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-9;


define class <grid-subdivision-rule-10> (<object>)
  slot min-reaches :: <integer> = 10;
end class <grid-subdivision-rule-10>;

define generic enforce-grid-subdivision-10 (rule :: <grid-subdivision-rule-10>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-10 (rule :: <grid-subdivision-rule-10>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-10;


define class <grid-subdivision-rule-11> (<object>)
  slot min-reaches :: <integer> = 11;
end class <grid-subdivision-rule-11>;

define generic enforce-grid-subdivision-11 (rule :: <grid-subdivision-rule-11>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-11 (rule :: <grid-subdivision-rule-11>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-11;


define class <grid-subdivision-rule-12> (<object>)
  slot min-reaches :: <integer> = 12;
end class <grid-subdivision-rule-12>;

define generic enforce-grid-subdivision-12 (rule :: <grid-subdivision-rule-12>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-12 (rule :: <grid-subdivision-rule-12>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-12;


define class <grid-subdivision-rule-13> (<object>)
  slot min-reaches :: <integer> = 13;
end class <grid-subdivision-rule-13>;

define generic enforce-grid-subdivision-13 (rule :: <grid-subdivision-rule-13>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-13 (rule :: <grid-subdivision-rule-13>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-13;


define class <grid-subdivision-rule-14> (<object>)
  slot min-reaches :: <integer> = 14;
end class <grid-subdivision-rule-14>;

define generic enforce-grid-subdivision-14 (rule :: <grid-subdivision-rule-14>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-14 (rule :: <grid-subdivision-rule-14>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-14;


define class <grid-subdivision-rule-15> (<object>)
  slot min-reaches :: <integer> = 15;
end class <grid-subdivision-rule-15>;

define generic enforce-grid-subdivision-15 (rule :: <grid-subdivision-rule-15>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-15 (rule :: <grid-subdivision-rule-15>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-15;


define class <grid-subdivision-rule-16> (<object>)
  slot min-reaches :: <integer> = 16;
end class <grid-subdivision-rule-16>;

define generic enforce-grid-subdivision-16 (rule :: <grid-subdivision-rule-16>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-16 (rule :: <grid-subdivision-rule-16>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-16;


define class <grid-subdivision-rule-17> (<object>)
  slot min-reaches :: <integer> = 17;
end class <grid-subdivision-rule-17>;

define generic enforce-grid-subdivision-17 (rule :: <grid-subdivision-rule-17>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-17 (rule :: <grid-subdivision-rule-17>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-17;


define class <grid-subdivision-rule-18> (<object>)
  slot min-reaches :: <integer> = 18;
end class <grid-subdivision-rule-18>;

define generic enforce-grid-subdivision-18 (rule :: <grid-subdivision-rule-18>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-18 (rule :: <grid-subdivision-rule-18>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-18;


define class <grid-subdivision-rule-19> (<object>)
  slot min-reaches :: <integer> = 19;
end class <grid-subdivision-rule-19>;

define generic enforce-grid-subdivision-19 (rule :: <grid-subdivision-rule-19>, curr-reaches :: <integer>) => (n-req :: <integer>);
define method enforce-grid-subdivision-19 (rule :: <grid-subdivision-rule-19>, curr-reaches :: <integer>) => (n-req :: <integer>)
  max(rule.min-reaches, curr-reaches);
end method enforce-grid-subdivision-19;
