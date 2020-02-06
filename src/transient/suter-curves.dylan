Module: penstock-transient
Synopsis: Marchal-Flesch-Suter four-quadrant dimensionless pump representation
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define generic compute-suter-angle (q-ratio :: <float>, alpha-speed :: <float>) => (theta :: <float>);
define method compute-suter-angle (q-ratio :: <float>, alpha-speed :: <float>) => (theta :: <float>)
  atan2(alpha-speed, q-ratio);
end method compute-suter-angle;

define generic suter-head-wh (theta :: <float>) => (wh :: <float>);
define method suter-head-wh (theta :: <float>) => (wh :: <float>)
  0.95 * cos(theta) + 0.25 * sin(2.0 * theta) - 0.1 * sin(4.0 * theta);
end method suter-head-wh;

define generic suter-torque-wb (theta :: <float>) => (wb :: <float>);
define method suter-torque-wb (theta :: <float>) => (wb :: <float>)
  0.85 * cos(theta) + 0.15 * sin(2.0 * theta) + 0.05 * cos(3.0 * theta);
end method suter-torque-wb;


define class <suter-quadrant-sector-1> (<object>)
  slot sector-angle-rad :: <float> = 0.314159;
end class <suter-quadrant-sector-1>;

define generic eval-quadrant-head-1 (sqs :: <suter-quadrant-sector-1>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-1 (sqs :: <suter-quadrant-sector-1>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-1;


define class <suter-quadrant-sector-2> (<object>)
  slot sector-angle-rad :: <float> = 0.628318;
end class <suter-quadrant-sector-2>;

define generic eval-quadrant-head-2 (sqs :: <suter-quadrant-sector-2>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-2 (sqs :: <suter-quadrant-sector-2>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-2;


define class <suter-quadrant-sector-3> (<object>)
  slot sector-angle-rad :: <float> = 0.942477;
end class <suter-quadrant-sector-3>;

define generic eval-quadrant-head-3 (sqs :: <suter-quadrant-sector-3>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-3 (sqs :: <suter-quadrant-sector-3>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-3;


define class <suter-quadrant-sector-4> (<object>)
  slot sector-angle-rad :: <float> = 1.256636;
end class <suter-quadrant-sector-4>;

define generic eval-quadrant-head-4 (sqs :: <suter-quadrant-sector-4>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-4 (sqs :: <suter-quadrant-sector-4>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-4;


define class <suter-quadrant-sector-5> (<object>)
  slot sector-angle-rad :: <float> = 1.5707950000000002;
end class <suter-quadrant-sector-5>;

define generic eval-quadrant-head-5 (sqs :: <suter-quadrant-sector-5>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-5 (sqs :: <suter-quadrant-sector-5>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-5;


define class <suter-quadrant-sector-6> (<object>)
  slot sector-angle-rad :: <float> = 1.884954;
end class <suter-quadrant-sector-6>;

define generic eval-quadrant-head-6 (sqs :: <suter-quadrant-sector-6>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-6 (sqs :: <suter-quadrant-sector-6>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-6;


define class <suter-quadrant-sector-7> (<object>)
  slot sector-angle-rad :: <float> = 2.199113;
end class <suter-quadrant-sector-7>;

define generic eval-quadrant-head-7 (sqs :: <suter-quadrant-sector-7>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-7 (sqs :: <suter-quadrant-sector-7>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-7;


define class <suter-quadrant-sector-8> (<object>)
  slot sector-angle-rad :: <float> = 2.513272;
end class <suter-quadrant-sector-8>;

define generic eval-quadrant-head-8 (sqs :: <suter-quadrant-sector-8>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-8 (sqs :: <suter-quadrant-sector-8>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-8;


define class <suter-quadrant-sector-9> (<object>)
  slot sector-angle-rad :: <float> = 2.8274310000000002;
end class <suter-quadrant-sector-9>;

define generic eval-quadrant-head-9 (sqs :: <suter-quadrant-sector-9>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-9 (sqs :: <suter-quadrant-sector-9>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-9;


define class <suter-quadrant-sector-10> (<object>)
  slot sector-angle-rad :: <float> = 3.1415900000000003;
end class <suter-quadrant-sector-10>;

define generic eval-quadrant-head-10 (sqs :: <suter-quadrant-sector-10>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-10 (sqs :: <suter-quadrant-sector-10>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-10;


define class <suter-quadrant-sector-11> (<object>)
  slot sector-angle-rad :: <float> = 3.4557490000000004;
end class <suter-quadrant-sector-11>;

define generic eval-quadrant-head-11 (sqs :: <suter-quadrant-sector-11>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-11 (sqs :: <suter-quadrant-sector-11>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-11;


define class <suter-quadrant-sector-12> (<object>)
  slot sector-angle-rad :: <float> = 3.769908;
end class <suter-quadrant-sector-12>;

define generic eval-quadrant-head-12 (sqs :: <suter-quadrant-sector-12>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-12 (sqs :: <suter-quadrant-sector-12>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-12;


define class <suter-quadrant-sector-13> (<object>)
  slot sector-angle-rad :: <float> = 4.084067;
end class <suter-quadrant-sector-13>;

define generic eval-quadrant-head-13 (sqs :: <suter-quadrant-sector-13>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-13 (sqs :: <suter-quadrant-sector-13>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-13;


define class <suter-quadrant-sector-14> (<object>)
  slot sector-angle-rad :: <float> = 4.398226;
end class <suter-quadrant-sector-14>;

define generic eval-quadrant-head-14 (sqs :: <suter-quadrant-sector-14>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-14 (sqs :: <suter-quadrant-sector-14>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-14;


define class <suter-quadrant-sector-15> (<object>)
  slot sector-angle-rad :: <float> = 4.712385;
end class <suter-quadrant-sector-15>;

define generic eval-quadrant-head-15 (sqs :: <suter-quadrant-sector-15>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-15 (sqs :: <suter-quadrant-sector-15>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-15;


define class <suter-quadrant-sector-16> (<object>)
  slot sector-angle-rad :: <float> = 5.026544;
end class <suter-quadrant-sector-16>;

define generic eval-quadrant-head-16 (sqs :: <suter-quadrant-sector-16>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-16 (sqs :: <suter-quadrant-sector-16>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-16;


define class <suter-quadrant-sector-17> (<object>)
  slot sector-angle-rad :: <float> = 5.340703;
end class <suter-quadrant-sector-17>;

define generic eval-quadrant-head-17 (sqs :: <suter-quadrant-sector-17>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-17 (sqs :: <suter-quadrant-sector-17>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-17;


define class <suter-quadrant-sector-18> (<object>)
  slot sector-angle-rad :: <float> = 5.6548620000000005;
end class <suter-quadrant-sector-18>;

define generic eval-quadrant-head-18 (sqs :: <suter-quadrant-sector-18>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-18 (sqs :: <suter-quadrant-sector-18>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-18;


define class <suter-quadrant-sector-19> (<object>)
  slot sector-angle-rad :: <float> = 5.969021000000001;
end class <suter-quadrant-sector-19>;

define generic eval-quadrant-head-19 (sqs :: <suter-quadrant-sector-19>, q :: <float>, alpha :: <float>) => (h :: <float>);
define method eval-quadrant-head-19 (sqs :: <suter-quadrant-sector-19>, q :: <float>, alpha :: <float>) => (h :: <float>)
  let th = compute-suter-angle(q, alpha);
  suter-head-wh(th + sqs.sector-angle-rad * 0.01);
end method eval-quadrant-head-19;
