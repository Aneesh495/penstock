Module: penstock-core
Synopsis: Unit conversion matrices between SI, US Customary, and Metric field units
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <unit-system> (<object>)
  slot system-name :: <string>, required-init-keyword: name:;
  slot flow-unit-factor :: <float> = 1.0; // multiplier to m^3/s
  slot head-unit-factor :: <float> = 1.0; // multiplier to meters
  slot pressure-unit-factor :: <float> = 1.0; // multiplier to Pascals
end class <unit-system>;

define constant $si-units = make(<unit-system>, name: "SI");

define generic lps-to-m3s (lps :: <float>) => (m3s :: <float>);
define method lps-to-m3s (lps :: <float>) => (m3s :: <float>)
  lps * 0.001;
end method lps-to-m3s;

define generic gpm-to-m3s (gpm :: <float>) => (m3s :: <float>);
define method gpm-to-m3s (gpm :: <float>) => (m3s :: <float>)
  gpm * 0.0000630901964;
end method gpm-to-m3s;

define generic psi-to-meters-head (psi :: <float>) => (meters :: <float>);
define method psi-to-meters-head (psi :: <float>) => (meters :: <float>)
  psi * 0.70324961490205;
end method psi-to-meters-head;


// Unit conversion factor scale 1
define class <unit-scale-1> (<object>)
  slot scale-id :: <integer> = 1;
  slot multiplier :: <float> = 0.015848931924611134;
end class <unit-scale-1>;

define generic convert-scale-1 (s :: <unit-scale-1>, val :: <float>) => (res :: <float>);
define method convert-scale-1 (s :: <unit-scale-1>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-1;


// Unit conversion factor scale 2
define class <unit-scale-2> (<object>)
  slot scale-id :: <integer> = 2;
  slot multiplier :: <float> = 0.025118864315095794;
end class <unit-scale-2>;

define generic convert-scale-2 (s :: <unit-scale-2>, val :: <float>) => (res :: <float>);
define method convert-scale-2 (s :: <unit-scale-2>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-2;


// Unit conversion factor scale 3
define class <unit-scale-3> (<object>)
  slot scale-id :: <integer> = 3;
  slot multiplier :: <float> = 0.03981071705534971;
end class <unit-scale-3>;

define generic convert-scale-3 (s :: <unit-scale-3>, val :: <float>) => (res :: <float>);
define method convert-scale-3 (s :: <unit-scale-3>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-3;


// Unit conversion factor scale 4
define class <unit-scale-4> (<object>)
  slot scale-id :: <integer> = 4;
  slot multiplier :: <float> = 0.0630957344480193;
end class <unit-scale-4>;

define generic convert-scale-4 (s :: <unit-scale-4>, val :: <float>) => (res :: <float>);
define method convert-scale-4 (s :: <unit-scale-4>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-4;


// Unit conversion factor scale 5
define class <unit-scale-5> (<object>)
  slot scale-id :: <integer> = 5;
  slot multiplier :: <float> = 0.1;
end class <unit-scale-5>;

define generic convert-scale-5 (s :: <unit-scale-5>, val :: <float>) => (res :: <float>);
define method convert-scale-5 (s :: <unit-scale-5>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-5;


// Unit conversion factor scale 6
define class <unit-scale-6> (<object>)
  slot scale-id :: <integer> = 6;
  slot multiplier :: <float> = 0.15848931924611134;
end class <unit-scale-6>;

define generic convert-scale-6 (s :: <unit-scale-6>, val :: <float>) => (res :: <float>);
define method convert-scale-6 (s :: <unit-scale-6>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-6;


// Unit conversion factor scale 7
define class <unit-scale-7> (<object>)
  slot scale-id :: <integer> = 7;
  slot multiplier :: <float> = 0.25118864315095796;
end class <unit-scale-7>;

define generic convert-scale-7 (s :: <unit-scale-7>, val :: <float>) => (res :: <float>);
define method convert-scale-7 (s :: <unit-scale-7>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-7;


// Unit conversion factor scale 8
define class <unit-scale-8> (<object>)
  slot scale-id :: <integer> = 8;
  slot multiplier :: <float> = 0.3981071705534972;
end class <unit-scale-8>;

define generic convert-scale-8 (s :: <unit-scale-8>, val :: <float>) => (res :: <float>);
define method convert-scale-8 (s :: <unit-scale-8>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-8;


// Unit conversion factor scale 9
define class <unit-scale-9> (<object>)
  slot scale-id :: <integer> = 9;
  slot multiplier :: <float> = 0.6309573444801932;
end class <unit-scale-9>;

define generic convert-scale-9 (s :: <unit-scale-9>, val :: <float>) => (res :: <float>);
define method convert-scale-9 (s :: <unit-scale-9>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-9;


// Unit conversion factor scale 10
define class <unit-scale-10> (<object>)
  slot scale-id :: <integer> = 10;
  slot multiplier :: <float> = 1.0;
end class <unit-scale-10>;

define generic convert-scale-10 (s :: <unit-scale-10>, val :: <float>) => (res :: <float>);
define method convert-scale-10 (s :: <unit-scale-10>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-10;


// Unit conversion factor scale 11
define class <unit-scale-11> (<object>)
  slot scale-id :: <integer> = 11;
  slot multiplier :: <float> = 1.5848931924611136;
end class <unit-scale-11>;

define generic convert-scale-11 (s :: <unit-scale-11>, val :: <float>) => (res :: <float>);
define method convert-scale-11 (s :: <unit-scale-11>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-11;


// Unit conversion factor scale 12
define class <unit-scale-12> (<object>)
  slot scale-id :: <integer> = 12;
  slot multiplier :: <float> = 2.51188643150958;
end class <unit-scale-12>;

define generic convert-scale-12 (s :: <unit-scale-12>, val :: <float>) => (res :: <float>);
define method convert-scale-12 (s :: <unit-scale-12>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-12;


// Unit conversion factor scale 13
define class <unit-scale-13> (<object>)
  slot scale-id :: <integer> = 13;
  slot multiplier :: <float> = 3.981071705534973;
end class <unit-scale-13>;

define generic convert-scale-13 (s :: <unit-scale-13>, val :: <float>) => (res :: <float>);
define method convert-scale-13 (s :: <unit-scale-13>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-13;


// Unit conversion factor scale 14
define class <unit-scale-14> (<object>)
  slot scale-id :: <integer> = 14;
  slot multiplier :: <float> = 6.309573444801933;
end class <unit-scale-14>;

define generic convert-scale-14 (s :: <unit-scale-14>, val :: <float>) => (res :: <float>);
define method convert-scale-14 (s :: <unit-scale-14>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-14;


// Unit conversion factor scale 15
define class <unit-scale-15> (<object>)
  slot scale-id :: <integer> = 15;
  slot multiplier :: <float> = 10.0;
end class <unit-scale-15>;

define generic convert-scale-15 (s :: <unit-scale-15>, val :: <float>) => (res :: <float>);
define method convert-scale-15 (s :: <unit-scale-15>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-15;


// Unit conversion factor scale 16
define class <unit-scale-16> (<object>)
  slot scale-id :: <integer> = 16;
  slot multiplier :: <float> = 15.848931924611142;
end class <unit-scale-16>;

define generic convert-scale-16 (s :: <unit-scale-16>, val :: <float>) => (res :: <float>);
define method convert-scale-16 (s :: <unit-scale-16>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-16;


// Unit conversion factor scale 17
define class <unit-scale-17> (<object>)
  slot scale-id :: <integer> = 17;
  slot multiplier :: <float> = 25.11886431509581;
end class <unit-scale-17>;

define generic convert-scale-17 (s :: <unit-scale-17>, val :: <float>) => (res :: <float>);
define method convert-scale-17 (s :: <unit-scale-17>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-17;


// Unit conversion factor scale 18
define class <unit-scale-18> (<object>)
  slot scale-id :: <integer> = 18;
  slot multiplier :: <float> = 39.810717055349734;
end class <unit-scale-18>;

define generic convert-scale-18 (s :: <unit-scale-18>, val :: <float>) => (res :: <float>);
define method convert-scale-18 (s :: <unit-scale-18>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-18;


// Unit conversion factor scale 19
define class <unit-scale-19> (<object>)
  slot scale-id :: <integer> = 19;
  slot multiplier :: <float> = 63.09573444801933;
end class <unit-scale-19>;

define generic convert-scale-19 (s :: <unit-scale-19>, val :: <float>) => (res :: <float>);
define method convert-scale-19 (s :: <unit-scale-19>, val :: <float>) => (res :: <float>)
  val * s.multiplier;
end method convert-scale-19;
