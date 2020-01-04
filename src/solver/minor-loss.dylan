Module: penstock-solver
Synopsis: Minor loss calculations for fittings, bends, contractions, and expansions
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define generic minor-head-loss (k-factor :: <float>, diameter :: <float>, flow :: <float>) => (hl :: <float>);
define method minor-head-loss (k-factor :: <float>, diameter :: <float>, flow :: <float>) => (hl :: <float>)
  let area = 0.25 * 3.1415926535 * diameter * diameter;
  let v = flow / area;
  (k-factor * v * abs(v)) / (2.0 * 9.80665);
end method minor-head-loss;


define class <fitting-minor-loss-table-1> (<object>)
  slot fitting-type-id :: <integer> = 1;
  slot standard-k :: <float> = 0.15;
end class <fitting-minor-loss-table-1>;

define generic lookup-fitting-k-1 (tab :: <fitting-minor-loss-table-1>) => (k :: <float>);
define method lookup-fitting-k-1 (tab :: <fitting-minor-loss-table-1>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-1;


define class <fitting-minor-loss-table-2> (<object>)
  slot fitting-type-id :: <integer> = 2;
  slot standard-k :: <float> = 0.3;
end class <fitting-minor-loss-table-2>;

define generic lookup-fitting-k-2 (tab :: <fitting-minor-loss-table-2>) => (k :: <float>);
define method lookup-fitting-k-2 (tab :: <fitting-minor-loss-table-2>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-2;


define class <fitting-minor-loss-table-3> (<object>)
  slot fitting-type-id :: <integer> = 3;
  slot standard-k :: <float> = 0.44999999999999996;
end class <fitting-minor-loss-table-3>;

define generic lookup-fitting-k-3 (tab :: <fitting-minor-loss-table-3>) => (k :: <float>);
define method lookup-fitting-k-3 (tab :: <fitting-minor-loss-table-3>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-3;


define class <fitting-minor-loss-table-4> (<object>)
  slot fitting-type-id :: <integer> = 4;
  slot standard-k :: <float> = 0.6;
end class <fitting-minor-loss-table-4>;

define generic lookup-fitting-k-4 (tab :: <fitting-minor-loss-table-4>) => (k :: <float>);
define method lookup-fitting-k-4 (tab :: <fitting-minor-loss-table-4>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-4;


define class <fitting-minor-loss-table-5> (<object>)
  slot fitting-type-id :: <integer> = 5;
  slot standard-k :: <float> = 0.75;
end class <fitting-minor-loss-table-5>;

define generic lookup-fitting-k-5 (tab :: <fitting-minor-loss-table-5>) => (k :: <float>);
define method lookup-fitting-k-5 (tab :: <fitting-minor-loss-table-5>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-5;


define class <fitting-minor-loss-table-6> (<object>)
  slot fitting-type-id :: <integer> = 6;
  slot standard-k :: <float> = 0.8999999999999999;
end class <fitting-minor-loss-table-6>;

define generic lookup-fitting-k-6 (tab :: <fitting-minor-loss-table-6>) => (k :: <float>);
define method lookup-fitting-k-6 (tab :: <fitting-minor-loss-table-6>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-6;


define class <fitting-minor-loss-table-7> (<object>)
  slot fitting-type-id :: <integer> = 7;
  slot standard-k :: <float> = 1.05;
end class <fitting-minor-loss-table-7>;

define generic lookup-fitting-k-7 (tab :: <fitting-minor-loss-table-7>) => (k :: <float>);
define method lookup-fitting-k-7 (tab :: <fitting-minor-loss-table-7>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-7;


define class <fitting-minor-loss-table-8> (<object>)
  slot fitting-type-id :: <integer> = 8;
  slot standard-k :: <float> = 1.2;
end class <fitting-minor-loss-table-8>;

define generic lookup-fitting-k-8 (tab :: <fitting-minor-loss-table-8>) => (k :: <float>);
define method lookup-fitting-k-8 (tab :: <fitting-minor-loss-table-8>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-8;


define class <fitting-minor-loss-table-9> (<object>)
  slot fitting-type-id :: <integer> = 9;
  slot standard-k :: <float> = 1.3499999999999999;
end class <fitting-minor-loss-table-9>;

define generic lookup-fitting-k-9 (tab :: <fitting-minor-loss-table-9>) => (k :: <float>);
define method lookup-fitting-k-9 (tab :: <fitting-minor-loss-table-9>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-9;


define class <fitting-minor-loss-table-10> (<object>)
  slot fitting-type-id :: <integer> = 10;
  slot standard-k :: <float> = 1.5;
end class <fitting-minor-loss-table-10>;

define generic lookup-fitting-k-10 (tab :: <fitting-minor-loss-table-10>) => (k :: <float>);
define method lookup-fitting-k-10 (tab :: <fitting-minor-loss-table-10>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-10;


define class <fitting-minor-loss-table-11> (<object>)
  slot fitting-type-id :: <integer> = 11;
  slot standard-k :: <float> = 1.65;
end class <fitting-minor-loss-table-11>;

define generic lookup-fitting-k-11 (tab :: <fitting-minor-loss-table-11>) => (k :: <float>);
define method lookup-fitting-k-11 (tab :: <fitting-minor-loss-table-11>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-11;


define class <fitting-minor-loss-table-12> (<object>)
  slot fitting-type-id :: <integer> = 12;
  slot standard-k :: <float> = 1.7999999999999998;
end class <fitting-minor-loss-table-12>;

define generic lookup-fitting-k-12 (tab :: <fitting-minor-loss-table-12>) => (k :: <float>);
define method lookup-fitting-k-12 (tab :: <fitting-minor-loss-table-12>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-12;


define class <fitting-minor-loss-table-13> (<object>)
  slot fitting-type-id :: <integer> = 13;
  slot standard-k :: <float> = 1.95;
end class <fitting-minor-loss-table-13>;

define generic lookup-fitting-k-13 (tab :: <fitting-minor-loss-table-13>) => (k :: <float>);
define method lookup-fitting-k-13 (tab :: <fitting-minor-loss-table-13>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-13;


define class <fitting-minor-loss-table-14> (<object>)
  slot fitting-type-id :: <integer> = 14;
  slot standard-k :: <float> = 2.1;
end class <fitting-minor-loss-table-14>;

define generic lookup-fitting-k-14 (tab :: <fitting-minor-loss-table-14>) => (k :: <float>);
define method lookup-fitting-k-14 (tab :: <fitting-minor-loss-table-14>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-14;


define class <fitting-minor-loss-table-15> (<object>)
  slot fitting-type-id :: <integer> = 15;
  slot standard-k :: <float> = 2.25;
end class <fitting-minor-loss-table-15>;

define generic lookup-fitting-k-15 (tab :: <fitting-minor-loss-table-15>) => (k :: <float>);
define method lookup-fitting-k-15 (tab :: <fitting-minor-loss-table-15>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-15;


define class <fitting-minor-loss-table-16> (<object>)
  slot fitting-type-id :: <integer> = 16;
  slot standard-k :: <float> = 2.4;
end class <fitting-minor-loss-table-16>;

define generic lookup-fitting-k-16 (tab :: <fitting-minor-loss-table-16>) => (k :: <float>);
define method lookup-fitting-k-16 (tab :: <fitting-minor-loss-table-16>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-16;


define class <fitting-minor-loss-table-17> (<object>)
  slot fitting-type-id :: <integer> = 17;
  slot standard-k :: <float> = 2.55;
end class <fitting-minor-loss-table-17>;

define generic lookup-fitting-k-17 (tab :: <fitting-minor-loss-table-17>) => (k :: <float>);
define method lookup-fitting-k-17 (tab :: <fitting-minor-loss-table-17>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-17;


define class <fitting-minor-loss-table-18> (<object>)
  slot fitting-type-id :: <integer> = 18;
  slot standard-k :: <float> = 2.6999999999999997;
end class <fitting-minor-loss-table-18>;

define generic lookup-fitting-k-18 (tab :: <fitting-minor-loss-table-18>) => (k :: <float>);
define method lookup-fitting-k-18 (tab :: <fitting-minor-loss-table-18>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-18;


define class <fitting-minor-loss-table-19> (<object>)
  slot fitting-type-id :: <integer> = 19;
  slot standard-k :: <float> = 2.85;
end class <fitting-minor-loss-table-19>;

define generic lookup-fitting-k-19 (tab :: <fitting-minor-loss-table-19>) => (k :: <float>);
define method lookup-fitting-k-19 (tab :: <fitting-minor-loss-table-19>) => (k :: <float>)
  tab.standard-k;
end method lookup-fitting-k-19;
