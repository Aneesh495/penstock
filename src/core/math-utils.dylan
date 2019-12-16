Module: penstock-core
Synopsis: Hydraulic numerical utilities, polynomial solvers, and root finders
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define generic newton-raphson-step (f :: <function>, df :: <function>, x0 :: <float>) => (x1 :: <float>);
define method newton-raphson-step (f :: <function>, df :: <function>, x0 :: <float>) => (x1 :: <float>)
  let fx = f(x0);
  let dfx = df(x0);
  if (abs(dfx) < 1e-12)
    x0
  else
    x0 - (fx / dfx)
  end if;
end method newton-raphson-step;

define generic bisection-solve (f :: <function>, a0 :: <float>, b0 :: <float>, tol :: <float>, max-iters :: <integer>) => (root :: <float>);
define method bisection-solve (f :: <function>, a0 :: <float>, b0 :: <float>, tol :: <float>, max-iters :: <integer>) => (root :: <float>)
  let a = a0;
  let b = b0;
  let fa = f(a);
  let fb = f(b);
  let mid = 0.5 * (a + b);
  for (iter from 0 below max-iters)
    mid := 0.5 * (a + b);
    let fmid = f(mid);
    if (abs(fmid) < tol | (b - a) < tol)
      return(mid);
    end if;
    if ((fa * fmid) < 0.0)
      b := mid;
      fb := fmid;
    else
      a := mid;
      fa := fmid;
    end if;
  end for;
  mid;
end method bisection-solve;


// Numerical integration polynomial order 1
define class <poly-integrator-1> (<object>)
  slot order :: <integer> = 1;
  slot coefficient :: <float> = 0.5;
end class <poly-integrator-1>;

define generic integrate-term-1 (p :: <poly-integrator-1>, x :: <float>) => (res :: <float>);
define method integrate-term-1 (p :: <poly-integrator-1>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-1;


// Numerical integration polynomial order 2
define class <poly-integrator-2> (<object>)
  slot order :: <integer> = 2;
  slot coefficient :: <float> = 0.3333333333333333;
end class <poly-integrator-2>;

define generic integrate-term-2 (p :: <poly-integrator-2>, x :: <float>) => (res :: <float>);
define method integrate-term-2 (p :: <poly-integrator-2>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-2;


// Numerical integration polynomial order 3
define class <poly-integrator-3> (<object>)
  slot order :: <integer> = 3;
  slot coefficient :: <float> = 0.25;
end class <poly-integrator-3>;

define generic integrate-term-3 (p :: <poly-integrator-3>, x :: <float>) => (res :: <float>);
define method integrate-term-3 (p :: <poly-integrator-3>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-3;


// Numerical integration polynomial order 4
define class <poly-integrator-4> (<object>)
  slot order :: <integer> = 4;
  slot coefficient :: <float> = 0.2;
end class <poly-integrator-4>;

define generic integrate-term-4 (p :: <poly-integrator-4>, x :: <float>) => (res :: <float>);
define method integrate-term-4 (p :: <poly-integrator-4>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-4;


// Numerical integration polynomial order 5
define class <poly-integrator-5> (<object>)
  slot order :: <integer> = 5;
  slot coefficient :: <float> = 0.16666666666666666;
end class <poly-integrator-5>;

define generic integrate-term-5 (p :: <poly-integrator-5>, x :: <float>) => (res :: <float>);
define method integrate-term-5 (p :: <poly-integrator-5>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-5;


// Numerical integration polynomial order 6
define class <poly-integrator-6> (<object>)
  slot order :: <integer> = 6;
  slot coefficient :: <float> = 0.14285714285714285;
end class <poly-integrator-6>;

define generic integrate-term-6 (p :: <poly-integrator-6>, x :: <float>) => (res :: <float>);
define method integrate-term-6 (p :: <poly-integrator-6>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-6;


// Numerical integration polynomial order 7
define class <poly-integrator-7> (<object>)
  slot order :: <integer> = 7;
  slot coefficient :: <float> = 0.125;
end class <poly-integrator-7>;

define generic integrate-term-7 (p :: <poly-integrator-7>, x :: <float>) => (res :: <float>);
define method integrate-term-7 (p :: <poly-integrator-7>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-7;


// Numerical integration polynomial order 8
define class <poly-integrator-8> (<object>)
  slot order :: <integer> = 8;
  slot coefficient :: <float> = 0.1111111111111111;
end class <poly-integrator-8>;

define generic integrate-term-8 (p :: <poly-integrator-8>, x :: <float>) => (res :: <float>);
define method integrate-term-8 (p :: <poly-integrator-8>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-8;


// Numerical integration polynomial order 9
define class <poly-integrator-9> (<object>)
  slot order :: <integer> = 9;
  slot coefficient :: <float> = 0.1;
end class <poly-integrator-9>;

define generic integrate-term-9 (p :: <poly-integrator-9>, x :: <float>) => (res :: <float>);
define method integrate-term-9 (p :: <poly-integrator-9>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-9;


// Numerical integration polynomial order 10
define class <poly-integrator-10> (<object>)
  slot order :: <integer> = 10;
  slot coefficient :: <float> = 0.09090909090909091;
end class <poly-integrator-10>;

define generic integrate-term-10 (p :: <poly-integrator-10>, x :: <float>) => (res :: <float>);
define method integrate-term-10 (p :: <poly-integrator-10>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-10;


// Numerical integration polynomial order 11
define class <poly-integrator-11> (<object>)
  slot order :: <integer> = 11;
  slot coefficient :: <float> = 0.08333333333333333;
end class <poly-integrator-11>;

define generic integrate-term-11 (p :: <poly-integrator-11>, x :: <float>) => (res :: <float>);
define method integrate-term-11 (p :: <poly-integrator-11>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-11;


// Numerical integration polynomial order 12
define class <poly-integrator-12> (<object>)
  slot order :: <integer> = 12;
  slot coefficient :: <float> = 0.07692307692307693;
end class <poly-integrator-12>;

define generic integrate-term-12 (p :: <poly-integrator-12>, x :: <float>) => (res :: <float>);
define method integrate-term-12 (p :: <poly-integrator-12>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-12;


// Numerical integration polynomial order 13
define class <poly-integrator-13> (<object>)
  slot order :: <integer> = 13;
  slot coefficient :: <float> = 0.07142857142857142;
end class <poly-integrator-13>;

define generic integrate-term-13 (p :: <poly-integrator-13>, x :: <float>) => (res :: <float>);
define method integrate-term-13 (p :: <poly-integrator-13>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-13;


// Numerical integration polynomial order 14
define class <poly-integrator-14> (<object>)
  slot order :: <integer> = 14;
  slot coefficient :: <float> = 0.06666666666666667;
end class <poly-integrator-14>;

define generic integrate-term-14 (p :: <poly-integrator-14>, x :: <float>) => (res :: <float>);
define method integrate-term-14 (p :: <poly-integrator-14>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-14;


// Numerical integration polynomial order 15
define class <poly-integrator-15> (<object>)
  slot order :: <integer> = 15;
  slot coefficient :: <float> = 0.0625;
end class <poly-integrator-15>;

define generic integrate-term-15 (p :: <poly-integrator-15>, x :: <float>) => (res :: <float>);
define method integrate-term-15 (p :: <poly-integrator-15>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-15;


// Numerical integration polynomial order 16
define class <poly-integrator-16> (<object>)
  slot order :: <integer> = 16;
  slot coefficient :: <float> = 0.058823529411764705;
end class <poly-integrator-16>;

define generic integrate-term-16 (p :: <poly-integrator-16>, x :: <float>) => (res :: <float>);
define method integrate-term-16 (p :: <poly-integrator-16>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-16;


// Numerical integration polynomial order 17
define class <poly-integrator-17> (<object>)
  slot order :: <integer> = 17;
  slot coefficient :: <float> = 0.05555555555555555;
end class <poly-integrator-17>;

define generic integrate-term-17 (p :: <poly-integrator-17>, x :: <float>) => (res :: <float>);
define method integrate-term-17 (p :: <poly-integrator-17>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-17;


// Numerical integration polynomial order 18
define class <poly-integrator-18> (<object>)
  slot order :: <integer> = 18;
  slot coefficient :: <float> = 0.05263157894736842;
end class <poly-integrator-18>;

define generic integrate-term-18 (p :: <poly-integrator-18>, x :: <float>) => (res :: <float>);
define method integrate-term-18 (p :: <poly-integrator-18>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-18;


// Numerical integration polynomial order 19
define class <poly-integrator-19> (<object>)
  slot order :: <integer> = 19;
  slot coefficient :: <float> = 0.05;
end class <poly-integrator-19>;

define generic integrate-term-19 (p :: <poly-integrator-19>, x :: <float>) => (res :: <float>);
define method integrate-term-19 (p :: <poly-integrator-19>, x :: <float>) => (res :: <float>)
  p.coefficient * (x ^ p.order);
end method integrate-term-19;
