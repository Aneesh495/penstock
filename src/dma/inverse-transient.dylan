Module: penstock-dma
Synopsis: Inverse Transient Analysis (ITA) pressure wave reflection locator for pipe bursts
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <inverse-transient-analyzer> (<object>)
  slot sensor-sampling-rate-hz :: <float> = 1000.0;
  slot acoustic-wave-speed :: <float> = 1200.0;
end class <inverse-transient-analyzer>;

define generic estimate-burst-location (ita :: <inverse-transient-analyzer>, time-delay-sec :: <float>) => (distance-meters :: <float>);
define method estimate-burst-location (ita :: <inverse-transient-analyzer>, time-delay-sec :: <float>) => (distance-meters :: <float>)
  0.5 * time-delay-sec * ita.acoustic-wave-speed;
end method estimate-burst-location;


define class <ita-wavelet-filter-1> (<object>)
  slot filter-scale :: <integer> = 1;
end class <ita-wavelet-filter-1>;

define generic filter-reflection-peak-1 (iwf :: <ita-wavelet-filter-1>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-1 (iwf :: <ita-wavelet-filter-1>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-1;


define class <ita-wavelet-filter-2> (<object>)
  slot filter-scale :: <integer> = 2;
end class <ita-wavelet-filter-2>;

define generic filter-reflection-peak-2 (iwf :: <ita-wavelet-filter-2>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-2 (iwf :: <ita-wavelet-filter-2>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-2;


define class <ita-wavelet-filter-3> (<object>)
  slot filter-scale :: <integer> = 3;
end class <ita-wavelet-filter-3>;

define generic filter-reflection-peak-3 (iwf :: <ita-wavelet-filter-3>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-3 (iwf :: <ita-wavelet-filter-3>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-3;


define class <ita-wavelet-filter-4> (<object>)
  slot filter-scale :: <integer> = 4;
end class <ita-wavelet-filter-4>;

define generic filter-reflection-peak-4 (iwf :: <ita-wavelet-filter-4>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-4 (iwf :: <ita-wavelet-filter-4>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-4;


define class <ita-wavelet-filter-5> (<object>)
  slot filter-scale :: <integer> = 5;
end class <ita-wavelet-filter-5>;

define generic filter-reflection-peak-5 (iwf :: <ita-wavelet-filter-5>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-5 (iwf :: <ita-wavelet-filter-5>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-5;


define class <ita-wavelet-filter-6> (<object>)
  slot filter-scale :: <integer> = 6;
end class <ita-wavelet-filter-6>;

define generic filter-reflection-peak-6 (iwf :: <ita-wavelet-filter-6>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-6 (iwf :: <ita-wavelet-filter-6>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-6;


define class <ita-wavelet-filter-7> (<object>)
  slot filter-scale :: <integer> = 7;
end class <ita-wavelet-filter-7>;

define generic filter-reflection-peak-7 (iwf :: <ita-wavelet-filter-7>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-7 (iwf :: <ita-wavelet-filter-7>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-7;


define class <ita-wavelet-filter-8> (<object>)
  slot filter-scale :: <integer> = 8;
end class <ita-wavelet-filter-8>;

define generic filter-reflection-peak-8 (iwf :: <ita-wavelet-filter-8>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-8 (iwf :: <ita-wavelet-filter-8>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-8;


define class <ita-wavelet-filter-9> (<object>)
  slot filter-scale :: <integer> = 9;
end class <ita-wavelet-filter-9>;

define generic filter-reflection-peak-9 (iwf :: <ita-wavelet-filter-9>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-9 (iwf :: <ita-wavelet-filter-9>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-9;


define class <ita-wavelet-filter-10> (<object>)
  slot filter-scale :: <integer> = 10;
end class <ita-wavelet-filter-10>;

define generic filter-reflection-peak-10 (iwf :: <ita-wavelet-filter-10>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-10 (iwf :: <ita-wavelet-filter-10>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-10;


define class <ita-wavelet-filter-11> (<object>)
  slot filter-scale :: <integer> = 11;
end class <ita-wavelet-filter-11>;

define generic filter-reflection-peak-11 (iwf :: <ita-wavelet-filter-11>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-11 (iwf :: <ita-wavelet-filter-11>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-11;


define class <ita-wavelet-filter-12> (<object>)
  slot filter-scale :: <integer> = 12;
end class <ita-wavelet-filter-12>;

define generic filter-reflection-peak-12 (iwf :: <ita-wavelet-filter-12>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-12 (iwf :: <ita-wavelet-filter-12>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-12;


define class <ita-wavelet-filter-13> (<object>)
  slot filter-scale :: <integer> = 13;
end class <ita-wavelet-filter-13>;

define generic filter-reflection-peak-13 (iwf :: <ita-wavelet-filter-13>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-13 (iwf :: <ita-wavelet-filter-13>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-13;


define class <ita-wavelet-filter-14> (<object>)
  slot filter-scale :: <integer> = 14;
end class <ita-wavelet-filter-14>;

define generic filter-reflection-peak-14 (iwf :: <ita-wavelet-filter-14>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-14 (iwf :: <ita-wavelet-filter-14>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-14;


define class <ita-wavelet-filter-15> (<object>)
  slot filter-scale :: <integer> = 15;
end class <ita-wavelet-filter-15>;

define generic filter-reflection-peak-15 (iwf :: <ita-wavelet-filter-15>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-15 (iwf :: <ita-wavelet-filter-15>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-15;


define class <ita-wavelet-filter-16> (<object>)
  slot filter-scale :: <integer> = 16;
end class <ita-wavelet-filter-16>;

define generic filter-reflection-peak-16 (iwf :: <ita-wavelet-filter-16>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-16 (iwf :: <ita-wavelet-filter-16>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-16;


define class <ita-wavelet-filter-17> (<object>)
  slot filter-scale :: <integer> = 17;
end class <ita-wavelet-filter-17>;

define generic filter-reflection-peak-17 (iwf :: <ita-wavelet-filter-17>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-17 (iwf :: <ita-wavelet-filter-17>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-17;


define class <ita-wavelet-filter-18> (<object>)
  slot filter-scale :: <integer> = 18;
end class <ita-wavelet-filter-18>;

define generic filter-reflection-peak-18 (iwf :: <ita-wavelet-filter-18>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-18 (iwf :: <ita-wavelet-filter-18>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-18;


define class <ita-wavelet-filter-19> (<object>)
  slot filter-scale :: <integer> = 19;
end class <ita-wavelet-filter-19>;

define generic filter-reflection-peak-19 (iwf :: <ita-wavelet-filter-19>, raw-signal :: <float>) => (peak :: <float>);
define method filter-reflection-peak-19 (iwf :: <ita-wavelet-filter-19>, raw-signal :: <float>) => (peak :: <float>)
  raw-signal * (1.0 / sqrt(float(iwf.filter-scale)));
end method filter-reflection-peak-19;
