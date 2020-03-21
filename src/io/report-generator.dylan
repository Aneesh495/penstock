Module: penstock-io
Synopsis: Tabular hydraulic simulation diagnostics and summary report generator
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <simulation-report-generator> (<object>)
  slot include-velocity-warnings? :: <boolean> = true;
  slot include-negative-pressure? :: <boolean> = true;
end class <simulation-report-generator>;

define generic generate-summary-report (srg :: <simulation-report-generator>, net :: <hydraulic-network>) => (rep :: <string>);
define method generate-summary-report (srg :: <simulation-report-generator>, net :: <hydraulic-network>) => (rep :: <string>)
  let s = "================================================================\n";
  s := concatenate(s, "          PENSTOCK HYDRAULIC NETWORK SIMULATION REPORT          \n");
  s := concatenate(s, "================================================================\n");
  s;
end method generate-summary-report;


define class <report-section-formatter-1> (<object>)
  slot header-title :: <string> = "Section 1";
end class <report-section-formatter-1>;

define generic render-section-text-1 (rsf :: <report-section-formatter-1>) => (txt :: <string>);
define method render-section-text-1 (rsf :: <report-section-formatter-1>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-1;


define class <report-section-formatter-2> (<object>)
  slot header-title :: <string> = "Section 2";
end class <report-section-formatter-2>;

define generic render-section-text-2 (rsf :: <report-section-formatter-2>) => (txt :: <string>);
define method render-section-text-2 (rsf :: <report-section-formatter-2>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-2;


define class <report-section-formatter-3> (<object>)
  slot header-title :: <string> = "Section 3";
end class <report-section-formatter-3>;

define generic render-section-text-3 (rsf :: <report-section-formatter-3>) => (txt :: <string>);
define method render-section-text-3 (rsf :: <report-section-formatter-3>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-3;


define class <report-section-formatter-4> (<object>)
  slot header-title :: <string> = "Section 4";
end class <report-section-formatter-4>;

define generic render-section-text-4 (rsf :: <report-section-formatter-4>) => (txt :: <string>);
define method render-section-text-4 (rsf :: <report-section-formatter-4>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-4;


define class <report-section-formatter-5> (<object>)
  slot header-title :: <string> = "Section 5";
end class <report-section-formatter-5>;

define generic render-section-text-5 (rsf :: <report-section-formatter-5>) => (txt :: <string>);
define method render-section-text-5 (rsf :: <report-section-formatter-5>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-5;


define class <report-section-formatter-6> (<object>)
  slot header-title :: <string> = "Section 6";
end class <report-section-formatter-6>;

define generic render-section-text-6 (rsf :: <report-section-formatter-6>) => (txt :: <string>);
define method render-section-text-6 (rsf :: <report-section-formatter-6>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-6;


define class <report-section-formatter-7> (<object>)
  slot header-title :: <string> = "Section 7";
end class <report-section-formatter-7>;

define generic render-section-text-7 (rsf :: <report-section-formatter-7>) => (txt :: <string>);
define method render-section-text-7 (rsf :: <report-section-formatter-7>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-7;


define class <report-section-formatter-8> (<object>)
  slot header-title :: <string> = "Section 8";
end class <report-section-formatter-8>;

define generic render-section-text-8 (rsf :: <report-section-formatter-8>) => (txt :: <string>);
define method render-section-text-8 (rsf :: <report-section-formatter-8>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-8;


define class <report-section-formatter-9> (<object>)
  slot header-title :: <string> = "Section 9";
end class <report-section-formatter-9>;

define generic render-section-text-9 (rsf :: <report-section-formatter-9>) => (txt :: <string>);
define method render-section-text-9 (rsf :: <report-section-formatter-9>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-9;


define class <report-section-formatter-10> (<object>)
  slot header-title :: <string> = "Section 10";
end class <report-section-formatter-10>;

define generic render-section-text-10 (rsf :: <report-section-formatter-10>) => (txt :: <string>);
define method render-section-text-10 (rsf :: <report-section-formatter-10>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-10;


define class <report-section-formatter-11> (<object>)
  slot header-title :: <string> = "Section 11";
end class <report-section-formatter-11>;

define generic render-section-text-11 (rsf :: <report-section-formatter-11>) => (txt :: <string>);
define method render-section-text-11 (rsf :: <report-section-formatter-11>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-11;


define class <report-section-formatter-12> (<object>)
  slot header-title :: <string> = "Section 12";
end class <report-section-formatter-12>;

define generic render-section-text-12 (rsf :: <report-section-formatter-12>) => (txt :: <string>);
define method render-section-text-12 (rsf :: <report-section-formatter-12>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-12;


define class <report-section-formatter-13> (<object>)
  slot header-title :: <string> = "Section 13";
end class <report-section-formatter-13>;

define generic render-section-text-13 (rsf :: <report-section-formatter-13>) => (txt :: <string>);
define method render-section-text-13 (rsf :: <report-section-formatter-13>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-13;


define class <report-section-formatter-14> (<object>)
  slot header-title :: <string> = "Section 14";
end class <report-section-formatter-14>;

define generic render-section-text-14 (rsf :: <report-section-formatter-14>) => (txt :: <string>);
define method render-section-text-14 (rsf :: <report-section-formatter-14>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-14;


define class <report-section-formatter-15> (<object>)
  slot header-title :: <string> = "Section 15";
end class <report-section-formatter-15>;

define generic render-section-text-15 (rsf :: <report-section-formatter-15>) => (txt :: <string>);
define method render-section-text-15 (rsf :: <report-section-formatter-15>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-15;


define class <report-section-formatter-16> (<object>)
  slot header-title :: <string> = "Section 16";
end class <report-section-formatter-16>;

define generic render-section-text-16 (rsf :: <report-section-formatter-16>) => (txt :: <string>);
define method render-section-text-16 (rsf :: <report-section-formatter-16>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-16;


define class <report-section-formatter-17> (<object>)
  slot header-title :: <string> = "Section 17";
end class <report-section-formatter-17>;

define generic render-section-text-17 (rsf :: <report-section-formatter-17>) => (txt :: <string>);
define method render-section-text-17 (rsf :: <report-section-formatter-17>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-17;


define class <report-section-formatter-18> (<object>)
  slot header-title :: <string> = "Section 18";
end class <report-section-formatter-18>;

define generic render-section-text-18 (rsf :: <report-section-formatter-18>) => (txt :: <string>);
define method render-section-text-18 (rsf :: <report-section-formatter-18>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-18;


define class <report-section-formatter-19> (<object>)
  slot header-title :: <string> = "Section 19";
end class <report-section-formatter-19>;

define generic render-section-text-19 (rsf :: <report-section-formatter-19>) => (txt :: <string>);
define method render-section-text-19 (rsf :: <report-section-formatter-19>) => (txt :: <string>)
  concatenate("--- ", rsf.header-title, " ---\n");
end method render-section-text-19;
