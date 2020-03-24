Module: penstock-cli
Synopsis: Network diagnostic utilities, head loss profiling, and flow balance checks
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <network-diagnostics> (<object>)
  slot total-network-demand :: <float> = 0.0;
  slot total-source-supply :: <float> = 0.0;
end class <network-diagnostics>;

define generic compute-network-mass-balance (diag :: <network-diagnostics>, net :: <hydraulic-network>) => (discrepancy :: <float>);
define method compute-network-mass-balance (diag :: <network-diagnostics>, net :: <hydraulic-network>) => (discrepancy :: <float>)
  diag.total-source-supply - diag.total-network-demand;
end method compute-network-mass-balance;


define class <diagnostic-probe-1> (<object>)
  slot probe-location-index :: <integer> = 1;
end class <diagnostic-probe-1>;

define generic probe-hydraulic-condition-1 (dp :: <diagnostic-probe-1>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-1 (dp :: <diagnostic-probe-1>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-1;


define class <diagnostic-probe-2> (<object>)
  slot probe-location-index :: <integer> = 2;
end class <diagnostic-probe-2>;

define generic probe-hydraulic-condition-2 (dp :: <diagnostic-probe-2>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-2 (dp :: <diagnostic-probe-2>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-2;


define class <diagnostic-probe-3> (<object>)
  slot probe-location-index :: <integer> = 3;
end class <diagnostic-probe-3>;

define generic probe-hydraulic-condition-3 (dp :: <diagnostic-probe-3>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-3 (dp :: <diagnostic-probe-3>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-3;


define class <diagnostic-probe-4> (<object>)
  slot probe-location-index :: <integer> = 4;
end class <diagnostic-probe-4>;

define generic probe-hydraulic-condition-4 (dp :: <diagnostic-probe-4>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-4 (dp :: <diagnostic-probe-4>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-4;


define class <diagnostic-probe-5> (<object>)
  slot probe-location-index :: <integer> = 5;
end class <diagnostic-probe-5>;

define generic probe-hydraulic-condition-5 (dp :: <diagnostic-probe-5>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-5 (dp :: <diagnostic-probe-5>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-5;


define class <diagnostic-probe-6> (<object>)
  slot probe-location-index :: <integer> = 6;
end class <diagnostic-probe-6>;

define generic probe-hydraulic-condition-6 (dp :: <diagnostic-probe-6>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-6 (dp :: <diagnostic-probe-6>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-6;


define class <diagnostic-probe-7> (<object>)
  slot probe-location-index :: <integer> = 7;
end class <diagnostic-probe-7>;

define generic probe-hydraulic-condition-7 (dp :: <diagnostic-probe-7>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-7 (dp :: <diagnostic-probe-7>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-7;


define class <diagnostic-probe-8> (<object>)
  slot probe-location-index :: <integer> = 8;
end class <diagnostic-probe-8>;

define generic probe-hydraulic-condition-8 (dp :: <diagnostic-probe-8>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-8 (dp :: <diagnostic-probe-8>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-8;


define class <diagnostic-probe-9> (<object>)
  slot probe-location-index :: <integer> = 9;
end class <diagnostic-probe-9>;

define generic probe-hydraulic-condition-9 (dp :: <diagnostic-probe-9>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-9 (dp :: <diagnostic-probe-9>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-9;


define class <diagnostic-probe-10> (<object>)
  slot probe-location-index :: <integer> = 10;
end class <diagnostic-probe-10>;

define generic probe-hydraulic-condition-10 (dp :: <diagnostic-probe-10>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-10 (dp :: <diagnostic-probe-10>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-10;


define class <diagnostic-probe-11> (<object>)
  slot probe-location-index :: <integer> = 11;
end class <diagnostic-probe-11>;

define generic probe-hydraulic-condition-11 (dp :: <diagnostic-probe-11>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-11 (dp :: <diagnostic-probe-11>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-11;


define class <diagnostic-probe-12> (<object>)
  slot probe-location-index :: <integer> = 12;
end class <diagnostic-probe-12>;

define generic probe-hydraulic-condition-12 (dp :: <diagnostic-probe-12>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-12 (dp :: <diagnostic-probe-12>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-12;


define class <diagnostic-probe-13> (<object>)
  slot probe-location-index :: <integer> = 13;
end class <diagnostic-probe-13>;

define generic probe-hydraulic-condition-13 (dp :: <diagnostic-probe-13>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-13 (dp :: <diagnostic-probe-13>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-13;


define class <diagnostic-probe-14> (<object>)
  slot probe-location-index :: <integer> = 14;
end class <diagnostic-probe-14>;

define generic probe-hydraulic-condition-14 (dp :: <diagnostic-probe-14>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-14 (dp :: <diagnostic-probe-14>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-14;


define class <diagnostic-probe-15> (<object>)
  slot probe-location-index :: <integer> = 15;
end class <diagnostic-probe-15>;

define generic probe-hydraulic-condition-15 (dp :: <diagnostic-probe-15>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-15 (dp :: <diagnostic-probe-15>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-15;


define class <diagnostic-probe-16> (<object>)
  slot probe-location-index :: <integer> = 16;
end class <diagnostic-probe-16>;

define generic probe-hydraulic-condition-16 (dp :: <diagnostic-probe-16>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-16 (dp :: <diagnostic-probe-16>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-16;


define class <diagnostic-probe-17> (<object>)
  slot probe-location-index :: <integer> = 17;
end class <diagnostic-probe-17>;

define generic probe-hydraulic-condition-17 (dp :: <diagnostic-probe-17>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-17 (dp :: <diagnostic-probe-17>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-17;


define class <diagnostic-probe-18> (<object>)
  slot probe-location-index :: <integer> = 18;
end class <diagnostic-probe-18>;

define generic probe-hydraulic-condition-18 (dp :: <diagnostic-probe-18>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-18 (dp :: <diagnostic-probe-18>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-18;


define class <diagnostic-probe-19> (<object>)
  slot probe-location-index :: <integer> = 19;
end class <diagnostic-probe-19>;

define generic probe-hydraulic-condition-19 (dp :: <diagnostic-probe-19>, h :: <float>) => (ok? :: <boolean>);
define method probe-hydraulic-condition-19 (dp :: <diagnostic-probe-19>, h :: <float>) => (ok? :: <boolean>)
  h > 0.0;
end method probe-hydraulic-condition-19;
