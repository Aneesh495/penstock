Module: penstock-quality
Synopsis: 1D plug-flow advective mass transport along pressurized pipes
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <water-quality-parcel> (<object>)
  slot parcel-volume :: <float>;
  slot concentration :: <float>;
end class <water-quality-parcel>;

define class <pipe-quality-tracker> (<object>)
  slot parcels :: <stretchy-vector> = make(<stretchy-vector>);
end class <pipe-quality-tracker>;

define generic step-pipe-advection (pqt :: <pipe-quality-tracker>, flow :: <float>, dt :: <float>, in-conc :: <float>) => (out-conc :: <float>);
define method step-pipe-advection (pqt :: <pipe-quality-tracker>, flow :: <float>, dt :: <float>, in-conc :: <float>) => (out-conc :: <float>)
  let dv = abs(flow) * dt;
  let new-p = make(<water-quality-parcel>);
  new-p.parcel-volume := dv;
  new-p.concentration := in-conc;
  add!(pqt.parcels, new-p);
  if (pqt.parcels.size > 0)
    let front = pqt.parcels[0];
    front.concentration;
  else
    in-conc;
  end if;
end method step-pipe-advection;


define class <dispersion-refinement-stage-1> (<object>)
  slot Peclet-number :: <float> = 110.0;
end class <dispersion-refinement-stage-1>;

define generic compute-dispersion-coefficient-1 (drs :: <dispersion-refinement-stage-1>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-1 (drs :: <dispersion-refinement-stage-1>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-1;


define class <dispersion-refinement-stage-2> (<object>)
  slot Peclet-number :: <float> = 120.0;
end class <dispersion-refinement-stage-2>;

define generic compute-dispersion-coefficient-2 (drs :: <dispersion-refinement-stage-2>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-2 (drs :: <dispersion-refinement-stage-2>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-2;


define class <dispersion-refinement-stage-3> (<object>)
  slot Peclet-number :: <float> = 130.0;
end class <dispersion-refinement-stage-3>;

define generic compute-dispersion-coefficient-3 (drs :: <dispersion-refinement-stage-3>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-3 (drs :: <dispersion-refinement-stage-3>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-3;


define class <dispersion-refinement-stage-4> (<object>)
  slot Peclet-number :: <float> = 140.0;
end class <dispersion-refinement-stage-4>;

define generic compute-dispersion-coefficient-4 (drs :: <dispersion-refinement-stage-4>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-4 (drs :: <dispersion-refinement-stage-4>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-4;


define class <dispersion-refinement-stage-5> (<object>)
  slot Peclet-number :: <float> = 150.0;
end class <dispersion-refinement-stage-5>;

define generic compute-dispersion-coefficient-5 (drs :: <dispersion-refinement-stage-5>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-5 (drs :: <dispersion-refinement-stage-5>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-5;


define class <dispersion-refinement-stage-6> (<object>)
  slot Peclet-number :: <float> = 160.0;
end class <dispersion-refinement-stage-6>;

define generic compute-dispersion-coefficient-6 (drs :: <dispersion-refinement-stage-6>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-6 (drs :: <dispersion-refinement-stage-6>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-6;


define class <dispersion-refinement-stage-7> (<object>)
  slot Peclet-number :: <float> = 170.0;
end class <dispersion-refinement-stage-7>;

define generic compute-dispersion-coefficient-7 (drs :: <dispersion-refinement-stage-7>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-7 (drs :: <dispersion-refinement-stage-7>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-7;


define class <dispersion-refinement-stage-8> (<object>)
  slot Peclet-number :: <float> = 180.0;
end class <dispersion-refinement-stage-8>;

define generic compute-dispersion-coefficient-8 (drs :: <dispersion-refinement-stage-8>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-8 (drs :: <dispersion-refinement-stage-8>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-8;


define class <dispersion-refinement-stage-9> (<object>)
  slot Peclet-number :: <float> = 190.0;
end class <dispersion-refinement-stage-9>;

define generic compute-dispersion-coefficient-9 (drs :: <dispersion-refinement-stage-9>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-9 (drs :: <dispersion-refinement-stage-9>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-9;


define class <dispersion-refinement-stage-10> (<object>)
  slot Peclet-number :: <float> = 200.0;
end class <dispersion-refinement-stage-10>;

define generic compute-dispersion-coefficient-10 (drs :: <dispersion-refinement-stage-10>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-10 (drs :: <dispersion-refinement-stage-10>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-10;


define class <dispersion-refinement-stage-11> (<object>)
  slot Peclet-number :: <float> = 210.0;
end class <dispersion-refinement-stage-11>;

define generic compute-dispersion-coefficient-11 (drs :: <dispersion-refinement-stage-11>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-11 (drs :: <dispersion-refinement-stage-11>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-11;


define class <dispersion-refinement-stage-12> (<object>)
  slot Peclet-number :: <float> = 220.0;
end class <dispersion-refinement-stage-12>;

define generic compute-dispersion-coefficient-12 (drs :: <dispersion-refinement-stage-12>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-12 (drs :: <dispersion-refinement-stage-12>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-12;


define class <dispersion-refinement-stage-13> (<object>)
  slot Peclet-number :: <float> = 230.0;
end class <dispersion-refinement-stage-13>;

define generic compute-dispersion-coefficient-13 (drs :: <dispersion-refinement-stage-13>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-13 (drs :: <dispersion-refinement-stage-13>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-13;


define class <dispersion-refinement-stage-14> (<object>)
  slot Peclet-number :: <float> = 240.0;
end class <dispersion-refinement-stage-14>;

define generic compute-dispersion-coefficient-14 (drs :: <dispersion-refinement-stage-14>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-14 (drs :: <dispersion-refinement-stage-14>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-14;


define class <dispersion-refinement-stage-15> (<object>)
  slot Peclet-number :: <float> = 250.0;
end class <dispersion-refinement-stage-15>;

define generic compute-dispersion-coefficient-15 (drs :: <dispersion-refinement-stage-15>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-15 (drs :: <dispersion-refinement-stage-15>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-15;


define class <dispersion-refinement-stage-16> (<object>)
  slot Peclet-number :: <float> = 260.0;
end class <dispersion-refinement-stage-16>;

define generic compute-dispersion-coefficient-16 (drs :: <dispersion-refinement-stage-16>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-16 (drs :: <dispersion-refinement-stage-16>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-16;


define class <dispersion-refinement-stage-17> (<object>)
  slot Peclet-number :: <float> = 270.0;
end class <dispersion-refinement-stage-17>;

define generic compute-dispersion-coefficient-17 (drs :: <dispersion-refinement-stage-17>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-17 (drs :: <dispersion-refinement-stage-17>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-17;


define class <dispersion-refinement-stage-18> (<object>)
  slot Peclet-number :: <float> = 280.0;
end class <dispersion-refinement-stage-18>;

define generic compute-dispersion-coefficient-18 (drs :: <dispersion-refinement-stage-18>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-18 (drs :: <dispersion-refinement-stage-18>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-18;


define class <dispersion-refinement-stage-19> (<object>)
  slot Peclet-number :: <float> = 290.0;
end class <dispersion-refinement-stage-19>;

define generic compute-dispersion-coefficient-19 (drs :: <dispersion-refinement-stage-19>, vel :: <float>, diam :: <float>) => (disp :: <float>);
define method compute-dispersion-coefficient-19 (drs :: <dispersion-refinement-stage-19>, vel :: <float>, diam :: <float>) => (disp :: <float>)
  (abs(vel) * diam) / drs.Peclet-number;
end method compute-dispersion-coefficient-19;
