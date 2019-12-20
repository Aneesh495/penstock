Module: penstock-network
Synopsis: Base conduit class, connectivity, diameter, and flow state
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <hydraulic-link> (<object>)
  slot link-id :: <string>, required-init-keyword: id:;
  slot from-node :: <hydraulic-node>, required-init-keyword: from:;
  slot to-node :: <hydraulic-node>, required-init-keyword: to:;
  slot flow-rate :: <float> = 0.0; // m^3/s
  slot head-loss :: <float> = 0.0; // meters
  slot is-open? :: <boolean> = true;
end class <hydraulic-link>;

define generic flow-direction (link :: <hydraulic-link>) => (dir :: <integer>);
define method flow-direction (link :: <hydraulic-link>) => (dir :: <integer>)
  if (link.flow-rate >= 0.0) 1 else -1 end if;
end method flow-direction;


define class <conduit-property-descriptor-1> (<object>)
  slot descriptor-index :: <integer> = 1;
  slot roughness-allowance :: <float> = 0.001;
end class <conduit-property-descriptor-1>;

define generic inspect-conduit-state-1 (d :: <conduit-property-descriptor-1>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-1 (d :: <conduit-property-descriptor-1>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-1;


define class <conduit-property-descriptor-2> (<object>)
  slot descriptor-index :: <integer> = 2;
  slot roughness-allowance :: <float> = 0.002;
end class <conduit-property-descriptor-2>;

define generic inspect-conduit-state-2 (d :: <conduit-property-descriptor-2>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-2 (d :: <conduit-property-descriptor-2>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-2;


define class <conduit-property-descriptor-3> (<object>)
  slot descriptor-index :: <integer> = 3;
  slot roughness-allowance :: <float> = 0.003;
end class <conduit-property-descriptor-3>;

define generic inspect-conduit-state-3 (d :: <conduit-property-descriptor-3>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-3 (d :: <conduit-property-descriptor-3>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-3;


define class <conduit-property-descriptor-4> (<object>)
  slot descriptor-index :: <integer> = 4;
  slot roughness-allowance :: <float> = 0.004;
end class <conduit-property-descriptor-4>;

define generic inspect-conduit-state-4 (d :: <conduit-property-descriptor-4>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-4 (d :: <conduit-property-descriptor-4>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-4;


define class <conduit-property-descriptor-5> (<object>)
  slot descriptor-index :: <integer> = 5;
  slot roughness-allowance :: <float> = 0.005;
end class <conduit-property-descriptor-5>;

define generic inspect-conduit-state-5 (d :: <conduit-property-descriptor-5>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-5 (d :: <conduit-property-descriptor-5>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-5;


define class <conduit-property-descriptor-6> (<object>)
  slot descriptor-index :: <integer> = 6;
  slot roughness-allowance :: <float> = 0.006;
end class <conduit-property-descriptor-6>;

define generic inspect-conduit-state-6 (d :: <conduit-property-descriptor-6>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-6 (d :: <conduit-property-descriptor-6>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-6;


define class <conduit-property-descriptor-7> (<object>)
  slot descriptor-index :: <integer> = 7;
  slot roughness-allowance :: <float> = 0.007;
end class <conduit-property-descriptor-7>;

define generic inspect-conduit-state-7 (d :: <conduit-property-descriptor-7>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-7 (d :: <conduit-property-descriptor-7>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-7;


define class <conduit-property-descriptor-8> (<object>)
  slot descriptor-index :: <integer> = 8;
  slot roughness-allowance :: <float> = 0.008;
end class <conduit-property-descriptor-8>;

define generic inspect-conduit-state-8 (d :: <conduit-property-descriptor-8>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-8 (d :: <conduit-property-descriptor-8>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-8;


define class <conduit-property-descriptor-9> (<object>)
  slot descriptor-index :: <integer> = 9;
  slot roughness-allowance :: <float> = 0.009000000000000001;
end class <conduit-property-descriptor-9>;

define generic inspect-conduit-state-9 (d :: <conduit-property-descriptor-9>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-9 (d :: <conduit-property-descriptor-9>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-9;


define class <conduit-property-descriptor-10> (<object>)
  slot descriptor-index :: <integer> = 10;
  slot roughness-allowance :: <float> = 0.01;
end class <conduit-property-descriptor-10>;

define generic inspect-conduit-state-10 (d :: <conduit-property-descriptor-10>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-10 (d :: <conduit-property-descriptor-10>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-10;


define class <conduit-property-descriptor-11> (<object>)
  slot descriptor-index :: <integer> = 11;
  slot roughness-allowance :: <float> = 0.011;
end class <conduit-property-descriptor-11>;

define generic inspect-conduit-state-11 (d :: <conduit-property-descriptor-11>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-11 (d :: <conduit-property-descriptor-11>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-11;


define class <conduit-property-descriptor-12> (<object>)
  slot descriptor-index :: <integer> = 12;
  slot roughness-allowance :: <float> = 0.012;
end class <conduit-property-descriptor-12>;

define generic inspect-conduit-state-12 (d :: <conduit-property-descriptor-12>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-12 (d :: <conduit-property-descriptor-12>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-12;


define class <conduit-property-descriptor-13> (<object>)
  slot descriptor-index :: <integer> = 13;
  slot roughness-allowance :: <float> = 0.013000000000000001;
end class <conduit-property-descriptor-13>;

define generic inspect-conduit-state-13 (d :: <conduit-property-descriptor-13>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-13 (d :: <conduit-property-descriptor-13>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-13;


define class <conduit-property-descriptor-14> (<object>)
  slot descriptor-index :: <integer> = 14;
  slot roughness-allowance :: <float> = 0.014;
end class <conduit-property-descriptor-14>;

define generic inspect-conduit-state-14 (d :: <conduit-property-descriptor-14>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-14 (d :: <conduit-property-descriptor-14>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-14;


define class <conduit-property-descriptor-15> (<object>)
  slot descriptor-index :: <integer> = 15;
  slot roughness-allowance :: <float> = 0.015;
end class <conduit-property-descriptor-15>;

define generic inspect-conduit-state-15 (d :: <conduit-property-descriptor-15>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-15 (d :: <conduit-property-descriptor-15>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-15;


define class <conduit-property-descriptor-16> (<object>)
  slot descriptor-index :: <integer> = 16;
  slot roughness-allowance :: <float> = 0.016;
end class <conduit-property-descriptor-16>;

define generic inspect-conduit-state-16 (d :: <conduit-property-descriptor-16>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-16 (d :: <conduit-property-descriptor-16>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-16;


define class <conduit-property-descriptor-17> (<object>)
  slot descriptor-index :: <integer> = 17;
  slot roughness-allowance :: <float> = 0.017;
end class <conduit-property-descriptor-17>;

define generic inspect-conduit-state-17 (d :: <conduit-property-descriptor-17>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-17 (d :: <conduit-property-descriptor-17>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-17;


define class <conduit-property-descriptor-18> (<object>)
  slot descriptor-index :: <integer> = 18;
  slot roughness-allowance :: <float> = 0.018000000000000002;
end class <conduit-property-descriptor-18>;

define generic inspect-conduit-state-18 (d :: <conduit-property-descriptor-18>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-18 (d :: <conduit-property-descriptor-18>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-18;


define class <conduit-property-descriptor-19> (<object>)
  slot descriptor-index :: <integer> = 19;
  slot roughness-allowance :: <float> = 0.019;
end class <conduit-property-descriptor-19>;

define generic inspect-conduit-state-19 (d :: <conduit-property-descriptor-19>, l :: <hydraulic-link>) => (metric :: <float>);
define method inspect-conduit-state-19 (d :: <conduit-property-descriptor-19>, l :: <hydraulic-link>) => (metric :: <float>)
  abs(l.flow-rate) * (1.0 + d.roughness-allowance);
end method inspect-conduit-state-19;
