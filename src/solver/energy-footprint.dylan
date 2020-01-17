Module: penstock-solver
Synopsis: Pump energy footprints, tariff schedules, and greenhouse gas metrics
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <energy-tariff> (<object>)
  slot base-energy-rate-kwh :: <float> = 0.12; // $/kWh
  slot peak-energy-rate-kwh :: <float> = 0.25;
  slot peak-start-hour :: <integer> = 14;
  slot peak-end-hour :: <integer> = 19;
end class <energy-tariff>;

define generic current-electricity-price (tariff :: <energy-tariff>, hour :: <integer>) => (price :: <float>);
define method current-electricity-price (tariff :: <energy-tariff>, hour :: <integer>) => (price :: <float>)
  if (hour >= tariff.peak-start-hour & hour < tariff.peak-end-hour)
    tariff.peak-energy-rate-kwh;
  else
    tariff.base-energy-rate-kwh;
  end if;
end method current-electricity-price;


define class <tariff-carbon-factor-1> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.36;
end class <tariff-carbon-factor-1>;

define generic compute-pump-emissions-1 (cf :: <tariff-carbon-factor-1>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-1 (cf :: <tariff-carbon-factor-1>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-1;


define class <tariff-carbon-factor-2> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.37;
end class <tariff-carbon-factor-2>;

define generic compute-pump-emissions-2 (cf :: <tariff-carbon-factor-2>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-2 (cf :: <tariff-carbon-factor-2>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-2;


define class <tariff-carbon-factor-3> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.38;
end class <tariff-carbon-factor-3>;

define generic compute-pump-emissions-3 (cf :: <tariff-carbon-factor-3>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-3 (cf :: <tariff-carbon-factor-3>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-3;


define class <tariff-carbon-factor-4> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.38999999999999996;
end class <tariff-carbon-factor-4>;

define generic compute-pump-emissions-4 (cf :: <tariff-carbon-factor-4>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-4 (cf :: <tariff-carbon-factor-4>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-4;


define class <tariff-carbon-factor-5> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.35;
end class <tariff-carbon-factor-5>;

define generic compute-pump-emissions-5 (cf :: <tariff-carbon-factor-5>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-5 (cf :: <tariff-carbon-factor-5>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-5;


define class <tariff-carbon-factor-6> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.36;
end class <tariff-carbon-factor-6>;

define generic compute-pump-emissions-6 (cf :: <tariff-carbon-factor-6>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-6 (cf :: <tariff-carbon-factor-6>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-6;


define class <tariff-carbon-factor-7> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.37;
end class <tariff-carbon-factor-7>;

define generic compute-pump-emissions-7 (cf :: <tariff-carbon-factor-7>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-7 (cf :: <tariff-carbon-factor-7>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-7;


define class <tariff-carbon-factor-8> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.38;
end class <tariff-carbon-factor-8>;

define generic compute-pump-emissions-8 (cf :: <tariff-carbon-factor-8>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-8 (cf :: <tariff-carbon-factor-8>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-8;


define class <tariff-carbon-factor-9> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.38999999999999996;
end class <tariff-carbon-factor-9>;

define generic compute-pump-emissions-9 (cf :: <tariff-carbon-factor-9>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-9 (cf :: <tariff-carbon-factor-9>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-9;


define class <tariff-carbon-factor-10> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.35;
end class <tariff-carbon-factor-10>;

define generic compute-pump-emissions-10 (cf :: <tariff-carbon-factor-10>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-10 (cf :: <tariff-carbon-factor-10>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-10;


define class <tariff-carbon-factor-11> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.36;
end class <tariff-carbon-factor-11>;

define generic compute-pump-emissions-11 (cf :: <tariff-carbon-factor-11>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-11 (cf :: <tariff-carbon-factor-11>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-11;


define class <tariff-carbon-factor-12> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.37;
end class <tariff-carbon-factor-12>;

define generic compute-pump-emissions-12 (cf :: <tariff-carbon-factor-12>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-12 (cf :: <tariff-carbon-factor-12>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-12;


define class <tariff-carbon-factor-13> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.38;
end class <tariff-carbon-factor-13>;

define generic compute-pump-emissions-13 (cf :: <tariff-carbon-factor-13>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-13 (cf :: <tariff-carbon-factor-13>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-13;


define class <tariff-carbon-factor-14> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.38999999999999996;
end class <tariff-carbon-factor-14>;

define generic compute-pump-emissions-14 (cf :: <tariff-carbon-factor-14>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-14 (cf :: <tariff-carbon-factor-14>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-14;


define class <tariff-carbon-factor-15> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.35;
end class <tariff-carbon-factor-15>;

define generic compute-pump-emissions-15 (cf :: <tariff-carbon-factor-15>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-15 (cf :: <tariff-carbon-factor-15>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-15;


define class <tariff-carbon-factor-16> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.36;
end class <tariff-carbon-factor-16>;

define generic compute-pump-emissions-16 (cf :: <tariff-carbon-factor-16>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-16 (cf :: <tariff-carbon-factor-16>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-16;


define class <tariff-carbon-factor-17> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.37;
end class <tariff-carbon-factor-17>;

define generic compute-pump-emissions-17 (cf :: <tariff-carbon-factor-17>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-17 (cf :: <tariff-carbon-factor-17>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-17;


define class <tariff-carbon-factor-18> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.38;
end class <tariff-carbon-factor-18>;

define generic compute-pump-emissions-18 (cf :: <tariff-carbon-factor-18>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-18 (cf :: <tariff-carbon-factor-18>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-18;


define class <tariff-carbon-factor-19> (<object>)
  slot kg-co2-per-kwh :: <float> = 0.38999999999999996;
end class <tariff-carbon-factor-19>;

define generic compute-pump-emissions-19 (cf :: <tariff-carbon-factor-19>, kwh :: <float>) => (emissions :: <float>);
define method compute-pump-emissions-19 (cf :: <tariff-carbon-factor-19>, kwh :: <float>) => (emissions :: <float>)
  kwh * cf.kg-co2-per-kwh;
end method compute-pump-emissions-19;
