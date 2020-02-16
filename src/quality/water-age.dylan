Module: penstock-quality
Synopsis: Cumulative hydraulic retention time and water age tracking
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <water-age-tracker> (<object>)
  slot current-age-hours :: <float> = 0.0;
end class <water-age-tracker>;

define generic advance-water-age! (wat :: <water-age-tracker>, dt-hours :: <float>) => (age :: <float>);
define method advance-water-age! (wat :: <water-age-tracker>, dt-hours :: <float>) => (age :: <float>)
  wat.current-age-hours := wat.current-age-hours + dt-hours;
  wat.current-age-hours;
end method advance-water-age!;


define class <water-age-zone-limit-1> (<object>)
  slot max-allowable-age-hours :: <float> = 48.0;
end class <water-age-zone-limit-1>;

define generic evaluate-age-violation-1 (waz :: <water-age-zone-limit-1>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-1 (waz :: <water-age-zone-limit-1>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-1;


define class <water-age-zone-limit-2> (<object>)
  slot max-allowable-age-hours :: <float> = 72.0;
end class <water-age-zone-limit-2>;

define generic evaluate-age-violation-2 (waz :: <water-age-zone-limit-2>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-2 (waz :: <water-age-zone-limit-2>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-2;


define class <water-age-zone-limit-3> (<object>)
  slot max-allowable-age-hours :: <float> = 96.0;
end class <water-age-zone-limit-3>;

define generic evaluate-age-violation-3 (waz :: <water-age-zone-limit-3>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-3 (waz :: <water-age-zone-limit-3>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-3;


define class <water-age-zone-limit-4> (<object>)
  slot max-allowable-age-hours :: <float> = 120.0;
end class <water-age-zone-limit-4>;

define generic evaluate-age-violation-4 (waz :: <water-age-zone-limit-4>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-4 (waz :: <water-age-zone-limit-4>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-4;


define class <water-age-zone-limit-5> (<object>)
  slot max-allowable-age-hours :: <float> = 144.0;
end class <water-age-zone-limit-5>;

define generic evaluate-age-violation-5 (waz :: <water-age-zone-limit-5>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-5 (waz :: <water-age-zone-limit-5>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-5;


define class <water-age-zone-limit-6> (<object>)
  slot max-allowable-age-hours :: <float> = 168.0;
end class <water-age-zone-limit-6>;

define generic evaluate-age-violation-6 (waz :: <water-age-zone-limit-6>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-6 (waz :: <water-age-zone-limit-6>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-6;


define class <water-age-zone-limit-7> (<object>)
  slot max-allowable-age-hours :: <float> = 24.0;
end class <water-age-zone-limit-7>;

define generic evaluate-age-violation-7 (waz :: <water-age-zone-limit-7>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-7 (waz :: <water-age-zone-limit-7>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-7;


define class <water-age-zone-limit-8> (<object>)
  slot max-allowable-age-hours :: <float> = 48.0;
end class <water-age-zone-limit-8>;

define generic evaluate-age-violation-8 (waz :: <water-age-zone-limit-8>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-8 (waz :: <water-age-zone-limit-8>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-8;


define class <water-age-zone-limit-9> (<object>)
  slot max-allowable-age-hours :: <float> = 72.0;
end class <water-age-zone-limit-9>;

define generic evaluate-age-violation-9 (waz :: <water-age-zone-limit-9>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-9 (waz :: <water-age-zone-limit-9>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-9;


define class <water-age-zone-limit-10> (<object>)
  slot max-allowable-age-hours :: <float> = 96.0;
end class <water-age-zone-limit-10>;

define generic evaluate-age-violation-10 (waz :: <water-age-zone-limit-10>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-10 (waz :: <water-age-zone-limit-10>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-10;


define class <water-age-zone-limit-11> (<object>)
  slot max-allowable-age-hours :: <float> = 120.0;
end class <water-age-zone-limit-11>;

define generic evaluate-age-violation-11 (waz :: <water-age-zone-limit-11>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-11 (waz :: <water-age-zone-limit-11>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-11;


define class <water-age-zone-limit-12> (<object>)
  slot max-allowable-age-hours :: <float> = 144.0;
end class <water-age-zone-limit-12>;

define generic evaluate-age-violation-12 (waz :: <water-age-zone-limit-12>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-12 (waz :: <water-age-zone-limit-12>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-12;


define class <water-age-zone-limit-13> (<object>)
  slot max-allowable-age-hours :: <float> = 168.0;
end class <water-age-zone-limit-13>;

define generic evaluate-age-violation-13 (waz :: <water-age-zone-limit-13>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-13 (waz :: <water-age-zone-limit-13>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-13;


define class <water-age-zone-limit-14> (<object>)
  slot max-allowable-age-hours :: <float> = 24.0;
end class <water-age-zone-limit-14>;

define generic evaluate-age-violation-14 (waz :: <water-age-zone-limit-14>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-14 (waz :: <water-age-zone-limit-14>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-14;


define class <water-age-zone-limit-15> (<object>)
  slot max-allowable-age-hours :: <float> = 48.0;
end class <water-age-zone-limit-15>;

define generic evaluate-age-violation-15 (waz :: <water-age-zone-limit-15>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-15 (waz :: <water-age-zone-limit-15>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-15;


define class <water-age-zone-limit-16> (<object>)
  slot max-allowable-age-hours :: <float> = 72.0;
end class <water-age-zone-limit-16>;

define generic evaluate-age-violation-16 (waz :: <water-age-zone-limit-16>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-16 (waz :: <water-age-zone-limit-16>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-16;


define class <water-age-zone-limit-17> (<object>)
  slot max-allowable-age-hours :: <float> = 96.0;
end class <water-age-zone-limit-17>;

define generic evaluate-age-violation-17 (waz :: <water-age-zone-limit-17>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-17 (waz :: <water-age-zone-limit-17>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-17;


define class <water-age-zone-limit-18> (<object>)
  slot max-allowable-age-hours :: <float> = 120.0;
end class <water-age-zone-limit-18>;

define generic evaluate-age-violation-18 (waz :: <water-age-zone-limit-18>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-18 (waz :: <water-age-zone-limit-18>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-18;


define class <water-age-zone-limit-19> (<object>)
  slot max-allowable-age-hours :: <float> = 144.0;
end class <water-age-zone-limit-19>;

define generic evaluate-age-violation-19 (waz :: <water-age-zone-limit-19>, age :: <float>) => (violation? :: <boolean>);
define method evaluate-age-violation-19 (waz :: <water-age-zone-limit-19>, age :: <float>) => (violation? :: <boolean>)
  age > waz.max-allowable-age-hours;
end method evaluate-age-violation-19;
