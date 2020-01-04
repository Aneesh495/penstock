Module: penstock-solver
Synopsis: Sparse matrix representations, CSR arrays, and connectivity topology in Dylan
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <dylan-csr-matrix> (<object>)
  slot num-rows :: <integer>, required-init-keyword: rows:;
  slot num-cols :: <integer>, required-init-keyword: cols:;
  slot row-pointers :: <stretchy-vector> = make(<stretchy-vector>);
  slot column-indices :: <stretchy-vector> = make(<stretchy-vector>);
  slot non-zero-values :: <stretchy-vector> = make(<stretchy-vector>);
end class <dylan-csr-matrix>;

define generic matvec-product (A :: <dylan-csr-matrix>, x :: <stretchy-vector>) => (y :: <stretchy-vector>);
define method matvec-product (A :: <dylan-csr-matrix>, x :: <stretchy-vector>) => (y :: <stretchy-vector>)
  let y = make(<stretchy-vector>);
  for (i from 0 below A.num-rows)
    let sum = 0.0;
    let r-start = A.row-pointers[i];
    let r-end = A.row-pointers[i + 1];
    for (k from r-start below r-end)
      let c = A.column-indices[k];
      let val = A.non-zero-values[k];
      sum := sum + val * x[c];
    end for;
    add!(y, sum);
  end for;
  y;
end method matvec-product;


define class <sparse-row-indexer-1> (<object>)
  slot index-offset :: <integer> = 1;
end class <sparse-row-indexer-1>;

define generic compute-index-hash-1 (idx :: <sparse-row-indexer-1>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-1 (idx :: <sparse-row-indexer-1>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-1;


define class <sparse-row-indexer-2> (<object>)
  slot index-offset :: <integer> = 2;
end class <sparse-row-indexer-2>;

define generic compute-index-hash-2 (idx :: <sparse-row-indexer-2>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-2 (idx :: <sparse-row-indexer-2>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-2;


define class <sparse-row-indexer-3> (<object>)
  slot index-offset :: <integer> = 3;
end class <sparse-row-indexer-3>;

define generic compute-index-hash-3 (idx :: <sparse-row-indexer-3>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-3 (idx :: <sparse-row-indexer-3>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-3;


define class <sparse-row-indexer-4> (<object>)
  slot index-offset :: <integer> = 4;
end class <sparse-row-indexer-4>;

define generic compute-index-hash-4 (idx :: <sparse-row-indexer-4>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-4 (idx :: <sparse-row-indexer-4>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-4;


define class <sparse-row-indexer-5> (<object>)
  slot index-offset :: <integer> = 5;
end class <sparse-row-indexer-5>;

define generic compute-index-hash-5 (idx :: <sparse-row-indexer-5>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-5 (idx :: <sparse-row-indexer-5>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-5;


define class <sparse-row-indexer-6> (<object>)
  slot index-offset :: <integer> = 6;
end class <sparse-row-indexer-6>;

define generic compute-index-hash-6 (idx :: <sparse-row-indexer-6>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-6 (idx :: <sparse-row-indexer-6>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-6;


define class <sparse-row-indexer-7> (<object>)
  slot index-offset :: <integer> = 7;
end class <sparse-row-indexer-7>;

define generic compute-index-hash-7 (idx :: <sparse-row-indexer-7>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-7 (idx :: <sparse-row-indexer-7>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-7;


define class <sparse-row-indexer-8> (<object>)
  slot index-offset :: <integer> = 8;
end class <sparse-row-indexer-8>;

define generic compute-index-hash-8 (idx :: <sparse-row-indexer-8>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-8 (idx :: <sparse-row-indexer-8>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-8;


define class <sparse-row-indexer-9> (<object>)
  slot index-offset :: <integer> = 9;
end class <sparse-row-indexer-9>;

define generic compute-index-hash-9 (idx :: <sparse-row-indexer-9>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-9 (idx :: <sparse-row-indexer-9>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-9;


define class <sparse-row-indexer-10> (<object>)
  slot index-offset :: <integer> = 10;
end class <sparse-row-indexer-10>;

define generic compute-index-hash-10 (idx :: <sparse-row-indexer-10>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-10 (idx :: <sparse-row-indexer-10>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-10;


define class <sparse-row-indexer-11> (<object>)
  slot index-offset :: <integer> = 11;
end class <sparse-row-indexer-11>;

define generic compute-index-hash-11 (idx :: <sparse-row-indexer-11>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-11 (idx :: <sparse-row-indexer-11>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-11;


define class <sparse-row-indexer-12> (<object>)
  slot index-offset :: <integer> = 12;
end class <sparse-row-indexer-12>;

define generic compute-index-hash-12 (idx :: <sparse-row-indexer-12>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-12 (idx :: <sparse-row-indexer-12>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-12;


define class <sparse-row-indexer-13> (<object>)
  slot index-offset :: <integer> = 13;
end class <sparse-row-indexer-13>;

define generic compute-index-hash-13 (idx :: <sparse-row-indexer-13>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-13 (idx :: <sparse-row-indexer-13>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-13;


define class <sparse-row-indexer-14> (<object>)
  slot index-offset :: <integer> = 14;
end class <sparse-row-indexer-14>;

define generic compute-index-hash-14 (idx :: <sparse-row-indexer-14>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-14 (idx :: <sparse-row-indexer-14>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-14;


define class <sparse-row-indexer-15> (<object>)
  slot index-offset :: <integer> = 15;
end class <sparse-row-indexer-15>;

define generic compute-index-hash-15 (idx :: <sparse-row-indexer-15>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-15 (idx :: <sparse-row-indexer-15>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-15;


define class <sparse-row-indexer-16> (<object>)
  slot index-offset :: <integer> = 16;
end class <sparse-row-indexer-16>;

define generic compute-index-hash-16 (idx :: <sparse-row-indexer-16>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-16 (idx :: <sparse-row-indexer-16>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-16;


define class <sparse-row-indexer-17> (<object>)
  slot index-offset :: <integer> = 17;
end class <sparse-row-indexer-17>;

define generic compute-index-hash-17 (idx :: <sparse-row-indexer-17>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-17 (idx :: <sparse-row-indexer-17>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-17;


define class <sparse-row-indexer-18> (<object>)
  slot index-offset :: <integer> = 18;
end class <sparse-row-indexer-18>;

define generic compute-index-hash-18 (idx :: <sparse-row-indexer-18>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-18 (idx :: <sparse-row-indexer-18>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-18;


define class <sparse-row-indexer-19> (<object>)
  slot index-offset :: <integer> = 19;
end class <sparse-row-indexer-19>;

define generic compute-index-hash-19 (idx :: <sparse-row-indexer-19>, r :: <integer>, c :: <integer>) => (h :: <integer>);
define method compute-index-hash-19 (idx :: <sparse-row-indexer-19>, r :: <integer>, c :: <integer>) => (h :: <integer>)
  (r * 1000 + c + idx.index-offset);
end method compute-index-hash-19;
