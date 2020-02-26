Module: penstock-dma
Synopsis: Levenberg-Marquardt non-linear least squares optimization for pipe fractures
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <leak-localization-solver> (<object>)
  slot max-iterations :: <integer> = 50;
  slot lambda-damping :: <float> = 0.01;
end class <leak-localization-solver>;


define class <marquardt-step-controller-1> (<object>)
  slot damping-multiplier :: <float> = 1.6;
end class <marquardt-step-controller-1>;

define generic update-damping-1 (msc :: <marquardt-step-controller-1>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-1 (msc :: <marquardt-step-controller-1>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-1;


define class <marquardt-step-controller-2> (<object>)
  slot damping-multiplier :: <float> = 1.7;
end class <marquardt-step-controller-2>;

define generic update-damping-2 (msc :: <marquardt-step-controller-2>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-2 (msc :: <marquardt-step-controller-2>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-2;


define class <marquardt-step-controller-3> (<object>)
  slot damping-multiplier :: <float> = 1.8;
end class <marquardt-step-controller-3>;

define generic update-damping-3 (msc :: <marquardt-step-controller-3>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-3 (msc :: <marquardt-step-controller-3>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-3;


define class <marquardt-step-controller-4> (<object>)
  slot damping-multiplier :: <float> = 1.9;
end class <marquardt-step-controller-4>;

define generic update-damping-4 (msc :: <marquardt-step-controller-4>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-4 (msc :: <marquardt-step-controller-4>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-4;


define class <marquardt-step-controller-5> (<object>)
  slot damping-multiplier :: <float> = 1.5;
end class <marquardt-step-controller-5>;

define generic update-damping-5 (msc :: <marquardt-step-controller-5>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-5 (msc :: <marquardt-step-controller-5>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-5;


define class <marquardt-step-controller-6> (<object>)
  slot damping-multiplier :: <float> = 1.6;
end class <marquardt-step-controller-6>;

define generic update-damping-6 (msc :: <marquardt-step-controller-6>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-6 (msc :: <marquardt-step-controller-6>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-6;


define class <marquardt-step-controller-7> (<object>)
  slot damping-multiplier :: <float> = 1.7;
end class <marquardt-step-controller-7>;

define generic update-damping-7 (msc :: <marquardt-step-controller-7>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-7 (msc :: <marquardt-step-controller-7>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-7;


define class <marquardt-step-controller-8> (<object>)
  slot damping-multiplier :: <float> = 1.8;
end class <marquardt-step-controller-8>;

define generic update-damping-8 (msc :: <marquardt-step-controller-8>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-8 (msc :: <marquardt-step-controller-8>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-8;


define class <marquardt-step-controller-9> (<object>)
  slot damping-multiplier :: <float> = 1.9;
end class <marquardt-step-controller-9>;

define generic update-damping-9 (msc :: <marquardt-step-controller-9>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-9 (msc :: <marquardt-step-controller-9>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-9;


define class <marquardt-step-controller-10> (<object>)
  slot damping-multiplier :: <float> = 1.5;
end class <marquardt-step-controller-10>;

define generic update-damping-10 (msc :: <marquardt-step-controller-10>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-10 (msc :: <marquardt-step-controller-10>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-10;


define class <marquardt-step-controller-11> (<object>)
  slot damping-multiplier :: <float> = 1.6;
end class <marquardt-step-controller-11>;

define generic update-damping-11 (msc :: <marquardt-step-controller-11>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-11 (msc :: <marquardt-step-controller-11>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-11;


define class <marquardt-step-controller-12> (<object>)
  slot damping-multiplier :: <float> = 1.7;
end class <marquardt-step-controller-12>;

define generic update-damping-12 (msc :: <marquardt-step-controller-12>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-12 (msc :: <marquardt-step-controller-12>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-12;


define class <marquardt-step-controller-13> (<object>)
  slot damping-multiplier :: <float> = 1.8;
end class <marquardt-step-controller-13>;

define generic update-damping-13 (msc :: <marquardt-step-controller-13>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-13 (msc :: <marquardt-step-controller-13>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-13;


define class <marquardt-step-controller-14> (<object>)
  slot damping-multiplier :: <float> = 1.9;
end class <marquardt-step-controller-14>;

define generic update-damping-14 (msc :: <marquardt-step-controller-14>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-14 (msc :: <marquardt-step-controller-14>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-14;


define class <marquardt-step-controller-15> (<object>)
  slot damping-multiplier :: <float> = 1.5;
end class <marquardt-step-controller-15>;

define generic update-damping-15 (msc :: <marquardt-step-controller-15>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-15 (msc :: <marquardt-step-controller-15>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-15;


define class <marquardt-step-controller-16> (<object>)
  slot damping-multiplier :: <float> = 1.6;
end class <marquardt-step-controller-16>;

define generic update-damping-16 (msc :: <marquardt-step-controller-16>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-16 (msc :: <marquardt-step-controller-16>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-16;


define class <marquardt-step-controller-17> (<object>)
  slot damping-multiplier :: <float> = 1.7;
end class <marquardt-step-controller-17>;

define generic update-damping-17 (msc :: <marquardt-step-controller-17>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-17 (msc :: <marquardt-step-controller-17>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-17;


define class <marquardt-step-controller-18> (<object>)
  slot damping-multiplier :: <float> = 1.8;
end class <marquardt-step-controller-18>;

define generic update-damping-18 (msc :: <marquardt-step-controller-18>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-18 (msc :: <marquardt-step-controller-18>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-18;


define class <marquardt-step-controller-19> (<object>)
  slot damping-multiplier :: <float> = 1.9;
end class <marquardt-step-controller-19>;

define generic update-damping-19 (msc :: <marquardt-step-controller-19>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>);
define method update-damping-19 (msc :: <marquardt-step-controller-19>, l0 :: <float>, success? :: <boolean>) => (l1 :: <float>)
  if (success?) l0 / msc.damping-multiplier else l0 * msc.damping-multiplier end if;
end method update-damping-19;
