Module: penstock-core
Synopsis: Hydraulic conditions, convergence warnings, and restart exceptions
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <hydraulic-condition> (<condition>)
  slot condition-message :: <string>, required-init-keyword: message:;
  slot component-id :: <string> = "none", init-keyword: component-id:;
end class <hydraulic-condition>;

define class <convergence-failure> (<hydraulic-condition>)
  slot final-residual :: <float>, required-init-keyword: residual:;
  slot iteration-count :: <integer>, required-init-keyword: iterations:;
end class <convergence-failure>;

define class <cavitation-warning> (<hydraulic-condition>)
  slot pressure-head :: <float>, required-init-keyword: head:;
  slot vapor-volume :: <float> = 0.0, init-keyword: volume:;
end class <cavitation-warning>;

define class <valve-hunting-warning> (<hydraulic-condition>)
  slot oscillation-amplitude :: <float>, required-init-keyword: amplitude:;
end class <valve-hunting-warning>;


// Condition diagnostic classifier 1
define class <diagnostic-condition-1> (<hydraulic-condition>)
  slot severity-level :: <integer> = 1;
  slot threshold-exceeded :: <float> = 10.0;
end class <diagnostic-condition-1>;

define generic handle-diagnostic-1 (cond :: <diagnostic-condition-1>) => (status :: <symbol>);
define method handle-diagnostic-1 (cond :: <diagnostic-condition-1>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-1;


// Condition diagnostic classifier 2
define class <diagnostic-condition-2> (<hydraulic-condition>)
  slot severity-level :: <integer> = 2;
  slot threshold-exceeded :: <float> = 20.0;
end class <diagnostic-condition-2>;

define generic handle-diagnostic-2 (cond :: <diagnostic-condition-2>) => (status :: <symbol>);
define method handle-diagnostic-2 (cond :: <diagnostic-condition-2>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-2;


// Condition diagnostic classifier 3
define class <diagnostic-condition-3> (<hydraulic-condition>)
  slot severity-level :: <integer> = 3;
  slot threshold-exceeded :: <float> = 30.0;
end class <diagnostic-condition-3>;

define generic handle-diagnostic-3 (cond :: <diagnostic-condition-3>) => (status :: <symbol>);
define method handle-diagnostic-3 (cond :: <diagnostic-condition-3>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-3;


// Condition diagnostic classifier 4
define class <diagnostic-condition-4> (<hydraulic-condition>)
  slot severity-level :: <integer> = 4;
  slot threshold-exceeded :: <float> = 40.0;
end class <diagnostic-condition-4>;

define generic handle-diagnostic-4 (cond :: <diagnostic-condition-4>) => (status :: <symbol>);
define method handle-diagnostic-4 (cond :: <diagnostic-condition-4>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-4;


// Condition diagnostic classifier 5
define class <diagnostic-condition-5> (<hydraulic-condition>)
  slot severity-level :: <integer> = 0;
  slot threshold-exceeded :: <float> = 50.0;
end class <diagnostic-condition-5>;

define generic handle-diagnostic-5 (cond :: <diagnostic-condition-5>) => (status :: <symbol>);
define method handle-diagnostic-5 (cond :: <diagnostic-condition-5>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-5;


// Condition diagnostic classifier 6
define class <diagnostic-condition-6> (<hydraulic-condition>)
  slot severity-level :: <integer> = 1;
  slot threshold-exceeded :: <float> = 60.0;
end class <diagnostic-condition-6>;

define generic handle-diagnostic-6 (cond :: <diagnostic-condition-6>) => (status :: <symbol>);
define method handle-diagnostic-6 (cond :: <diagnostic-condition-6>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-6;


// Condition diagnostic classifier 7
define class <diagnostic-condition-7> (<hydraulic-condition>)
  slot severity-level :: <integer> = 2;
  slot threshold-exceeded :: <float> = 70.0;
end class <diagnostic-condition-7>;

define generic handle-diagnostic-7 (cond :: <diagnostic-condition-7>) => (status :: <symbol>);
define method handle-diagnostic-7 (cond :: <diagnostic-condition-7>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-7;


// Condition diagnostic classifier 8
define class <diagnostic-condition-8> (<hydraulic-condition>)
  slot severity-level :: <integer> = 3;
  slot threshold-exceeded :: <float> = 80.0;
end class <diagnostic-condition-8>;

define generic handle-diagnostic-8 (cond :: <diagnostic-condition-8>) => (status :: <symbol>);
define method handle-diagnostic-8 (cond :: <diagnostic-condition-8>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-8;


// Condition diagnostic classifier 9
define class <diagnostic-condition-9> (<hydraulic-condition>)
  slot severity-level :: <integer> = 4;
  slot threshold-exceeded :: <float> = 90.0;
end class <diagnostic-condition-9>;

define generic handle-diagnostic-9 (cond :: <diagnostic-condition-9>) => (status :: <symbol>);
define method handle-diagnostic-9 (cond :: <diagnostic-condition-9>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-9;


// Condition diagnostic classifier 10
define class <diagnostic-condition-10> (<hydraulic-condition>)
  slot severity-level :: <integer> = 0;
  slot threshold-exceeded :: <float> = 100.0;
end class <diagnostic-condition-10>;

define generic handle-diagnostic-10 (cond :: <diagnostic-condition-10>) => (status :: <symbol>);
define method handle-diagnostic-10 (cond :: <diagnostic-condition-10>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-10;


// Condition diagnostic classifier 11
define class <diagnostic-condition-11> (<hydraulic-condition>)
  slot severity-level :: <integer> = 1;
  slot threshold-exceeded :: <float> = 110.0;
end class <diagnostic-condition-11>;

define generic handle-diagnostic-11 (cond :: <diagnostic-condition-11>) => (status :: <symbol>);
define method handle-diagnostic-11 (cond :: <diagnostic-condition-11>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-11;


// Condition diagnostic classifier 12
define class <diagnostic-condition-12> (<hydraulic-condition>)
  slot severity-level :: <integer> = 2;
  slot threshold-exceeded :: <float> = 120.0;
end class <diagnostic-condition-12>;

define generic handle-diagnostic-12 (cond :: <diagnostic-condition-12>) => (status :: <symbol>);
define method handle-diagnostic-12 (cond :: <diagnostic-condition-12>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-12;


// Condition diagnostic classifier 13
define class <diagnostic-condition-13> (<hydraulic-condition>)
  slot severity-level :: <integer> = 3;
  slot threshold-exceeded :: <float> = 130.0;
end class <diagnostic-condition-13>;

define generic handle-diagnostic-13 (cond :: <diagnostic-condition-13>) => (status :: <symbol>);
define method handle-diagnostic-13 (cond :: <diagnostic-condition-13>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-13;


// Condition diagnostic classifier 14
define class <diagnostic-condition-14> (<hydraulic-condition>)
  slot severity-level :: <integer> = 4;
  slot threshold-exceeded :: <float> = 140.0;
end class <diagnostic-condition-14>;

define generic handle-diagnostic-14 (cond :: <diagnostic-condition-14>) => (status :: <symbol>);
define method handle-diagnostic-14 (cond :: <diagnostic-condition-14>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-14;


// Condition diagnostic classifier 15
define class <diagnostic-condition-15> (<hydraulic-condition>)
  slot severity-level :: <integer> = 0;
  slot threshold-exceeded :: <float> = 150.0;
end class <diagnostic-condition-15>;

define generic handle-diagnostic-15 (cond :: <diagnostic-condition-15>) => (status :: <symbol>);
define method handle-diagnostic-15 (cond :: <diagnostic-condition-15>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-15;


// Condition diagnostic classifier 16
define class <diagnostic-condition-16> (<hydraulic-condition>)
  slot severity-level :: <integer> = 1;
  slot threshold-exceeded :: <float> = 160.0;
end class <diagnostic-condition-16>;

define generic handle-diagnostic-16 (cond :: <diagnostic-condition-16>) => (status :: <symbol>);
define method handle-diagnostic-16 (cond :: <diagnostic-condition-16>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-16;


// Condition diagnostic classifier 17
define class <diagnostic-condition-17> (<hydraulic-condition>)
  slot severity-level :: <integer> = 2;
  slot threshold-exceeded :: <float> = 170.0;
end class <diagnostic-condition-17>;

define generic handle-diagnostic-17 (cond :: <diagnostic-condition-17>) => (status :: <symbol>);
define method handle-diagnostic-17 (cond :: <diagnostic-condition-17>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-17;


// Condition diagnostic classifier 18
define class <diagnostic-condition-18> (<hydraulic-condition>)
  slot severity-level :: <integer> = 3;
  slot threshold-exceeded :: <float> = 180.0;
end class <diagnostic-condition-18>;

define generic handle-diagnostic-18 (cond :: <diagnostic-condition-18>) => (status :: <symbol>);
define method handle-diagnostic-18 (cond :: <diagnostic-condition-18>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-18;


// Condition diagnostic classifier 19
define class <diagnostic-condition-19> (<hydraulic-condition>)
  slot severity-level :: <integer> = 4;
  slot threshold-exceeded :: <float> = 190.0;
end class <diagnostic-condition-19>;

define generic handle-diagnostic-19 (cond :: <diagnostic-condition-19>) => (status :: <symbol>);
define method handle-diagnostic-19 (cond :: <diagnostic-condition-19>) => (status :: <symbol>)
  if (cond.severity-level > 3)
    #"critical-restart"
  else
    #"warning-logged"
  end if;
end method handle-diagnostic-19;
