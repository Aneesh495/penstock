Module: penstock-transient
Synopsis: Brunone-Vardy-Brown 1D unsteady friction and frequency-dependent damping
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <brunone-friction-model> (<object>)
  slot decay-coefficient-k :: <float> = 0.045; // Brunone k factor
end class <brunone-friction-model>;

define generic unsteady-shear-stress (bfm :: <brunone-friction-model>, dV-dt :: <float>, dV-dx :: <float>, a-wave :: <float>) => (tau-u :: <float>);
define method unsteady-shear-stress (bfm :: <brunone-friction-model>, dV-dt :: <float>, dV-dx :: <float>, a-wave :: <float>) => (tau-u :: <float>)
  let sign-v = 1.0;
  let term = dV-dt + sign-v * a-wave * abs(dV-dx);
  bfm.decay-coefficient-k * term;
end method unsteady-shear-stress;


define class <vardy-brown-viscous-layer-1> (<object>)
  slot reynolds-tier :: <integer> = 1;
  slot weighting-factor :: <float> = 0.05;
end class <vardy-brown-viscous-layer-1>;

define generic evaluate-weighting-decay-1 (layer :: <vardy-brown-viscous-layer-1>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-1 (layer :: <vardy-brown-viscous-layer-1>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-1;


define class <vardy-brown-viscous-layer-2> (<object>)
  slot reynolds-tier :: <integer> = 2;
  slot weighting-factor :: <float> = 0.025;
end class <vardy-brown-viscous-layer-2>;

define generic evaluate-weighting-decay-2 (layer :: <vardy-brown-viscous-layer-2>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-2 (layer :: <vardy-brown-viscous-layer-2>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-2;


define class <vardy-brown-viscous-layer-3> (<object>)
  slot reynolds-tier :: <integer> = 3;
  slot weighting-factor :: <float> = 0.016666666666666666;
end class <vardy-brown-viscous-layer-3>;

define generic evaluate-weighting-decay-3 (layer :: <vardy-brown-viscous-layer-3>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-3 (layer :: <vardy-brown-viscous-layer-3>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-3;


define class <vardy-brown-viscous-layer-4> (<object>)
  slot reynolds-tier :: <integer> = 4;
  slot weighting-factor :: <float> = 0.0125;
end class <vardy-brown-viscous-layer-4>;

define generic evaluate-weighting-decay-4 (layer :: <vardy-brown-viscous-layer-4>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-4 (layer :: <vardy-brown-viscous-layer-4>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-4;


define class <vardy-brown-viscous-layer-5> (<object>)
  slot reynolds-tier :: <integer> = 5;
  slot weighting-factor :: <float> = 0.01;
end class <vardy-brown-viscous-layer-5>;

define generic evaluate-weighting-decay-5 (layer :: <vardy-brown-viscous-layer-5>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-5 (layer :: <vardy-brown-viscous-layer-5>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-5;


define class <vardy-brown-viscous-layer-6> (<object>)
  slot reynolds-tier :: <integer> = 6;
  slot weighting-factor :: <float> = 0.008333333333333333;
end class <vardy-brown-viscous-layer-6>;

define generic evaluate-weighting-decay-6 (layer :: <vardy-brown-viscous-layer-6>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-6 (layer :: <vardy-brown-viscous-layer-6>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-6;


define class <vardy-brown-viscous-layer-7> (<object>)
  slot reynolds-tier :: <integer> = 7;
  slot weighting-factor :: <float> = 0.0071428571428571435;
end class <vardy-brown-viscous-layer-7>;

define generic evaluate-weighting-decay-7 (layer :: <vardy-brown-viscous-layer-7>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-7 (layer :: <vardy-brown-viscous-layer-7>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-7;


define class <vardy-brown-viscous-layer-8> (<object>)
  slot reynolds-tier :: <integer> = 8;
  slot weighting-factor :: <float> = 0.00625;
end class <vardy-brown-viscous-layer-8>;

define generic evaluate-weighting-decay-8 (layer :: <vardy-brown-viscous-layer-8>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-8 (layer :: <vardy-brown-viscous-layer-8>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-8;


define class <vardy-brown-viscous-layer-9> (<object>)
  slot reynolds-tier :: <integer> = 9;
  slot weighting-factor :: <float> = 0.005555555555555556;
end class <vardy-brown-viscous-layer-9>;

define generic evaluate-weighting-decay-9 (layer :: <vardy-brown-viscous-layer-9>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-9 (layer :: <vardy-brown-viscous-layer-9>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-9;


define class <vardy-brown-viscous-layer-10> (<object>)
  slot reynolds-tier :: <integer> = 10;
  slot weighting-factor :: <float> = 0.005;
end class <vardy-brown-viscous-layer-10>;

define generic evaluate-weighting-decay-10 (layer :: <vardy-brown-viscous-layer-10>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-10 (layer :: <vardy-brown-viscous-layer-10>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-10;


define class <vardy-brown-viscous-layer-11> (<object>)
  slot reynolds-tier :: <integer> = 11;
  slot weighting-factor :: <float> = 0.004545454545454546;
end class <vardy-brown-viscous-layer-11>;

define generic evaluate-weighting-decay-11 (layer :: <vardy-brown-viscous-layer-11>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-11 (layer :: <vardy-brown-viscous-layer-11>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-11;


define class <vardy-brown-viscous-layer-12> (<object>)
  slot reynolds-tier :: <integer> = 12;
  slot weighting-factor :: <float> = 0.004166666666666667;
end class <vardy-brown-viscous-layer-12>;

define generic evaluate-weighting-decay-12 (layer :: <vardy-brown-viscous-layer-12>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-12 (layer :: <vardy-brown-viscous-layer-12>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-12;


define class <vardy-brown-viscous-layer-13> (<object>)
  slot reynolds-tier :: <integer> = 13;
  slot weighting-factor :: <float> = 0.0038461538461538464;
end class <vardy-brown-viscous-layer-13>;

define generic evaluate-weighting-decay-13 (layer :: <vardy-brown-viscous-layer-13>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-13 (layer :: <vardy-brown-viscous-layer-13>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-13;


define class <vardy-brown-viscous-layer-14> (<object>)
  slot reynolds-tier :: <integer> = 14;
  slot weighting-factor :: <float> = 0.0035714285714285718;
end class <vardy-brown-viscous-layer-14>;

define generic evaluate-weighting-decay-14 (layer :: <vardy-brown-viscous-layer-14>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-14 (layer :: <vardy-brown-viscous-layer-14>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-14;


define class <vardy-brown-viscous-layer-15> (<object>)
  slot reynolds-tier :: <integer> = 15;
  slot weighting-factor :: <float> = 0.0033333333333333335;
end class <vardy-brown-viscous-layer-15>;

define generic evaluate-weighting-decay-15 (layer :: <vardy-brown-viscous-layer-15>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-15 (layer :: <vardy-brown-viscous-layer-15>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-15;


define class <vardy-brown-viscous-layer-16> (<object>)
  slot reynolds-tier :: <integer> = 16;
  slot weighting-factor :: <float> = 0.003125;
end class <vardy-brown-viscous-layer-16>;

define generic evaluate-weighting-decay-16 (layer :: <vardy-brown-viscous-layer-16>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-16 (layer :: <vardy-brown-viscous-layer-16>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-16;


define class <vardy-brown-viscous-layer-17> (<object>)
  slot reynolds-tier :: <integer> = 17;
  slot weighting-factor :: <float> = 0.0029411764705882353;
end class <vardy-brown-viscous-layer-17>;

define generic evaluate-weighting-decay-17 (layer :: <vardy-brown-viscous-layer-17>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-17 (layer :: <vardy-brown-viscous-layer-17>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-17;


define class <vardy-brown-viscous-layer-18> (<object>)
  slot reynolds-tier :: <integer> = 18;
  slot weighting-factor :: <float> = 0.002777777777777778;
end class <vardy-brown-viscous-layer-18>;

define generic evaluate-weighting-decay-18 (layer :: <vardy-brown-viscous-layer-18>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-18 (layer :: <vardy-brown-viscous-layer-18>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-18;


define class <vardy-brown-viscous-layer-19> (<object>)
  slot reynolds-tier :: <integer> = 19;
  slot weighting-factor :: <float> = 0.002631578947368421;
end class <vardy-brown-viscous-layer-19>;

define generic evaluate-weighting-decay-19 (layer :: <vardy-brown-viscous-layer-19>, dt :: <float>) => (factor :: <float>);
define method evaluate-weighting-decay-19 (layer :: <vardy-brown-viscous-layer-19>, dt :: <float>) => (factor :: <float>)
  exp(-layer.weighting-factor * dt);
end method evaluate-weighting-decay-19;
