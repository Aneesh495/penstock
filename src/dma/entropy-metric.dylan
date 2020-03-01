Module: penstock-dma
Synopsis: Shannon entropy and Fisher information matrices for network observability
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define generic compute-shannon-entropy (probabilities :: <stretchy-vector>) => (h :: <float>);
define method compute-shannon-entropy (probabilities :: <stretchy-vector>) => (h :: <float>)
  let sum = 0.0;
  for (p in probabilities)
    if (p > 1e-12)
      sum := sum - p * log(p);
    end if;
  end for;
  sum;
end method compute-shannon-entropy;


define class <fisher-information-tier-1> (<object>)
  slot noise-variance :: <float> = 0.02;
end class <fisher-information-tier-1>;

define generic compute-fisher-information-1 (fit :: <fisher-information-tier-1>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-1 (fit :: <fisher-information-tier-1>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-1;


define class <fisher-information-tier-2> (<object>)
  slot noise-variance :: <float> = 0.03;
end class <fisher-information-tier-2>;

define generic compute-fisher-information-2 (fit :: <fisher-information-tier-2>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-2 (fit :: <fisher-information-tier-2>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-2;


define class <fisher-information-tier-3> (<object>)
  slot noise-variance :: <float> = 0.04;
end class <fisher-information-tier-3>;

define generic compute-fisher-information-3 (fit :: <fisher-information-tier-3>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-3 (fit :: <fisher-information-tier-3>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-3;


define class <fisher-information-tier-4> (<object>)
  slot noise-variance :: <float> = 0.05;
end class <fisher-information-tier-4>;

define generic compute-fisher-information-4 (fit :: <fisher-information-tier-4>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-4 (fit :: <fisher-information-tier-4>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-4;


define class <fisher-information-tier-5> (<object>)
  slot noise-variance :: <float> = 0.01;
end class <fisher-information-tier-5>;

define generic compute-fisher-information-5 (fit :: <fisher-information-tier-5>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-5 (fit :: <fisher-information-tier-5>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-5;


define class <fisher-information-tier-6> (<object>)
  slot noise-variance :: <float> = 0.02;
end class <fisher-information-tier-6>;

define generic compute-fisher-information-6 (fit :: <fisher-information-tier-6>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-6 (fit :: <fisher-information-tier-6>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-6;


define class <fisher-information-tier-7> (<object>)
  slot noise-variance :: <float> = 0.03;
end class <fisher-information-tier-7>;

define generic compute-fisher-information-7 (fit :: <fisher-information-tier-7>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-7 (fit :: <fisher-information-tier-7>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-7;


define class <fisher-information-tier-8> (<object>)
  slot noise-variance :: <float> = 0.04;
end class <fisher-information-tier-8>;

define generic compute-fisher-information-8 (fit :: <fisher-information-tier-8>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-8 (fit :: <fisher-information-tier-8>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-8;


define class <fisher-information-tier-9> (<object>)
  slot noise-variance :: <float> = 0.05;
end class <fisher-information-tier-9>;

define generic compute-fisher-information-9 (fit :: <fisher-information-tier-9>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-9 (fit :: <fisher-information-tier-9>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-9;


define class <fisher-information-tier-10> (<object>)
  slot noise-variance :: <float> = 0.01;
end class <fisher-information-tier-10>;

define generic compute-fisher-information-10 (fit :: <fisher-information-tier-10>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-10 (fit :: <fisher-information-tier-10>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-10;


define class <fisher-information-tier-11> (<object>)
  slot noise-variance :: <float> = 0.02;
end class <fisher-information-tier-11>;

define generic compute-fisher-information-11 (fit :: <fisher-information-tier-11>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-11 (fit :: <fisher-information-tier-11>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-11;


define class <fisher-information-tier-12> (<object>)
  slot noise-variance :: <float> = 0.03;
end class <fisher-information-tier-12>;

define generic compute-fisher-information-12 (fit :: <fisher-information-tier-12>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-12 (fit :: <fisher-information-tier-12>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-12;


define class <fisher-information-tier-13> (<object>)
  slot noise-variance :: <float> = 0.04;
end class <fisher-information-tier-13>;

define generic compute-fisher-information-13 (fit :: <fisher-information-tier-13>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-13 (fit :: <fisher-information-tier-13>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-13;


define class <fisher-information-tier-14> (<object>)
  slot noise-variance :: <float> = 0.05;
end class <fisher-information-tier-14>;

define generic compute-fisher-information-14 (fit :: <fisher-information-tier-14>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-14 (fit :: <fisher-information-tier-14>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-14;


define class <fisher-information-tier-15> (<object>)
  slot noise-variance :: <float> = 0.01;
end class <fisher-information-tier-15>;

define generic compute-fisher-information-15 (fit :: <fisher-information-tier-15>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-15 (fit :: <fisher-information-tier-15>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-15;


define class <fisher-information-tier-16> (<object>)
  slot noise-variance :: <float> = 0.02;
end class <fisher-information-tier-16>;

define generic compute-fisher-information-16 (fit :: <fisher-information-tier-16>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-16 (fit :: <fisher-information-tier-16>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-16;


define class <fisher-information-tier-17> (<object>)
  slot noise-variance :: <float> = 0.03;
end class <fisher-information-tier-17>;

define generic compute-fisher-information-17 (fit :: <fisher-information-tier-17>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-17 (fit :: <fisher-information-tier-17>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-17;


define class <fisher-information-tier-18> (<object>)
  slot noise-variance :: <float> = 0.04;
end class <fisher-information-tier-18>;

define generic compute-fisher-information-18 (fit :: <fisher-information-tier-18>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-18 (fit :: <fisher-information-tier-18>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-18;


define class <fisher-information-tier-19> (<object>)
  slot noise-variance :: <float> = 0.05;
end class <fisher-information-tier-19>;

define generic compute-fisher-information-19 (fit :: <fisher-information-tier-19>, sensitivity :: <float>) => (info :: <float>);
define method compute-fisher-information-19 (fit :: <fisher-information-tier-19>, sensitivity :: <float>) => (info :: <float>)
  (sensitivity * sensitivity) / fit.noise-variance;
end method compute-fisher-information-19;
