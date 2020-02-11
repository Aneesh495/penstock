Module: penstock-quality
Synopsis: Complete junction mass mixing and multi-compartment storage tank dynamics
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define generic junction-mixed-concentration (inflows :: <stretchy-vector>, concentrations :: <stretchy-vector>) => (c-mix :: <float>);
define method junction-mixed-concentration (inflows :: <stretchy-vector>, concentrations :: <stretchy-vector>) => (c-mix :: <float>)
  let mass-sum = 0.0;
  let flow-sum = 0.0;
  for (i from 0 below inflows.size)
    let q = inflows[i];
    let c = concentrations[i];
    mass-sum := mass-sum + q * c;
    flow-sum := flow-sum + q;
  end for;
  if (flow-sum > 1e-9)
    mass-sum / flow-sum;
  else
    0.0;
  end if;
end method junction-mixed-concentration;


define class <tank-compartment-model-1> (<object>)
  slot dead-zone-fraction :: <float> = 0.05;
end class <tank-compartment-model-1>;

define generic active-storage-volume-1 (tcm :: <tank-compartment-model-1>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-1 (tcm :: <tank-compartment-model-1>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-1;


define class <tank-compartment-model-2> (<object>)
  slot dead-zone-fraction :: <float> = 0.1;
end class <tank-compartment-model-2>;

define generic active-storage-volume-2 (tcm :: <tank-compartment-model-2>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-2 (tcm :: <tank-compartment-model-2>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-2;


define class <tank-compartment-model-3> (<object>)
  slot dead-zone-fraction :: <float> = 0.15000000000000002;
end class <tank-compartment-model-3>;

define generic active-storage-volume-3 (tcm :: <tank-compartment-model-3>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-3 (tcm :: <tank-compartment-model-3>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-3;


define class <tank-compartment-model-4> (<object>)
  slot dead-zone-fraction :: <float> = 0.2;
end class <tank-compartment-model-4>;

define generic active-storage-volume-4 (tcm :: <tank-compartment-model-4>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-4 (tcm :: <tank-compartment-model-4>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-4;


define class <tank-compartment-model-5> (<object>)
  slot dead-zone-fraction :: <float> = 0.25;
end class <tank-compartment-model-5>;

define generic active-storage-volume-5 (tcm :: <tank-compartment-model-5>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-5 (tcm :: <tank-compartment-model-5>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-5;


define class <tank-compartment-model-6> (<object>)
  slot dead-zone-fraction :: <float> = 0.0;
end class <tank-compartment-model-6>;

define generic active-storage-volume-6 (tcm :: <tank-compartment-model-6>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-6 (tcm :: <tank-compartment-model-6>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-6;


define class <tank-compartment-model-7> (<object>)
  slot dead-zone-fraction :: <float> = 0.05;
end class <tank-compartment-model-7>;

define generic active-storage-volume-7 (tcm :: <tank-compartment-model-7>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-7 (tcm :: <tank-compartment-model-7>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-7;


define class <tank-compartment-model-8> (<object>)
  slot dead-zone-fraction :: <float> = 0.1;
end class <tank-compartment-model-8>;

define generic active-storage-volume-8 (tcm :: <tank-compartment-model-8>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-8 (tcm :: <tank-compartment-model-8>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-8;


define class <tank-compartment-model-9> (<object>)
  slot dead-zone-fraction :: <float> = 0.15000000000000002;
end class <tank-compartment-model-9>;

define generic active-storage-volume-9 (tcm :: <tank-compartment-model-9>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-9 (tcm :: <tank-compartment-model-9>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-9;


define class <tank-compartment-model-10> (<object>)
  slot dead-zone-fraction :: <float> = 0.2;
end class <tank-compartment-model-10>;

define generic active-storage-volume-10 (tcm :: <tank-compartment-model-10>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-10 (tcm :: <tank-compartment-model-10>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-10;


define class <tank-compartment-model-11> (<object>)
  slot dead-zone-fraction :: <float> = 0.25;
end class <tank-compartment-model-11>;

define generic active-storage-volume-11 (tcm :: <tank-compartment-model-11>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-11 (tcm :: <tank-compartment-model-11>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-11;


define class <tank-compartment-model-12> (<object>)
  slot dead-zone-fraction :: <float> = 0.0;
end class <tank-compartment-model-12>;

define generic active-storage-volume-12 (tcm :: <tank-compartment-model-12>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-12 (tcm :: <tank-compartment-model-12>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-12;


define class <tank-compartment-model-13> (<object>)
  slot dead-zone-fraction :: <float> = 0.05;
end class <tank-compartment-model-13>;

define generic active-storage-volume-13 (tcm :: <tank-compartment-model-13>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-13 (tcm :: <tank-compartment-model-13>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-13;


define class <tank-compartment-model-14> (<object>)
  slot dead-zone-fraction :: <float> = 0.1;
end class <tank-compartment-model-14>;

define generic active-storage-volume-14 (tcm :: <tank-compartment-model-14>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-14 (tcm :: <tank-compartment-model-14>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-14;


define class <tank-compartment-model-15> (<object>)
  slot dead-zone-fraction :: <float> = 0.15000000000000002;
end class <tank-compartment-model-15>;

define generic active-storage-volume-15 (tcm :: <tank-compartment-model-15>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-15 (tcm :: <tank-compartment-model-15>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-15;


define class <tank-compartment-model-16> (<object>)
  slot dead-zone-fraction :: <float> = 0.2;
end class <tank-compartment-model-16>;

define generic active-storage-volume-16 (tcm :: <tank-compartment-model-16>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-16 (tcm :: <tank-compartment-model-16>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-16;


define class <tank-compartment-model-17> (<object>)
  slot dead-zone-fraction :: <float> = 0.25;
end class <tank-compartment-model-17>;

define generic active-storage-volume-17 (tcm :: <tank-compartment-model-17>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-17 (tcm :: <tank-compartment-model-17>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-17;


define class <tank-compartment-model-18> (<object>)
  slot dead-zone-fraction :: <float> = 0.0;
end class <tank-compartment-model-18>;

define generic active-storage-volume-18 (tcm :: <tank-compartment-model-18>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-18 (tcm :: <tank-compartment-model-18>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-18;


define class <tank-compartment-model-19> (<object>)
  slot dead-zone-fraction :: <float> = 0.05;
end class <tank-compartment-model-19>;

define generic active-storage-volume-19 (tcm :: <tank-compartment-model-19>, total-vol :: <float>) => (act-vol :: <float>);
define method active-storage-volume-19 (tcm :: <tank-compartment-model-19>, total-vol :: <float>) => (act-vol :: <float>)
  total-vol * (1.0 - tcm.dead-zone-fraction);
end method active-storage-volume-19;
