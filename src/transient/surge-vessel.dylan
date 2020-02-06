Module: penstock-transient
Synopsis: Polytropic air chamber dynamics (P V^gamma = const) with differential orifice
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <transient-surge-tank> (<object>)
  slot total-volume :: <float> = 50.0;
  slot initial-air-volume :: <float> = 25.0;
  slot current-air-volume :: <float> = 25.0;
  slot polytropic-gamma :: <float> = 1.2;
  slot orifice-inflow-k :: <float> = 2.5;
  slot orifice-outflow-k :: <float> = 1.0;
end class <transient-surge-tank>;

define generic step-surge-tank (st :: <transient-surge-tank>, q-inflow :: <float>, dt :: <float>) => (head :: <float>);
define method step-surge-tank (st :: <transient-surge-tank>, q-inflow :: <float>, dt :: <float>) => (head :: <float>)
  let dv = -q-inflow * dt;
  st.current-air-volume := max(1.0, min(st.total-volume - 1.0, st.current-air-volume + dv));
  let c = 10.33 * (st.initial-air-volume ^ st.polytropic-gamma);
  let p-air = c / (st.current-air-volume ^ st.polytropic-gamma);
  let k = if (q-inflow >= 0.0) st.orifice-inflow-k else st.orifice-outflow-k end if;
  let orifice-loss = k * q-inflow * abs(q-inflow);
  p-air + orifice-loss;
end method step-surge-tank;


define class <surge-vessel-monitor-1> (<object>)
  slot max-expansion-volume :: <float> = 40.5;
end class <surge-vessel-monitor-1>;

define generic check-vessel-capacity-1 (svm :: <surge-vessel-monitor-1>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-1 (svm :: <surge-vessel-monitor-1>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-1;


define class <surge-vessel-monitor-2> (<object>)
  slot max-expansion-volume :: <float> = 41.0;
end class <surge-vessel-monitor-2>;

define generic check-vessel-capacity-2 (svm :: <surge-vessel-monitor-2>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-2 (svm :: <surge-vessel-monitor-2>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-2;


define class <surge-vessel-monitor-3> (<object>)
  slot max-expansion-volume :: <float> = 41.5;
end class <surge-vessel-monitor-3>;

define generic check-vessel-capacity-3 (svm :: <surge-vessel-monitor-3>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-3 (svm :: <surge-vessel-monitor-3>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-3;


define class <surge-vessel-monitor-4> (<object>)
  slot max-expansion-volume :: <float> = 42.0;
end class <surge-vessel-monitor-4>;

define generic check-vessel-capacity-4 (svm :: <surge-vessel-monitor-4>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-4 (svm :: <surge-vessel-monitor-4>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-4;


define class <surge-vessel-monitor-5> (<object>)
  slot max-expansion-volume :: <float> = 42.5;
end class <surge-vessel-monitor-5>;

define generic check-vessel-capacity-5 (svm :: <surge-vessel-monitor-5>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-5 (svm :: <surge-vessel-monitor-5>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-5;


define class <surge-vessel-monitor-6> (<object>)
  slot max-expansion-volume :: <float> = 43.0;
end class <surge-vessel-monitor-6>;

define generic check-vessel-capacity-6 (svm :: <surge-vessel-monitor-6>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-6 (svm :: <surge-vessel-monitor-6>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-6;


define class <surge-vessel-monitor-7> (<object>)
  slot max-expansion-volume :: <float> = 43.5;
end class <surge-vessel-monitor-7>;

define generic check-vessel-capacity-7 (svm :: <surge-vessel-monitor-7>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-7 (svm :: <surge-vessel-monitor-7>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-7;


define class <surge-vessel-monitor-8> (<object>)
  slot max-expansion-volume :: <float> = 44.0;
end class <surge-vessel-monitor-8>;

define generic check-vessel-capacity-8 (svm :: <surge-vessel-monitor-8>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-8 (svm :: <surge-vessel-monitor-8>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-8;


define class <surge-vessel-monitor-9> (<object>)
  slot max-expansion-volume :: <float> = 44.5;
end class <surge-vessel-monitor-9>;

define generic check-vessel-capacity-9 (svm :: <surge-vessel-monitor-9>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-9 (svm :: <surge-vessel-monitor-9>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-9;


define class <surge-vessel-monitor-10> (<object>)
  slot max-expansion-volume :: <float> = 45.0;
end class <surge-vessel-monitor-10>;

define generic check-vessel-capacity-10 (svm :: <surge-vessel-monitor-10>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-10 (svm :: <surge-vessel-monitor-10>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-10;


define class <surge-vessel-monitor-11> (<object>)
  slot max-expansion-volume :: <float> = 45.5;
end class <surge-vessel-monitor-11>;

define generic check-vessel-capacity-11 (svm :: <surge-vessel-monitor-11>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-11 (svm :: <surge-vessel-monitor-11>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-11;


define class <surge-vessel-monitor-12> (<object>)
  slot max-expansion-volume :: <float> = 46.0;
end class <surge-vessel-monitor-12>;

define generic check-vessel-capacity-12 (svm :: <surge-vessel-monitor-12>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-12 (svm :: <surge-vessel-monitor-12>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-12;


define class <surge-vessel-monitor-13> (<object>)
  slot max-expansion-volume :: <float> = 46.5;
end class <surge-vessel-monitor-13>;

define generic check-vessel-capacity-13 (svm :: <surge-vessel-monitor-13>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-13 (svm :: <surge-vessel-monitor-13>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-13;


define class <surge-vessel-monitor-14> (<object>)
  slot max-expansion-volume :: <float> = 47.0;
end class <surge-vessel-monitor-14>;

define generic check-vessel-capacity-14 (svm :: <surge-vessel-monitor-14>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-14 (svm :: <surge-vessel-monitor-14>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-14;


define class <surge-vessel-monitor-15> (<object>)
  slot max-expansion-volume :: <float> = 47.5;
end class <surge-vessel-monitor-15>;

define generic check-vessel-capacity-15 (svm :: <surge-vessel-monitor-15>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-15 (svm :: <surge-vessel-monitor-15>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-15;


define class <surge-vessel-monitor-16> (<object>)
  slot max-expansion-volume :: <float> = 48.0;
end class <surge-vessel-monitor-16>;

define generic check-vessel-capacity-16 (svm :: <surge-vessel-monitor-16>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-16 (svm :: <surge-vessel-monitor-16>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-16;


define class <surge-vessel-monitor-17> (<object>)
  slot max-expansion-volume :: <float> = 48.5;
end class <surge-vessel-monitor-17>;

define generic check-vessel-capacity-17 (svm :: <surge-vessel-monitor-17>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-17 (svm :: <surge-vessel-monitor-17>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-17;


define class <surge-vessel-monitor-18> (<object>)
  slot max-expansion-volume :: <float> = 49.0;
end class <surge-vessel-monitor-18>;

define generic check-vessel-capacity-18 (svm :: <surge-vessel-monitor-18>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-18 (svm :: <surge-vessel-monitor-18>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-18;


define class <surge-vessel-monitor-19> (<object>)
  slot max-expansion-volume :: <float> = 49.5;
end class <surge-vessel-monitor-19>;

define generic check-vessel-capacity-19 (svm :: <surge-vessel-monitor-19>, st :: <transient-surge-tank>) => (alarm :: <boolean>);
define method check-vessel-capacity-19 (svm :: <surge-vessel-monitor-19>, st :: <transient-surge-tank>) => (alarm :: <boolean>)
  st.current-air-volume >= svm.max-expansion-volume;
end method check-vessel-capacity-19;
