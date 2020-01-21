Module: penstock-transient
Synopsis: Pipe material elasticity (Ductile Iron, Steel, HDPE, PVC) and Poisson ratio effects
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <pipe-material-spec> (<object>)
  slot material-name :: <string>, required-init-keyword: name:;
  slot youngs-modulus-gpa :: <float>, required-init-keyword: modulus:;
  slot poissons-ratio :: <float> = 0.3;
  slot tensile-yield-mpa :: <float> = 250.0;
end class <pipe-material-spec>;

define constant $steel-pipe = make(<pipe-material-spec>, name: "Steel", modulus: 206.0, poissons-ratio: 0.30);
define constant $ductile-iron = make(<pipe-material-spec>, name: "Ductile Iron", modulus: 170.0, poissons-ratio: 0.28);
define constant $hdpe-pipe = make(<pipe-material-spec>, name: "HDPE", modulus: 0.8, poissons-ratio: 0.45);
define constant $pvc-pipe = make(<pipe-material-spec>, name: "PVC", modulus: 3.0, poissons-ratio: 0.40);


define class <material-creep-factor-1> (<object>)
  slot creep-duration-hours :: <integer> = 10;
  slot relaxation-modulus-ratio :: <float> = 0.84;
end class <material-creep-factor-1>;

define generic adjust-modulus-creep-1 (mcf :: <material-creep-factor-1>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-1 (mcf :: <material-creep-factor-1>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-1;


define class <material-creep-factor-2> (<object>)
  slot creep-duration-hours :: <integer> = 20;
  slot relaxation-modulus-ratio :: <float> = 0.83;
end class <material-creep-factor-2>;

define generic adjust-modulus-creep-2 (mcf :: <material-creep-factor-2>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-2 (mcf :: <material-creep-factor-2>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-2;


define class <material-creep-factor-3> (<object>)
  slot creep-duration-hours :: <integer> = 30;
  slot relaxation-modulus-ratio :: <float> = 0.82;
end class <material-creep-factor-3>;

define generic adjust-modulus-creep-3 (mcf :: <material-creep-factor-3>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-3 (mcf :: <material-creep-factor-3>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-3;


define class <material-creep-factor-4> (<object>)
  slot creep-duration-hours :: <integer> = 40;
  slot relaxation-modulus-ratio :: <float> = 0.8099999999999999;
end class <material-creep-factor-4>;

define generic adjust-modulus-creep-4 (mcf :: <material-creep-factor-4>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-4 (mcf :: <material-creep-factor-4>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-4;


define class <material-creep-factor-5> (<object>)
  slot creep-duration-hours :: <integer> = 50;
  slot relaxation-modulus-ratio :: <float> = 0.7999999999999999;
end class <material-creep-factor-5>;

define generic adjust-modulus-creep-5 (mcf :: <material-creep-factor-5>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-5 (mcf :: <material-creep-factor-5>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-5;


define class <material-creep-factor-6> (<object>)
  slot creep-duration-hours :: <integer> = 60;
  slot relaxation-modulus-ratio :: <float> = 0.79;
end class <material-creep-factor-6>;

define generic adjust-modulus-creep-6 (mcf :: <material-creep-factor-6>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-6 (mcf :: <material-creep-factor-6>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-6;


define class <material-creep-factor-7> (<object>)
  slot creep-duration-hours :: <integer> = 70;
  slot relaxation-modulus-ratio :: <float> = 0.78;
end class <material-creep-factor-7>;

define generic adjust-modulus-creep-7 (mcf :: <material-creep-factor-7>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-7 (mcf :: <material-creep-factor-7>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-7;


define class <material-creep-factor-8> (<object>)
  slot creep-duration-hours :: <integer> = 80;
  slot relaxation-modulus-ratio :: <float> = 0.85;
end class <material-creep-factor-8>;

define generic adjust-modulus-creep-8 (mcf :: <material-creep-factor-8>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-8 (mcf :: <material-creep-factor-8>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-8;


define class <material-creep-factor-9> (<object>)
  slot creep-duration-hours :: <integer> = 90;
  slot relaxation-modulus-ratio :: <float> = 0.84;
end class <material-creep-factor-9>;

define generic adjust-modulus-creep-9 (mcf :: <material-creep-factor-9>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-9 (mcf :: <material-creep-factor-9>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-9;


define class <material-creep-factor-10> (<object>)
  slot creep-duration-hours :: <integer> = 100;
  slot relaxation-modulus-ratio :: <float> = 0.83;
end class <material-creep-factor-10>;

define generic adjust-modulus-creep-10 (mcf :: <material-creep-factor-10>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-10 (mcf :: <material-creep-factor-10>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-10;


define class <material-creep-factor-11> (<object>)
  slot creep-duration-hours :: <integer> = 110;
  slot relaxation-modulus-ratio :: <float> = 0.82;
end class <material-creep-factor-11>;

define generic adjust-modulus-creep-11 (mcf :: <material-creep-factor-11>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-11 (mcf :: <material-creep-factor-11>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-11;


define class <material-creep-factor-12> (<object>)
  slot creep-duration-hours :: <integer> = 120;
  slot relaxation-modulus-ratio :: <float> = 0.8099999999999999;
end class <material-creep-factor-12>;

define generic adjust-modulus-creep-12 (mcf :: <material-creep-factor-12>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-12 (mcf :: <material-creep-factor-12>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-12;


define class <material-creep-factor-13> (<object>)
  slot creep-duration-hours :: <integer> = 130;
  slot relaxation-modulus-ratio :: <float> = 0.7999999999999999;
end class <material-creep-factor-13>;

define generic adjust-modulus-creep-13 (mcf :: <material-creep-factor-13>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-13 (mcf :: <material-creep-factor-13>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-13;


define class <material-creep-factor-14> (<object>)
  slot creep-duration-hours :: <integer> = 140;
  slot relaxation-modulus-ratio :: <float> = 0.79;
end class <material-creep-factor-14>;

define generic adjust-modulus-creep-14 (mcf :: <material-creep-factor-14>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-14 (mcf :: <material-creep-factor-14>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-14;


define class <material-creep-factor-15> (<object>)
  slot creep-duration-hours :: <integer> = 150;
  slot relaxation-modulus-ratio :: <float> = 0.78;
end class <material-creep-factor-15>;

define generic adjust-modulus-creep-15 (mcf :: <material-creep-factor-15>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-15 (mcf :: <material-creep-factor-15>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-15;


define class <material-creep-factor-16> (<object>)
  slot creep-duration-hours :: <integer> = 160;
  slot relaxation-modulus-ratio :: <float> = 0.85;
end class <material-creep-factor-16>;

define generic adjust-modulus-creep-16 (mcf :: <material-creep-factor-16>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-16 (mcf :: <material-creep-factor-16>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-16;


define class <material-creep-factor-17> (<object>)
  slot creep-duration-hours :: <integer> = 170;
  slot relaxation-modulus-ratio :: <float> = 0.84;
end class <material-creep-factor-17>;

define generic adjust-modulus-creep-17 (mcf :: <material-creep-factor-17>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-17 (mcf :: <material-creep-factor-17>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-17;


define class <material-creep-factor-18> (<object>)
  slot creep-duration-hours :: <integer> = 180;
  slot relaxation-modulus-ratio :: <float> = 0.83;
end class <material-creep-factor-18>;

define generic adjust-modulus-creep-18 (mcf :: <material-creep-factor-18>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-18 (mcf :: <material-creep-factor-18>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-18;


define class <material-creep-factor-19> (<object>)
  slot creep-duration-hours :: <integer> = 190;
  slot relaxation-modulus-ratio :: <float> = 0.82;
end class <material-creep-factor-19>;

define generic adjust-modulus-creep-19 (mcf :: <material-creep-factor-19>, base-e :: <float>) => (e-adj :: <float>);
define method adjust-modulus-creep-19 (mcf :: <material-creep-factor-19>, base-e :: <float>) => (e-adj :: <float>)
  base-e * mcf.relaxation-modulus-ratio;
end method adjust-modulus-creep-19;
