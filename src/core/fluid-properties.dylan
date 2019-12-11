Module: penstock-core
Synopsis: Fluid thermodynamics, density, dynamic viscosity, and vapor pressure
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define constant $gravitational-acceleration :: <float> = 9.80665;
define constant $water-density-standard :: <float> = 998.2; // kg/m^3 at 20 deg C
define constant $kinematic-viscosity-water-20c :: <float> = 1.004e-6; // m^2/s
define constant $bulk-modulus-water :: <float> = 2.19e9; // Pa

define class <fluid-state> (<object>)
  slot temperature-celsius :: <float> = 20.0, init-keyword: temperature:;
  slot pressure-pascals :: <float> = 101325.0, init-keyword: pressure:;
  slot salinity-ppt :: <float> = 0.0, init-keyword: salinity:;
end class <fluid-state>;

define generic compute-density (fluid :: <fluid-state>) => (rho :: <float>);
define method compute-density (fluid :: <fluid-state>) => (rho :: <float>)
  let t = fluid.temperature-celsius;
  // Millero and Poisson 1981 equation of state approximation
  999.842594 + (0.06793952 * t) - (0.009095290 * t * t) + (0.0001001685 * t * t * t);
end method compute-density;

define generic compute-vapor-pressure (fluid :: <fluid-state>) => (p-vap :: <float>);
define method compute-vapor-pressure (fluid :: <fluid-state>) => (p-vap :: <float>)
  let t = fluid.temperature-celsius;
  // Antoine equation for water vapor pressure (Pa)
  610.78 * exp((17.27 * t) / (t + 237.3));
end method compute-vapor-pressure;


// Thermal correction expansion band 1
define class <thermal-band-1> (<object>)
  slot band-index :: <integer> = 1;
  slot reference-viscosity :: <float> = 1.02e-06;
end class <thermal-band-1>;

define generic correct-viscosity-band-1 (band :: <thermal-band-1>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-1 (band :: <thermal-band-1>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-1;


// Thermal correction expansion band 2
define class <thermal-band-2> (<object>)
  slot band-index :: <integer> = 2;
  slot reference-viscosity :: <float> = 1.04e-06;
end class <thermal-band-2>;

define generic correct-viscosity-band-2 (band :: <thermal-band-2>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-2 (band :: <thermal-band-2>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-2;


// Thermal correction expansion band 3
define class <thermal-band-3> (<object>)
  slot band-index :: <integer> = 3;
  slot reference-viscosity :: <float> = 1.06e-06;
end class <thermal-band-3>;

define generic correct-viscosity-band-3 (band :: <thermal-band-3>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-3 (band :: <thermal-band-3>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-3;


// Thermal correction expansion band 4
define class <thermal-band-4> (<object>)
  slot band-index :: <integer> = 4;
  slot reference-viscosity :: <float> = 1.08e-06;
end class <thermal-band-4>;

define generic correct-viscosity-band-4 (band :: <thermal-band-4>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-4 (band :: <thermal-band-4>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-4;


// Thermal correction expansion band 5
define class <thermal-band-5> (<object>)
  slot band-index :: <integer> = 5;
  slot reference-viscosity :: <float> = 1.1e-06;
end class <thermal-band-5>;

define generic correct-viscosity-band-5 (band :: <thermal-band-5>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-5 (band :: <thermal-band-5>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-5;


// Thermal correction expansion band 6
define class <thermal-band-6> (<object>)
  slot band-index :: <integer> = 6;
  slot reference-viscosity :: <float> = 1.12e-06;
end class <thermal-band-6>;

define generic correct-viscosity-band-6 (band :: <thermal-band-6>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-6 (band :: <thermal-band-6>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-6;


// Thermal correction expansion band 7
define class <thermal-band-7> (<object>)
  slot band-index :: <integer> = 7;
  slot reference-viscosity :: <float> = 1.14e-06;
end class <thermal-band-7>;

define generic correct-viscosity-band-7 (band :: <thermal-band-7>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-7 (band :: <thermal-band-7>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-7;


// Thermal correction expansion band 8
define class <thermal-band-8> (<object>)
  slot band-index :: <integer> = 8;
  slot reference-viscosity :: <float> = 1.16e-06;
end class <thermal-band-8>;

define generic correct-viscosity-band-8 (band :: <thermal-band-8>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-8 (band :: <thermal-band-8>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-8;


// Thermal correction expansion band 9
define class <thermal-band-9> (<object>)
  slot band-index :: <integer> = 9;
  slot reference-viscosity :: <float> = 1.18e-06;
end class <thermal-band-9>;

define generic correct-viscosity-band-9 (band :: <thermal-band-9>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-9 (band :: <thermal-band-9>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-9;


// Thermal correction expansion band 10
define class <thermal-band-10> (<object>)
  slot band-index :: <integer> = 10;
  slot reference-viscosity :: <float> = 1.2e-06;
end class <thermal-band-10>;

define generic correct-viscosity-band-10 (band :: <thermal-band-10>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-10 (band :: <thermal-band-10>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-10;


// Thermal correction expansion band 11
define class <thermal-band-11> (<object>)
  slot band-index :: <integer> = 11;
  slot reference-viscosity :: <float> = 1.22e-06;
end class <thermal-band-11>;

define generic correct-viscosity-band-11 (band :: <thermal-band-11>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-11 (band :: <thermal-band-11>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-11;


// Thermal correction expansion band 12
define class <thermal-band-12> (<object>)
  slot band-index :: <integer> = 12;
  slot reference-viscosity :: <float> = 1.24e-06;
end class <thermal-band-12>;

define generic correct-viscosity-band-12 (band :: <thermal-band-12>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-12 (band :: <thermal-band-12>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-12;


// Thermal correction expansion band 13
define class <thermal-band-13> (<object>)
  slot band-index :: <integer> = 13;
  slot reference-viscosity :: <float> = 1.26e-06;
end class <thermal-band-13>;

define generic correct-viscosity-band-13 (band :: <thermal-band-13>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-13 (band :: <thermal-band-13>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-13;


// Thermal correction expansion band 14
define class <thermal-band-14> (<object>)
  slot band-index :: <integer> = 14;
  slot reference-viscosity :: <float> = 1.28e-06;
end class <thermal-band-14>;

define generic correct-viscosity-band-14 (band :: <thermal-band-14>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-14 (band :: <thermal-band-14>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-14;


// Thermal correction expansion band 15
define class <thermal-band-15> (<object>)
  slot band-index :: <integer> = 15;
  slot reference-viscosity :: <float> = 1.3e-06;
end class <thermal-band-15>;

define generic correct-viscosity-band-15 (band :: <thermal-band-15>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-15 (band :: <thermal-band-15>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-15;


// Thermal correction expansion band 16
define class <thermal-band-16> (<object>)
  slot band-index :: <integer> = 16;
  slot reference-viscosity :: <float> = 1.32e-06;
end class <thermal-band-16>;

define generic correct-viscosity-band-16 (band :: <thermal-band-16>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-16 (band :: <thermal-band-16>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-16;


// Thermal correction expansion band 17
define class <thermal-band-17> (<object>)
  slot band-index :: <integer> = 17;
  slot reference-viscosity :: <float> = 1.34e-06;
end class <thermal-band-17>;

define generic correct-viscosity-band-17 (band :: <thermal-band-17>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-17 (band :: <thermal-band-17>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-17;


// Thermal correction expansion band 18
define class <thermal-band-18> (<object>)
  slot band-index :: <integer> = 18;
  slot reference-viscosity :: <float> = 1.36e-06;
end class <thermal-band-18>;

define generic correct-viscosity-band-18 (band :: <thermal-band-18>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-18 (band :: <thermal-band-18>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-18;


// Thermal correction expansion band 19
define class <thermal-band-19> (<object>)
  slot band-index :: <integer> = 19;
  slot reference-viscosity :: <float> = 1.38e-06;
end class <thermal-band-19>;

define generic correct-viscosity-band-19 (band :: <thermal-band-19>, temp :: <float>) => (nu :: <float>);
define method correct-viscosity-band-19 (band :: <thermal-band-19>, temp :: <float>) => (nu :: <float>)
  let dt = temp - 20.0;
  band.reference-viscosity * (1.0 - 0.02 * dt + 0.0002 * dt * dt);
end method correct-viscosity-band-19;
