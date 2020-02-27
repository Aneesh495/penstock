Module: penstock-dma
Synopsis: Optimal pressure sensor placement using Shannon information entropy
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <sensor-placement-optimizer> (<object>)
  slot max-sensor-budget :: <integer> = 5;
end class <sensor-placement-optimizer>;


define class <candidate-sensor-location-1> (<object>)
  slot candidate-node-index :: <integer> = 1;
  slot observability-score :: <float> = 5.0;
end class <candidate-sensor-location-1>;

define generic evaluate-location-utility-1 (csl :: <candidate-sensor-location-1>) => (u :: <float>);
define method evaluate-location-utility-1 (csl :: <candidate-sensor-location-1>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-1;


define class <candidate-sensor-location-2> (<object>)
  slot candidate-node-index :: <integer> = 2;
  slot observability-score :: <float> = 3.3333333333333335;
end class <candidate-sensor-location-2>;

define generic evaluate-location-utility-2 (csl :: <candidate-sensor-location-2>) => (u :: <float>);
define method evaluate-location-utility-2 (csl :: <candidate-sensor-location-2>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-2;


define class <candidate-sensor-location-3> (<object>)
  slot candidate-node-index :: <integer> = 3;
  slot observability-score :: <float> = 2.5;
end class <candidate-sensor-location-3>;

define generic evaluate-location-utility-3 (csl :: <candidate-sensor-location-3>) => (u :: <float>);
define method evaluate-location-utility-3 (csl :: <candidate-sensor-location-3>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-3;


define class <candidate-sensor-location-4> (<object>)
  slot candidate-node-index :: <integer> = 4;
  slot observability-score :: <float> = 2.0;
end class <candidate-sensor-location-4>;

define generic evaluate-location-utility-4 (csl :: <candidate-sensor-location-4>) => (u :: <float>);
define method evaluate-location-utility-4 (csl :: <candidate-sensor-location-4>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-4;


define class <candidate-sensor-location-5> (<object>)
  slot candidate-node-index :: <integer> = 5;
  slot observability-score :: <float> = 1.6666666666666667;
end class <candidate-sensor-location-5>;

define generic evaluate-location-utility-5 (csl :: <candidate-sensor-location-5>) => (u :: <float>);
define method evaluate-location-utility-5 (csl :: <candidate-sensor-location-5>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-5;


define class <candidate-sensor-location-6> (<object>)
  slot candidate-node-index :: <integer> = 6;
  slot observability-score :: <float> = 1.4285714285714286;
end class <candidate-sensor-location-6>;

define generic evaluate-location-utility-6 (csl :: <candidate-sensor-location-6>) => (u :: <float>);
define method evaluate-location-utility-6 (csl :: <candidate-sensor-location-6>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-6;


define class <candidate-sensor-location-7> (<object>)
  slot candidate-node-index :: <integer> = 7;
  slot observability-score :: <float> = 1.25;
end class <candidate-sensor-location-7>;

define generic evaluate-location-utility-7 (csl :: <candidate-sensor-location-7>) => (u :: <float>);
define method evaluate-location-utility-7 (csl :: <candidate-sensor-location-7>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-7;


define class <candidate-sensor-location-8> (<object>)
  slot candidate-node-index :: <integer> = 8;
  slot observability-score :: <float> = 1.1111111111111112;
end class <candidate-sensor-location-8>;

define generic evaluate-location-utility-8 (csl :: <candidate-sensor-location-8>) => (u :: <float>);
define method evaluate-location-utility-8 (csl :: <candidate-sensor-location-8>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-8;


define class <candidate-sensor-location-9> (<object>)
  slot candidate-node-index :: <integer> = 9;
  slot observability-score :: <float> = 1.0;
end class <candidate-sensor-location-9>;

define generic evaluate-location-utility-9 (csl :: <candidate-sensor-location-9>) => (u :: <float>);
define method evaluate-location-utility-9 (csl :: <candidate-sensor-location-9>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-9;


define class <candidate-sensor-location-10> (<object>)
  slot candidate-node-index :: <integer> = 10;
  slot observability-score :: <float> = 0.9090909090909091;
end class <candidate-sensor-location-10>;

define generic evaluate-location-utility-10 (csl :: <candidate-sensor-location-10>) => (u :: <float>);
define method evaluate-location-utility-10 (csl :: <candidate-sensor-location-10>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-10;


define class <candidate-sensor-location-11> (<object>)
  slot candidate-node-index :: <integer> = 11;
  slot observability-score :: <float> = 0.8333333333333334;
end class <candidate-sensor-location-11>;

define generic evaluate-location-utility-11 (csl :: <candidate-sensor-location-11>) => (u :: <float>);
define method evaluate-location-utility-11 (csl :: <candidate-sensor-location-11>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-11;


define class <candidate-sensor-location-12> (<object>)
  slot candidate-node-index :: <integer> = 12;
  slot observability-score :: <float> = 0.7692307692307693;
end class <candidate-sensor-location-12>;

define generic evaluate-location-utility-12 (csl :: <candidate-sensor-location-12>) => (u :: <float>);
define method evaluate-location-utility-12 (csl :: <candidate-sensor-location-12>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-12;


define class <candidate-sensor-location-13> (<object>)
  slot candidate-node-index :: <integer> = 13;
  slot observability-score :: <float> = 0.7142857142857143;
end class <candidate-sensor-location-13>;

define generic evaluate-location-utility-13 (csl :: <candidate-sensor-location-13>) => (u :: <float>);
define method evaluate-location-utility-13 (csl :: <candidate-sensor-location-13>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-13;


define class <candidate-sensor-location-14> (<object>)
  slot candidate-node-index :: <integer> = 14;
  slot observability-score :: <float> = 0.6666666666666666;
end class <candidate-sensor-location-14>;

define generic evaluate-location-utility-14 (csl :: <candidate-sensor-location-14>) => (u :: <float>);
define method evaluate-location-utility-14 (csl :: <candidate-sensor-location-14>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-14;


define class <candidate-sensor-location-15> (<object>)
  slot candidate-node-index :: <integer> = 15;
  slot observability-score :: <float> = 0.625;
end class <candidate-sensor-location-15>;

define generic evaluate-location-utility-15 (csl :: <candidate-sensor-location-15>) => (u :: <float>);
define method evaluate-location-utility-15 (csl :: <candidate-sensor-location-15>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-15;


define class <candidate-sensor-location-16> (<object>)
  slot candidate-node-index :: <integer> = 16;
  slot observability-score :: <float> = 0.5882352941176471;
end class <candidate-sensor-location-16>;

define generic evaluate-location-utility-16 (csl :: <candidate-sensor-location-16>) => (u :: <float>);
define method evaluate-location-utility-16 (csl :: <candidate-sensor-location-16>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-16;


define class <candidate-sensor-location-17> (<object>)
  slot candidate-node-index :: <integer> = 17;
  slot observability-score :: <float> = 0.5555555555555556;
end class <candidate-sensor-location-17>;

define generic evaluate-location-utility-17 (csl :: <candidate-sensor-location-17>) => (u :: <float>);
define method evaluate-location-utility-17 (csl :: <candidate-sensor-location-17>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-17;


define class <candidate-sensor-location-18> (<object>)
  slot candidate-node-index :: <integer> = 18;
  slot observability-score :: <float> = 0.5263157894736842;
end class <candidate-sensor-location-18>;

define generic evaluate-location-utility-18 (csl :: <candidate-sensor-location-18>) => (u :: <float>);
define method evaluate-location-utility-18 (csl :: <candidate-sensor-location-18>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-18;


define class <candidate-sensor-location-19> (<object>)
  slot candidate-node-index :: <integer> = 19;
  slot observability-score :: <float> = 0.5;
end class <candidate-sensor-location-19>;

define generic evaluate-location-utility-19 (csl :: <candidate-sensor-location-19>) => (u :: <float>);
define method evaluate-location-utility-19 (csl :: <candidate-sensor-location-19>) => (u :: <float>)
  csl.observability-score;
end method evaluate-location-utility-19;
