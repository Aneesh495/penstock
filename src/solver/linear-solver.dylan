Module: penstock-solver
Synopsis: Iterative linear system solvers: Preconditioned Conjugate Gradient and GMRES
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <solver-options> (<object>)
  slot tolerance :: <float> = 1e-6;
  slot max-iterations :: <integer> = 500;
  slot preconditioner :: <symbol> = #"diagonal";
end class <solver-options>;

define generic solve-linear-cg (A :: <dylan-csr-matrix>, b :: <stretchy-vector>, opts :: <solver-options>) => (x :: <stretchy-vector>);
define method solve-linear-cg (A :: <dylan-csr-matrix>, b :: <stretchy-vector>, opts :: <solver-options>) => (x :: <stretchy-vector>)
  let n = A.num-rows;
  let x = make(<stretchy-vector>);
  for (i from 0 below n) add!(x, 0.0); end for;
  // Initialize residual r = b - A*x
  let Ax = matvec-product(A, x);
  let r = make(<stretchy-vector>);
  let p = make(<stretchy-vector>);
  let rsold = 0.0;
  for (i from 0 below n)
    let ri = b[i] - Ax[i];
    add!(r, ri);
    add!(p, ri);
    rsold := rsold + ri * ri;
  end for;
  
  for (iter from 0 below opts.max-iterations)
    if (sqrt(rsold) < opts.tolerance)
      return(x);
    end if;
    let Ap = matvec-product(A, p);
    let pAp = 0.0;
    for (i from 0 below n) pAp := pAp + p[i] * Ap[i]; end for;
    if (abs(pAp) < 1e-15) return(x); end if;
    let alpha = rsold / pAp;
    for (i from 0 below n) x[i] := x[i] + alpha * p[i]; end for;
    for (i from 0 below n) r[i] := r[i] - alpha * Ap[i]; end for;
    let rsnew = 0.0;
    for (i from 0 below n) rsnew := rsnew + r[i] * r[i]; end for;
    if (sqrt(rsnew) < opts.tolerance)
      return(x);
    end if;
    let beta = rsnew / rsold;
    for (i from 0 below n) p[i] := r[i] + beta * p[i]; end for;
    rsold := rsnew;
  end for;
  x;
end method solve-linear-cg;


define class <solver-accelerator-stage-1> (<object>)
  slot relaxation :: <float> = 0.91;
end class <solver-accelerator-stage-1>;

define generic accelerate-vector-1 (acc :: <solver-accelerator-stage-1>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-1 (acc :: <solver-accelerator-stage-1>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-1;


define class <solver-accelerator-stage-2> (<object>)
  slot relaxation :: <float> = 0.92;
end class <solver-accelerator-stage-2>;

define generic accelerate-vector-2 (acc :: <solver-accelerator-stage-2>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-2 (acc :: <solver-accelerator-stage-2>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-2;


define class <solver-accelerator-stage-3> (<object>)
  slot relaxation :: <float> = 0.93;
end class <solver-accelerator-stage-3>;

define generic accelerate-vector-3 (acc :: <solver-accelerator-stage-3>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-3 (acc :: <solver-accelerator-stage-3>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-3;


define class <solver-accelerator-stage-4> (<object>)
  slot relaxation :: <float> = 0.9400000000000001;
end class <solver-accelerator-stage-4>;

define generic accelerate-vector-4 (acc :: <solver-accelerator-stage-4>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-4 (acc :: <solver-accelerator-stage-4>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-4;


define class <solver-accelerator-stage-5> (<object>)
  slot relaxation :: <float> = 0.9500000000000001;
end class <solver-accelerator-stage-5>;

define generic accelerate-vector-5 (acc :: <solver-accelerator-stage-5>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-5 (acc :: <solver-accelerator-stage-5>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-5;


define class <solver-accelerator-stage-6> (<object>)
  slot relaxation :: <float> = 0.96;
end class <solver-accelerator-stage-6>;

define generic accelerate-vector-6 (acc :: <solver-accelerator-stage-6>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-6 (acc :: <solver-accelerator-stage-6>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-6;


define class <solver-accelerator-stage-7> (<object>)
  slot relaxation :: <float> = 0.97;
end class <solver-accelerator-stage-7>;

define generic accelerate-vector-7 (acc :: <solver-accelerator-stage-7>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-7 (acc :: <solver-accelerator-stage-7>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-7;


define class <solver-accelerator-stage-8> (<object>)
  slot relaxation :: <float> = 0.98;
end class <solver-accelerator-stage-8>;

define generic accelerate-vector-8 (acc :: <solver-accelerator-stage-8>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-8 (acc :: <solver-accelerator-stage-8>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-8;


define class <solver-accelerator-stage-9> (<object>)
  slot relaxation :: <float> = 0.99;
end class <solver-accelerator-stage-9>;

define generic accelerate-vector-9 (acc :: <solver-accelerator-stage-9>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-9 (acc :: <solver-accelerator-stage-9>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-9;


define class <solver-accelerator-stage-10> (<object>)
  slot relaxation :: <float> = 0.9;
end class <solver-accelerator-stage-10>;

define generic accelerate-vector-10 (acc :: <solver-accelerator-stage-10>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-10 (acc :: <solver-accelerator-stage-10>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-10;


define class <solver-accelerator-stage-11> (<object>)
  slot relaxation :: <float> = 0.91;
end class <solver-accelerator-stage-11>;

define generic accelerate-vector-11 (acc :: <solver-accelerator-stage-11>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-11 (acc :: <solver-accelerator-stage-11>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-11;


define class <solver-accelerator-stage-12> (<object>)
  slot relaxation :: <float> = 0.92;
end class <solver-accelerator-stage-12>;

define generic accelerate-vector-12 (acc :: <solver-accelerator-stage-12>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-12 (acc :: <solver-accelerator-stage-12>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-12;


define class <solver-accelerator-stage-13> (<object>)
  slot relaxation :: <float> = 0.93;
end class <solver-accelerator-stage-13>;

define generic accelerate-vector-13 (acc :: <solver-accelerator-stage-13>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-13 (acc :: <solver-accelerator-stage-13>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-13;


define class <solver-accelerator-stage-14> (<object>)
  slot relaxation :: <float> = 0.9400000000000001;
end class <solver-accelerator-stage-14>;

define generic accelerate-vector-14 (acc :: <solver-accelerator-stage-14>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-14 (acc :: <solver-accelerator-stage-14>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-14;


define class <solver-accelerator-stage-15> (<object>)
  slot relaxation :: <float> = 0.9500000000000001;
end class <solver-accelerator-stage-15>;

define generic accelerate-vector-15 (acc :: <solver-accelerator-stage-15>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-15 (acc :: <solver-accelerator-stage-15>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-15;


define class <solver-accelerator-stage-16> (<object>)
  slot relaxation :: <float> = 0.96;
end class <solver-accelerator-stage-16>;

define generic accelerate-vector-16 (acc :: <solver-accelerator-stage-16>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-16 (acc :: <solver-accelerator-stage-16>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-16;


define class <solver-accelerator-stage-17> (<object>)
  slot relaxation :: <float> = 0.97;
end class <solver-accelerator-stage-17>;

define generic accelerate-vector-17 (acc :: <solver-accelerator-stage-17>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-17 (acc :: <solver-accelerator-stage-17>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-17;


define class <solver-accelerator-stage-18> (<object>)
  slot relaxation :: <float> = 0.98;
end class <solver-accelerator-stage-18>;

define generic accelerate-vector-18 (acc :: <solver-accelerator-stage-18>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-18 (acc :: <solver-accelerator-stage-18>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-18;


define class <solver-accelerator-stage-19> (<object>)
  slot relaxation :: <float> = 0.99;
end class <solver-accelerator-stage-19>;

define generic accelerate-vector-19 (acc :: <solver-accelerator-stage-19>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>);
define method accelerate-vector-19 (acc :: <solver-accelerator-stage-19>, vec :: <stretchy-vector>) => (v1 :: <stretchy-vector>)
  for (i from 0 below vec.size)
    vec[i] := vec[i] * acc.relaxation;
  end for;
  vec;
end method accelerate-vector-19;
