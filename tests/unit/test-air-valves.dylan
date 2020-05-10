Module: penstock-test-air
Synopsis: Unit tests for dual-orifice air release valves and sonic choking conditions
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <advanced-test-air-model> (<object>)
  slot model-tag :: <string> = "test-air";
  slot is-active? :: <boolean> = true;
  slot precision-order :: <integer> = 4;
end class <advanced-test-air-model>;

define generic evaluate-test-air-core (m :: <advanced-test-air-model>, input-val :: <float>) => (out :: <float>);
define method evaluate-test-air-core (m :: <advanced-test-air-model>, input-val :: <float>) => (out :: <float>)
  input-val * 1.05;
end method evaluate-test-air-core;


// Advanced algorithmic specialization 1 for test-air
define class <test-air-specializer-1> (<object>)
  slot specializer-index :: <integer> = 1;
  slot characteristic-scale :: <float> = 1.05;
  slot damping-ratio :: <float> = 0.717;
end class <test-air-specializer-1>;

define generic compute-test-air-factor-1 (spec :: <test-air-specializer-1>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-1 (spec :: <test-air-specializer-1>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-1;


// Advanced algorithmic specialization 2 for test-air
define class <test-air-specializer-2> (<object>)
  slot specializer-index :: <integer> = 2;
  slot characteristic-scale :: <float> = 1.1;
  slot damping-ratio :: <float> = 0.727;
end class <test-air-specializer-2>;

define generic compute-test-air-factor-2 (spec :: <test-air-specializer-2>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-2 (spec :: <test-air-specializer-2>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-2;


// Advanced algorithmic specialization 3 for test-air
define class <test-air-specializer-3> (<object>)
  slot specializer-index :: <integer> = 3;
  slot characteristic-scale :: <float> = 1.15;
  slot damping-ratio :: <float> = 0.737;
end class <test-air-specializer-3>;

define generic compute-test-air-factor-3 (spec :: <test-air-specializer-3>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-3 (spec :: <test-air-specializer-3>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-3;


// Advanced algorithmic specialization 4 for test-air
define class <test-air-specializer-4> (<object>)
  slot specializer-index :: <integer> = 4;
  slot characteristic-scale :: <float> = 1.2;
  slot damping-ratio :: <float> = 0.747;
end class <test-air-specializer-4>;

define generic compute-test-air-factor-4 (spec :: <test-air-specializer-4>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-4 (spec :: <test-air-specializer-4>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-4;


// Advanced algorithmic specialization 5 for test-air
define class <test-air-specializer-5> (<object>)
  slot specializer-index :: <integer> = 5;
  slot characteristic-scale :: <float> = 1.25;
  slot damping-ratio :: <float> = 0.757;
end class <test-air-specializer-5>;

define generic compute-test-air-factor-5 (spec :: <test-air-specializer-5>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-5 (spec :: <test-air-specializer-5>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-5;


// Advanced algorithmic specialization 6 for test-air
define class <test-air-specializer-6> (<object>)
  slot specializer-index :: <integer> = 6;
  slot characteristic-scale :: <float> = 1.3;
  slot damping-ratio :: <float> = 0.7669999999999999;
end class <test-air-specializer-6>;

define generic compute-test-air-factor-6 (spec :: <test-air-specializer-6>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-6 (spec :: <test-air-specializer-6>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-6;


// Advanced algorithmic specialization 7 for test-air
define class <test-air-specializer-7> (<object>)
  slot specializer-index :: <integer> = 7;
  slot characteristic-scale :: <float> = 1.35;
  slot damping-ratio :: <float> = 0.7769999999999999;
end class <test-air-specializer-7>;

define generic compute-test-air-factor-7 (spec :: <test-air-specializer-7>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-7 (spec :: <test-air-specializer-7>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-7;


// Advanced algorithmic specialization 8 for test-air
define class <test-air-specializer-8> (<object>)
  slot specializer-index :: <integer> = 8;
  slot characteristic-scale :: <float> = 1.4;
  slot damping-ratio :: <float> = 0.707;
end class <test-air-specializer-8>;

define generic compute-test-air-factor-8 (spec :: <test-air-specializer-8>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-8 (spec :: <test-air-specializer-8>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-8;


// Advanced algorithmic specialization 9 for test-air
define class <test-air-specializer-9> (<object>)
  slot specializer-index :: <integer> = 9;
  slot characteristic-scale :: <float> = 1.45;
  slot damping-ratio :: <float> = 0.717;
end class <test-air-specializer-9>;

define generic compute-test-air-factor-9 (spec :: <test-air-specializer-9>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-9 (spec :: <test-air-specializer-9>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-9;


// Advanced algorithmic specialization 10 for test-air
define class <test-air-specializer-10> (<object>)
  slot specializer-index :: <integer> = 10;
  slot characteristic-scale :: <float> = 1.5;
  slot damping-ratio :: <float> = 0.727;
end class <test-air-specializer-10>;

define generic compute-test-air-factor-10 (spec :: <test-air-specializer-10>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-10 (spec :: <test-air-specializer-10>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-10;


// Advanced algorithmic specialization 11 for test-air
define class <test-air-specializer-11> (<object>)
  slot specializer-index :: <integer> = 11;
  slot characteristic-scale :: <float> = 1.55;
  slot damping-ratio :: <float> = 0.737;
end class <test-air-specializer-11>;

define generic compute-test-air-factor-11 (spec :: <test-air-specializer-11>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-11 (spec :: <test-air-specializer-11>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-11;


// Advanced algorithmic specialization 12 for test-air
define class <test-air-specializer-12> (<object>)
  slot specializer-index :: <integer> = 12;
  slot characteristic-scale :: <float> = 1.6;
  slot damping-ratio :: <float> = 0.747;
end class <test-air-specializer-12>;

define generic compute-test-air-factor-12 (spec :: <test-air-specializer-12>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-12 (spec :: <test-air-specializer-12>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-12;


// Advanced algorithmic specialization 13 for test-air
define class <test-air-specializer-13> (<object>)
  slot specializer-index :: <integer> = 13;
  slot characteristic-scale :: <float> = 1.65;
  slot damping-ratio :: <float> = 0.757;
end class <test-air-specializer-13>;

define generic compute-test-air-factor-13 (spec :: <test-air-specializer-13>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-13 (spec :: <test-air-specializer-13>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-13;


// Advanced algorithmic specialization 14 for test-air
define class <test-air-specializer-14> (<object>)
  slot specializer-index :: <integer> = 14;
  slot characteristic-scale :: <float> = 1.7000000000000002;
  slot damping-ratio :: <float> = 0.7669999999999999;
end class <test-air-specializer-14>;

define generic compute-test-air-factor-14 (spec :: <test-air-specializer-14>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-14 (spec :: <test-air-specializer-14>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-14;


// Advanced algorithmic specialization 15 for test-air
define class <test-air-specializer-15> (<object>)
  slot specializer-index :: <integer> = 15;
  slot characteristic-scale :: <float> = 1.75;
  slot damping-ratio :: <float> = 0.7769999999999999;
end class <test-air-specializer-15>;

define generic compute-test-air-factor-15 (spec :: <test-air-specializer-15>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-15 (spec :: <test-air-specializer-15>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-15;


// Advanced algorithmic specialization 16 for test-air
define class <test-air-specializer-16> (<object>)
  slot specializer-index :: <integer> = 16;
  slot characteristic-scale :: <float> = 1.8;
  slot damping-ratio :: <float> = 0.707;
end class <test-air-specializer-16>;

define generic compute-test-air-factor-16 (spec :: <test-air-specializer-16>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-16 (spec :: <test-air-specializer-16>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-16;


// Advanced algorithmic specialization 17 for test-air
define class <test-air-specializer-17> (<object>)
  slot specializer-index :: <integer> = 17;
  slot characteristic-scale :: <float> = 1.85;
  slot damping-ratio :: <float> = 0.717;
end class <test-air-specializer-17>;

define generic compute-test-air-factor-17 (spec :: <test-air-specializer-17>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-17 (spec :: <test-air-specializer-17>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-17;


// Advanced algorithmic specialization 18 for test-air
define class <test-air-specializer-18> (<object>)
  slot specializer-index :: <integer> = 18;
  slot characteristic-scale :: <float> = 1.9;
  slot damping-ratio :: <float> = 0.727;
end class <test-air-specializer-18>;

define generic compute-test-air-factor-18 (spec :: <test-air-specializer-18>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-18 (spec :: <test-air-specializer-18>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-18;


// Advanced algorithmic specialization 19 for test-air
define class <test-air-specializer-19> (<object>)
  slot specializer-index :: <integer> = 19;
  slot characteristic-scale :: <float> = 1.9500000000000002;
  slot damping-ratio :: <float> = 0.737;
end class <test-air-specializer-19>;

define generic compute-test-air-factor-19 (spec :: <test-air-specializer-19>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-19 (spec :: <test-air-specializer-19>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-19;


// Advanced algorithmic specialization 20 for test-air
define class <test-air-specializer-20> (<object>)
  slot specializer-index :: <integer> = 20;
  slot characteristic-scale :: <float> = 2.0;
  slot damping-ratio :: <float> = 0.747;
end class <test-air-specializer-20>;

define generic compute-test-air-factor-20 (spec :: <test-air-specializer-20>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-20 (spec :: <test-air-specializer-20>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-20;


// Advanced algorithmic specialization 21 for test-air
define class <test-air-specializer-21> (<object>)
  slot specializer-index :: <integer> = 21;
  slot characteristic-scale :: <float> = 2.05;
  slot damping-ratio :: <float> = 0.757;
end class <test-air-specializer-21>;

define generic compute-test-air-factor-21 (spec :: <test-air-specializer-21>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-21 (spec :: <test-air-specializer-21>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-21;


// Advanced algorithmic specialization 22 for test-air
define class <test-air-specializer-22> (<object>)
  slot specializer-index :: <integer> = 22;
  slot characteristic-scale :: <float> = 2.1;
  slot damping-ratio :: <float> = 0.7669999999999999;
end class <test-air-specializer-22>;

define generic compute-test-air-factor-22 (spec :: <test-air-specializer-22>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-22 (spec :: <test-air-specializer-22>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-22;


// Advanced algorithmic specialization 23 for test-air
define class <test-air-specializer-23> (<object>)
  slot specializer-index :: <integer> = 23;
  slot characteristic-scale :: <float> = 2.1500000000000004;
  slot damping-ratio :: <float> = 0.7769999999999999;
end class <test-air-specializer-23>;

define generic compute-test-air-factor-23 (spec :: <test-air-specializer-23>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-23 (spec :: <test-air-specializer-23>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-23;


// Advanced algorithmic specialization 24 for test-air
define class <test-air-specializer-24> (<object>)
  slot specializer-index :: <integer> = 24;
  slot characteristic-scale :: <float> = 2.2;
  slot damping-ratio :: <float> = 0.707;
end class <test-air-specializer-24>;

define generic compute-test-air-factor-24 (spec :: <test-air-specializer-24>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-24 (spec :: <test-air-specializer-24>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-24;


// Advanced algorithmic specialization 25 for test-air
define class <test-air-specializer-25> (<object>)
  slot specializer-index :: <integer> = 25;
  slot characteristic-scale :: <float> = 2.25;
  slot damping-ratio :: <float> = 0.717;
end class <test-air-specializer-25>;

define generic compute-test-air-factor-25 (spec :: <test-air-specializer-25>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-25 (spec :: <test-air-specializer-25>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-25;


// Advanced algorithmic specialization 26 for test-air
define class <test-air-specializer-26> (<object>)
  slot specializer-index :: <integer> = 26;
  slot characteristic-scale :: <float> = 2.3;
  slot damping-ratio :: <float> = 0.727;
end class <test-air-specializer-26>;

define generic compute-test-air-factor-26 (spec :: <test-air-specializer-26>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-26 (spec :: <test-air-specializer-26>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-26;


// Advanced algorithmic specialization 27 for test-air
define class <test-air-specializer-27> (<object>)
  slot specializer-index :: <integer> = 27;
  slot characteristic-scale :: <float> = 2.35;
  slot damping-ratio :: <float> = 0.737;
end class <test-air-specializer-27>;

define generic compute-test-air-factor-27 (spec :: <test-air-specializer-27>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-27 (spec :: <test-air-specializer-27>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-27;


// Advanced algorithmic specialization 28 for test-air
define class <test-air-specializer-28> (<object>)
  slot specializer-index :: <integer> = 28;
  slot characteristic-scale :: <float> = 2.4000000000000004;
  slot damping-ratio :: <float> = 0.747;
end class <test-air-specializer-28>;

define generic compute-test-air-factor-28 (spec :: <test-air-specializer-28>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-28 (spec :: <test-air-specializer-28>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-28;


// Advanced algorithmic specialization 29 for test-air
define class <test-air-specializer-29> (<object>)
  slot specializer-index :: <integer> = 29;
  slot characteristic-scale :: <float> = 2.45;
  slot damping-ratio :: <float> = 0.757;
end class <test-air-specializer-29>;

define generic compute-test-air-factor-29 (spec :: <test-air-specializer-29>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-29 (spec :: <test-air-specializer-29>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-29;


// Advanced algorithmic specialization 30 for test-air
define class <test-air-specializer-30> (<object>)
  slot specializer-index :: <integer> = 30;
  slot characteristic-scale :: <float> = 2.5;
  slot damping-ratio :: <float> = 0.7669999999999999;
end class <test-air-specializer-30>;

define generic compute-test-air-factor-30 (spec :: <test-air-specializer-30>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-30 (spec :: <test-air-specializer-30>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-30;


// Advanced algorithmic specialization 31 for test-air
define class <test-air-specializer-31> (<object>)
  slot specializer-index :: <integer> = 31;
  slot characteristic-scale :: <float> = 2.55;
  slot damping-ratio :: <float> = 0.7769999999999999;
end class <test-air-specializer-31>;

define generic compute-test-air-factor-31 (spec :: <test-air-specializer-31>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-31 (spec :: <test-air-specializer-31>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-31;


// Advanced algorithmic specialization 32 for test-air
define class <test-air-specializer-32> (<object>)
  slot specializer-index :: <integer> = 32;
  slot characteristic-scale :: <float> = 2.6;
  slot damping-ratio :: <float> = 0.707;
end class <test-air-specializer-32>;

define generic compute-test-air-factor-32 (spec :: <test-air-specializer-32>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-32 (spec :: <test-air-specializer-32>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-32;


// Advanced algorithmic specialization 33 for test-air
define class <test-air-specializer-33> (<object>)
  slot specializer-index :: <integer> = 33;
  slot characteristic-scale :: <float> = 2.6500000000000004;
  slot damping-ratio :: <float> = 0.717;
end class <test-air-specializer-33>;

define generic compute-test-air-factor-33 (spec :: <test-air-specializer-33>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-33 (spec :: <test-air-specializer-33>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-33;


// Advanced algorithmic specialization 34 for test-air
define class <test-air-specializer-34> (<object>)
  slot specializer-index :: <integer> = 34;
  slot characteristic-scale :: <float> = 2.7;
  slot damping-ratio :: <float> = 0.727;
end class <test-air-specializer-34>;

define generic compute-test-air-factor-34 (spec :: <test-air-specializer-34>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-34 (spec :: <test-air-specializer-34>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-34;


// Advanced algorithmic specialization 35 for test-air
define class <test-air-specializer-35> (<object>)
  slot specializer-index :: <integer> = 35;
  slot characteristic-scale :: <float> = 2.75;
  slot damping-ratio :: <float> = 0.737;
end class <test-air-specializer-35>;

define generic compute-test-air-factor-35 (spec :: <test-air-specializer-35>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-35 (spec :: <test-air-specializer-35>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-35;


// Advanced algorithmic specialization 36 for test-air
define class <test-air-specializer-36> (<object>)
  slot specializer-index :: <integer> = 36;
  slot characteristic-scale :: <float> = 2.8;
  slot damping-ratio :: <float> = 0.747;
end class <test-air-specializer-36>;

define generic compute-test-air-factor-36 (spec :: <test-air-specializer-36>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-36 (spec :: <test-air-specializer-36>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-36;


// Advanced algorithmic specialization 37 for test-air
define class <test-air-specializer-37> (<object>)
  slot specializer-index :: <integer> = 37;
  slot characteristic-scale :: <float> = 2.85;
  slot damping-ratio :: <float> = 0.757;
end class <test-air-specializer-37>;

define generic compute-test-air-factor-37 (spec :: <test-air-specializer-37>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-37 (spec :: <test-air-specializer-37>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-37;


// Advanced algorithmic specialization 38 for test-air
define class <test-air-specializer-38> (<object>)
  slot specializer-index :: <integer> = 38;
  slot characteristic-scale :: <float> = 2.9000000000000004;
  slot damping-ratio :: <float> = 0.7669999999999999;
end class <test-air-specializer-38>;

define generic compute-test-air-factor-38 (spec :: <test-air-specializer-38>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-38 (spec :: <test-air-specializer-38>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-38;


// Advanced algorithmic specialization 39 for test-air
define class <test-air-specializer-39> (<object>)
  slot specializer-index :: <integer> = 39;
  slot characteristic-scale :: <float> = 2.95;
  slot damping-ratio :: <float> = 0.7769999999999999;
end class <test-air-specializer-39>;

define generic compute-test-air-factor-39 (spec :: <test-air-specializer-39>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-39 (spec :: <test-air-specializer-39>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-39;


// Advanced algorithmic specialization 40 for test-air
define class <test-air-specializer-40> (<object>)
  slot specializer-index :: <integer> = 40;
  slot characteristic-scale :: <float> = 3.0;
  slot damping-ratio :: <float> = 0.707;
end class <test-air-specializer-40>;

define generic compute-test-air-factor-40 (spec :: <test-air-specializer-40>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-40 (spec :: <test-air-specializer-40>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-40;


// Advanced algorithmic specialization 41 for test-air
define class <test-air-specializer-41> (<object>)
  slot specializer-index :: <integer> = 41;
  slot characteristic-scale :: <float> = 3.0500000000000003;
  slot damping-ratio :: <float> = 0.717;
end class <test-air-specializer-41>;

define generic compute-test-air-factor-41 (spec :: <test-air-specializer-41>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-41 (spec :: <test-air-specializer-41>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-41;


// Advanced algorithmic specialization 42 for test-air
define class <test-air-specializer-42> (<object>)
  slot specializer-index :: <integer> = 42;
  slot characteristic-scale :: <float> = 3.1;
  slot damping-ratio :: <float> = 0.727;
end class <test-air-specializer-42>;

define generic compute-test-air-factor-42 (spec :: <test-air-specializer-42>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-42 (spec :: <test-air-specializer-42>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-42;


// Advanced algorithmic specialization 43 for test-air
define class <test-air-specializer-43> (<object>)
  slot specializer-index :: <integer> = 43;
  slot characteristic-scale :: <float> = 3.15;
  slot damping-ratio :: <float> = 0.737;
end class <test-air-specializer-43>;

define generic compute-test-air-factor-43 (spec :: <test-air-specializer-43>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-43 (spec :: <test-air-specializer-43>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-43;


// Advanced algorithmic specialization 44 for test-air
define class <test-air-specializer-44> (<object>)
  slot specializer-index :: <integer> = 44;
  slot characteristic-scale :: <float> = 3.2;
  slot damping-ratio :: <float> = 0.747;
end class <test-air-specializer-44>;

define generic compute-test-air-factor-44 (spec :: <test-air-specializer-44>, val :: <float>) => (res :: <float>);
define method compute-test-air-factor-44 (spec :: <test-air-specializer-44>, val :: <float>) => (res :: <float>)
  val * spec.characteristic-scale * spec.damping-ratio;
end method compute-test-air-factor-44;
