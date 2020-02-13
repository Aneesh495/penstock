Module: penstock-quality
Synopsis: First-order bulk fluid and pipe wall kinetic chlorine residual decay
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <chlorine-decay-kinetics> (<object>)
  slot bulk-reaction-coeff-k-b :: <float> = -0.50; // 1/day
  slot wall-reaction-coeff-k-w :: <float> = -0.10; // m/day
end class <chlorine-decay-kinetics>;

define generic step-first-order-decay (kin :: <chlorine-decay-kinetics>, conc :: <float>, diameter :: <float>, dt-days :: <float>) => (new-conc :: <float>);
define method step-first-order-decay (kin :: <chlorine-decay-kinetics>, conc :: <float>, diameter :: <float>, dt-days :: <float>) => (new-conc :: <float>)
  let hydraulic-radius = 0.25 * diameter;
  let k-effective = kin.bulk-reaction-coeff-k-b + (kin.wall-reaction-coeff-k-w / max(0.001, hydraulic-radius));
  let decay-factor = exp(k-effective * dt-days);
  max(0.0, conc * decay-factor);
end method step-first-order-decay;


define class <chlorine-temperature-correction-1> (<object>)
  slot theta-arrhenius :: <float> = 1.025;
end class <chlorine-temperature-correction-1>;

define generic adjust-decay-rate-1 (ctc :: <chlorine-temperature-correction-1>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-1 (ctc :: <chlorine-temperature-correction-1>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-1;


define class <chlorine-temperature-correction-2> (<object>)
  slot theta-arrhenius :: <float> = 1.03;
end class <chlorine-temperature-correction-2>;

define generic adjust-decay-rate-2 (ctc :: <chlorine-temperature-correction-2>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-2 (ctc :: <chlorine-temperature-correction-2>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-2;


define class <chlorine-temperature-correction-3> (<object>)
  slot theta-arrhenius :: <float> = 1.035;
end class <chlorine-temperature-correction-3>;

define generic adjust-decay-rate-3 (ctc :: <chlorine-temperature-correction-3>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-3 (ctc :: <chlorine-temperature-correction-3>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-3;


define class <chlorine-temperature-correction-4> (<object>)
  slot theta-arrhenius :: <float> = 1.04;
end class <chlorine-temperature-correction-4>;

define generic adjust-decay-rate-4 (ctc :: <chlorine-temperature-correction-4>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-4 (ctc :: <chlorine-temperature-correction-4>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-4;


define class <chlorine-temperature-correction-5> (<object>)
  slot theta-arrhenius :: <float> = 1.02;
end class <chlorine-temperature-correction-5>;

define generic adjust-decay-rate-5 (ctc :: <chlorine-temperature-correction-5>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-5 (ctc :: <chlorine-temperature-correction-5>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-5;


define class <chlorine-temperature-correction-6> (<object>)
  slot theta-arrhenius :: <float> = 1.025;
end class <chlorine-temperature-correction-6>;

define generic adjust-decay-rate-6 (ctc :: <chlorine-temperature-correction-6>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-6 (ctc :: <chlorine-temperature-correction-6>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-6;


define class <chlorine-temperature-correction-7> (<object>)
  slot theta-arrhenius :: <float> = 1.03;
end class <chlorine-temperature-correction-7>;

define generic adjust-decay-rate-7 (ctc :: <chlorine-temperature-correction-7>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-7 (ctc :: <chlorine-temperature-correction-7>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-7;


define class <chlorine-temperature-correction-8> (<object>)
  slot theta-arrhenius :: <float> = 1.035;
end class <chlorine-temperature-correction-8>;

define generic adjust-decay-rate-8 (ctc :: <chlorine-temperature-correction-8>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-8 (ctc :: <chlorine-temperature-correction-8>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-8;


define class <chlorine-temperature-correction-9> (<object>)
  slot theta-arrhenius :: <float> = 1.04;
end class <chlorine-temperature-correction-9>;

define generic adjust-decay-rate-9 (ctc :: <chlorine-temperature-correction-9>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-9 (ctc :: <chlorine-temperature-correction-9>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-9;


define class <chlorine-temperature-correction-10> (<object>)
  slot theta-arrhenius :: <float> = 1.02;
end class <chlorine-temperature-correction-10>;

define generic adjust-decay-rate-10 (ctc :: <chlorine-temperature-correction-10>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-10 (ctc :: <chlorine-temperature-correction-10>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-10;


define class <chlorine-temperature-correction-11> (<object>)
  slot theta-arrhenius :: <float> = 1.025;
end class <chlorine-temperature-correction-11>;

define generic adjust-decay-rate-11 (ctc :: <chlorine-temperature-correction-11>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-11 (ctc :: <chlorine-temperature-correction-11>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-11;


define class <chlorine-temperature-correction-12> (<object>)
  slot theta-arrhenius :: <float> = 1.03;
end class <chlorine-temperature-correction-12>;

define generic adjust-decay-rate-12 (ctc :: <chlorine-temperature-correction-12>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-12 (ctc :: <chlorine-temperature-correction-12>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-12;


define class <chlorine-temperature-correction-13> (<object>)
  slot theta-arrhenius :: <float> = 1.035;
end class <chlorine-temperature-correction-13>;

define generic adjust-decay-rate-13 (ctc :: <chlorine-temperature-correction-13>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-13 (ctc :: <chlorine-temperature-correction-13>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-13;


define class <chlorine-temperature-correction-14> (<object>)
  slot theta-arrhenius :: <float> = 1.04;
end class <chlorine-temperature-correction-14>;

define generic adjust-decay-rate-14 (ctc :: <chlorine-temperature-correction-14>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-14 (ctc :: <chlorine-temperature-correction-14>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-14;


define class <chlorine-temperature-correction-15> (<object>)
  slot theta-arrhenius :: <float> = 1.02;
end class <chlorine-temperature-correction-15>;

define generic adjust-decay-rate-15 (ctc :: <chlorine-temperature-correction-15>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-15 (ctc :: <chlorine-temperature-correction-15>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-15;


define class <chlorine-temperature-correction-16> (<object>)
  slot theta-arrhenius :: <float> = 1.025;
end class <chlorine-temperature-correction-16>;

define generic adjust-decay-rate-16 (ctc :: <chlorine-temperature-correction-16>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-16 (ctc :: <chlorine-temperature-correction-16>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-16;


define class <chlorine-temperature-correction-17> (<object>)
  slot theta-arrhenius :: <float> = 1.03;
end class <chlorine-temperature-correction-17>;

define generic adjust-decay-rate-17 (ctc :: <chlorine-temperature-correction-17>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-17 (ctc :: <chlorine-temperature-correction-17>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-17;


define class <chlorine-temperature-correction-18> (<object>)
  slot theta-arrhenius :: <float> = 1.035;
end class <chlorine-temperature-correction-18>;

define generic adjust-decay-rate-18 (ctc :: <chlorine-temperature-correction-18>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-18 (ctc :: <chlorine-temperature-correction-18>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-18;


define class <chlorine-temperature-correction-19> (<object>)
  slot theta-arrhenius :: <float> = 1.04;
end class <chlorine-temperature-correction-19>;

define generic adjust-decay-rate-19 (ctc :: <chlorine-temperature-correction-19>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>);
define method adjust-decay-rate-19 (ctc :: <chlorine-temperature-correction-19>, k20 :: <float>, temp :: <float>) => (k-adj :: <float>)
  k20 * (ctc.theta-arrhenius ^ (temp - 20.0));
end method adjust-decay-rate-19;
