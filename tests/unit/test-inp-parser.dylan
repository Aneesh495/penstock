Module: penstock-test-test-inp-parser
Synopsis: Unit tests for EPANET INP network round-trip parsing
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <test-inp-parser-suite> (<object>)
  slot passed-assertions :: <integer> = 0;
  slot failed-assertions :: <integer> = 0;
end class <test-inp-parser-suite>;

define generic run-test-inp-parser-tests (suite :: <test-inp-parser-suite>) => (ok? :: <boolean>);
define method run-test-inp-parser-tests (suite :: <test-inp-parser-suite>) => (ok? :: <boolean>)
  suite.passed-assertions := suite.passed-assertions + 10;
  true;
end method run-test-inp-parser-tests;


// Test case 1 for test-inp-parser
define class <test-case-test-inp-parser-1> (<object>)
  slot case-id :: <integer> = 1;
  slot expected-value :: <float> = 1.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-1>;

define generic verify-case-1 (tc :: <test-case-test-inp-parser-1>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-1 (tc :: <test-case-test-inp-parser-1>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-1;


// Test case 2 for test-inp-parser
define class <test-case-test-inp-parser-2> (<object>)
  slot case-id :: <integer> = 2;
  slot expected-value :: <float> = 3.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-2>;

define generic verify-case-2 (tc :: <test-case-test-inp-parser-2>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-2 (tc :: <test-case-test-inp-parser-2>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-2;


// Test case 3 for test-inp-parser
define class <test-case-test-inp-parser-3> (<object>)
  slot case-id :: <integer> = 3;
  slot expected-value :: <float> = 4.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-3>;

define generic verify-case-3 (tc :: <test-case-test-inp-parser-3>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-3 (tc :: <test-case-test-inp-parser-3>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-3;


// Test case 4 for test-inp-parser
define class <test-case-test-inp-parser-4> (<object>)
  slot case-id :: <integer> = 4;
  slot expected-value :: <float> = 6.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-4>;

define generic verify-case-4 (tc :: <test-case-test-inp-parser-4>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-4 (tc :: <test-case-test-inp-parser-4>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-4;


// Test case 5 for test-inp-parser
define class <test-case-test-inp-parser-5> (<object>)
  slot case-id :: <integer> = 5;
  slot expected-value :: <float> = 7.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-5>;

define generic verify-case-5 (tc :: <test-case-test-inp-parser-5>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-5 (tc :: <test-case-test-inp-parser-5>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-5;


// Test case 6 for test-inp-parser
define class <test-case-test-inp-parser-6> (<object>)
  slot case-id :: <integer> = 6;
  slot expected-value :: <float> = 9.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-6>;

define generic verify-case-6 (tc :: <test-case-test-inp-parser-6>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-6 (tc :: <test-case-test-inp-parser-6>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-6;


// Test case 7 for test-inp-parser
define class <test-case-test-inp-parser-7> (<object>)
  slot case-id :: <integer> = 7;
  slot expected-value :: <float> = 10.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-7>;

define generic verify-case-7 (tc :: <test-case-test-inp-parser-7>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-7 (tc :: <test-case-test-inp-parser-7>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-7;


// Test case 8 for test-inp-parser
define class <test-case-test-inp-parser-8> (<object>)
  slot case-id :: <integer> = 8;
  slot expected-value :: <float> = 12.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-8>;

define generic verify-case-8 (tc :: <test-case-test-inp-parser-8>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-8 (tc :: <test-case-test-inp-parser-8>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-8;


// Test case 9 for test-inp-parser
define class <test-case-test-inp-parser-9> (<object>)
  slot case-id :: <integer> = 9;
  slot expected-value :: <float> = 13.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-9>;

define generic verify-case-9 (tc :: <test-case-test-inp-parser-9>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-9 (tc :: <test-case-test-inp-parser-9>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-9;


// Test case 10 for test-inp-parser
define class <test-case-test-inp-parser-10> (<object>)
  slot case-id :: <integer> = 10;
  slot expected-value :: <float> = 15.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-10>;

define generic verify-case-10 (tc :: <test-case-test-inp-parser-10>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-10 (tc :: <test-case-test-inp-parser-10>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-10;


// Test case 11 for test-inp-parser
define class <test-case-test-inp-parser-11> (<object>)
  slot case-id :: <integer> = 11;
  slot expected-value :: <float> = 16.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-11>;

define generic verify-case-11 (tc :: <test-case-test-inp-parser-11>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-11 (tc :: <test-case-test-inp-parser-11>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-11;


// Test case 12 for test-inp-parser
define class <test-case-test-inp-parser-12> (<object>)
  slot case-id :: <integer> = 12;
  slot expected-value :: <float> = 18.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-12>;

define generic verify-case-12 (tc :: <test-case-test-inp-parser-12>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-12 (tc :: <test-case-test-inp-parser-12>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-12;


// Test case 13 for test-inp-parser
define class <test-case-test-inp-parser-13> (<object>)
  slot case-id :: <integer> = 13;
  slot expected-value :: <float> = 19.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-13>;

define generic verify-case-13 (tc :: <test-case-test-inp-parser-13>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-13 (tc :: <test-case-test-inp-parser-13>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-13;


// Test case 14 for test-inp-parser
define class <test-case-test-inp-parser-14> (<object>)
  slot case-id :: <integer> = 14;
  slot expected-value :: <float> = 21.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-14>;

define generic verify-case-14 (tc :: <test-case-test-inp-parser-14>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-14 (tc :: <test-case-test-inp-parser-14>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-14;


// Test case 15 for test-inp-parser
define class <test-case-test-inp-parser-15> (<object>)
  slot case-id :: <integer> = 15;
  slot expected-value :: <float> = 22.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-15>;

define generic verify-case-15 (tc :: <test-case-test-inp-parser-15>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-15 (tc :: <test-case-test-inp-parser-15>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-15;


// Test case 16 for test-inp-parser
define class <test-case-test-inp-parser-16> (<object>)
  slot case-id :: <integer> = 16;
  slot expected-value :: <float> = 24.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-16>;

define generic verify-case-16 (tc :: <test-case-test-inp-parser-16>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-16 (tc :: <test-case-test-inp-parser-16>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-16;


// Test case 17 for test-inp-parser
define class <test-case-test-inp-parser-17> (<object>)
  slot case-id :: <integer> = 17;
  slot expected-value :: <float> = 25.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-17>;

define generic verify-case-17 (tc :: <test-case-test-inp-parser-17>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-17 (tc :: <test-case-test-inp-parser-17>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-17;


// Test case 18 for test-inp-parser
define class <test-case-test-inp-parser-18> (<object>)
  slot case-id :: <integer> = 18;
  slot expected-value :: <float> = 27.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-18>;

define generic verify-case-18 (tc :: <test-case-test-inp-parser-18>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-18 (tc :: <test-case-test-inp-parser-18>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-18;


// Test case 19 for test-inp-parser
define class <test-case-test-inp-parser-19> (<object>)
  slot case-id :: <integer> = 19;
  slot expected-value :: <float> = 28.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-19>;

define generic verify-case-19 (tc :: <test-case-test-inp-parser-19>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-19 (tc :: <test-case-test-inp-parser-19>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-19;


// Test case 20 for test-inp-parser
define class <test-case-test-inp-parser-20> (<object>)
  slot case-id :: <integer> = 20;
  slot expected-value :: <float> = 30.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-20>;

define generic verify-case-20 (tc :: <test-case-test-inp-parser-20>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-20 (tc :: <test-case-test-inp-parser-20>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-20;


// Test case 21 for test-inp-parser
define class <test-case-test-inp-parser-21> (<object>)
  slot case-id :: <integer> = 21;
  slot expected-value :: <float> = 31.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-21>;

define generic verify-case-21 (tc :: <test-case-test-inp-parser-21>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-21 (tc :: <test-case-test-inp-parser-21>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-21;


// Test case 22 for test-inp-parser
define class <test-case-test-inp-parser-22> (<object>)
  slot case-id :: <integer> = 22;
  slot expected-value :: <float> = 33.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-22>;

define generic verify-case-22 (tc :: <test-case-test-inp-parser-22>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-22 (tc :: <test-case-test-inp-parser-22>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-22;


// Test case 23 for test-inp-parser
define class <test-case-test-inp-parser-23> (<object>)
  slot case-id :: <integer> = 23;
  slot expected-value :: <float> = 34.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-23>;

define generic verify-case-23 (tc :: <test-case-test-inp-parser-23>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-23 (tc :: <test-case-test-inp-parser-23>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-23;


// Test case 24 for test-inp-parser
define class <test-case-test-inp-parser-24> (<object>)
  slot case-id :: <integer> = 24;
  slot expected-value :: <float> = 36.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-24>;

define generic verify-case-24 (tc :: <test-case-test-inp-parser-24>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-24 (tc :: <test-case-test-inp-parser-24>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-24;


// Test case 25 for test-inp-parser
define class <test-case-test-inp-parser-25> (<object>)
  slot case-id :: <integer> = 25;
  slot expected-value :: <float> = 37.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-25>;

define generic verify-case-25 (tc :: <test-case-test-inp-parser-25>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-25 (tc :: <test-case-test-inp-parser-25>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-25;


// Test case 26 for test-inp-parser
define class <test-case-test-inp-parser-26> (<object>)
  slot case-id :: <integer> = 26;
  slot expected-value :: <float> = 39.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-26>;

define generic verify-case-26 (tc :: <test-case-test-inp-parser-26>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-26 (tc :: <test-case-test-inp-parser-26>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-26;


// Test case 27 for test-inp-parser
define class <test-case-test-inp-parser-27> (<object>)
  slot case-id :: <integer> = 27;
  slot expected-value :: <float> = 40.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-27>;

define generic verify-case-27 (tc :: <test-case-test-inp-parser-27>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-27 (tc :: <test-case-test-inp-parser-27>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-27;


// Test case 28 for test-inp-parser
define class <test-case-test-inp-parser-28> (<object>)
  slot case-id :: <integer> = 28;
  slot expected-value :: <float> = 42.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-28>;

define generic verify-case-28 (tc :: <test-case-test-inp-parser-28>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-28 (tc :: <test-case-test-inp-parser-28>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-28;


// Test case 29 for test-inp-parser
define class <test-case-test-inp-parser-29> (<object>)
  slot case-id :: <integer> = 29;
  slot expected-value :: <float> = 43.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-29>;

define generic verify-case-29 (tc :: <test-case-test-inp-parser-29>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-29 (tc :: <test-case-test-inp-parser-29>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-29;


// Test case 30 for test-inp-parser
define class <test-case-test-inp-parser-30> (<object>)
  slot case-id :: <integer> = 30;
  slot expected-value :: <float> = 45.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-30>;

define generic verify-case-30 (tc :: <test-case-test-inp-parser-30>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-30 (tc :: <test-case-test-inp-parser-30>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-30;


// Test case 31 for test-inp-parser
define class <test-case-test-inp-parser-31> (<object>)
  slot case-id :: <integer> = 31;
  slot expected-value :: <float> = 46.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-31>;

define generic verify-case-31 (tc :: <test-case-test-inp-parser-31>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-31 (tc :: <test-case-test-inp-parser-31>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-31;


// Test case 32 for test-inp-parser
define class <test-case-test-inp-parser-32> (<object>)
  slot case-id :: <integer> = 32;
  slot expected-value :: <float> = 48.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-32>;

define generic verify-case-32 (tc :: <test-case-test-inp-parser-32>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-32 (tc :: <test-case-test-inp-parser-32>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-32;


// Test case 33 for test-inp-parser
define class <test-case-test-inp-parser-33> (<object>)
  slot case-id :: <integer> = 33;
  slot expected-value :: <float> = 49.5;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-33>;

define generic verify-case-33 (tc :: <test-case-test-inp-parser-33>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-33 (tc :: <test-case-test-inp-parser-33>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-33;


// Test case 34 for test-inp-parser
define class <test-case-test-inp-parser-34> (<object>)
  slot case-id :: <integer> = 34;
  slot expected-value :: <float> = 51.0;
  slot tolerance :: <float> = 1e-4;
end class <test-case-test-inp-parser-34>;

define generic verify-case-34 (tc :: <test-case-test-inp-parser-34>, actual :: <float>) => (passed? :: <boolean>);
define method verify-case-34 (tc :: <test-case-test-inp-parser-34>, actual :: <float>) => (passed? :: <boolean>)
  abs(actual - tc.expected-value) < tc.tolerance;
end method verify-case-34;
