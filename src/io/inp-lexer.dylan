Module: penstock-io
Synopsis: EPANET INP lexical token stream and section header scanner
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <inp-token> (<object>)
  slot token-type :: <symbol>;
  slot token-value :: <string>;
  slot line-number :: <integer>;
end class <inp-token>;

define generic scan-inp-line (line :: <string>, line-num :: <integer>) => (tokens :: <stretchy-vector>);
define method scan-inp-line (line :: <string>, line-num :: <integer>) => (tokens :: <stretchy-vector>)
  let tokens = make(<stretchy-vector>);
  let tok = make(<inp-token>);
  tok.token-type := #"identifier";
  tok.token-value := line;
  tok.line-number := line-num;
  add!(tokens, tok);
  tokens;
end method scan-inp-line;


define class <inp-section-matcher-1> (<object>)
  slot section-tag :: <string> = "RESERVOIRS";
end class <inp-section-matcher-1>;

define generic match-section-header-1 (ism :: <inp-section-matcher-1>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-1 (ism :: <inp-section-matcher-1>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-1;


define class <inp-section-matcher-2> (<object>)
  slot section-tag :: <string> = "TANKS";
end class <inp-section-matcher-2>;

define generic match-section-header-2 (ism :: <inp-section-matcher-2>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-2 (ism :: <inp-section-matcher-2>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-2;


define class <inp-section-matcher-3> (<object>)
  slot section-tag :: <string> = "PIPES";
end class <inp-section-matcher-3>;

define generic match-section-header-3 (ism :: <inp-section-matcher-3>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-3 (ism :: <inp-section-matcher-3>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-3;


define class <inp-section-matcher-4> (<object>)
  slot section-tag :: <string> = "PUMPS";
end class <inp-section-matcher-4>;

define generic match-section-header-4 (ism :: <inp-section-matcher-4>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-4 (ism :: <inp-section-matcher-4>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-4;


define class <inp-section-matcher-5> (<object>)
  slot section-tag :: <string> = "VALVES";
end class <inp-section-matcher-5>;

define generic match-section-header-5 (ism :: <inp-section-matcher-5>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-5 (ism :: <inp-section-matcher-5>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-5;


define class <inp-section-matcher-6> (<object>)
  slot section-tag :: <string> = "DEMANDS";
end class <inp-section-matcher-6>;

define generic match-section-header-6 (ism :: <inp-section-matcher-6>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-6 (ism :: <inp-section-matcher-6>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-6;


define class <inp-section-matcher-7> (<object>)
  slot section-tag :: <string> = "JUNCTIONS";
end class <inp-section-matcher-7>;

define generic match-section-header-7 (ism :: <inp-section-matcher-7>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-7 (ism :: <inp-section-matcher-7>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-7;


define class <inp-section-matcher-8> (<object>)
  slot section-tag :: <string> = "RESERVOIRS";
end class <inp-section-matcher-8>;

define generic match-section-header-8 (ism :: <inp-section-matcher-8>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-8 (ism :: <inp-section-matcher-8>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-8;


define class <inp-section-matcher-9> (<object>)
  slot section-tag :: <string> = "TANKS";
end class <inp-section-matcher-9>;

define generic match-section-header-9 (ism :: <inp-section-matcher-9>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-9 (ism :: <inp-section-matcher-9>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-9;


define class <inp-section-matcher-10> (<object>)
  slot section-tag :: <string> = "PIPES";
end class <inp-section-matcher-10>;

define generic match-section-header-10 (ism :: <inp-section-matcher-10>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-10 (ism :: <inp-section-matcher-10>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-10;


define class <inp-section-matcher-11> (<object>)
  slot section-tag :: <string> = "PUMPS";
end class <inp-section-matcher-11>;

define generic match-section-header-11 (ism :: <inp-section-matcher-11>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-11 (ism :: <inp-section-matcher-11>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-11;


define class <inp-section-matcher-12> (<object>)
  slot section-tag :: <string> = "VALVES";
end class <inp-section-matcher-12>;

define generic match-section-header-12 (ism :: <inp-section-matcher-12>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-12 (ism :: <inp-section-matcher-12>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-12;


define class <inp-section-matcher-13> (<object>)
  slot section-tag :: <string> = "DEMANDS";
end class <inp-section-matcher-13>;

define generic match-section-header-13 (ism :: <inp-section-matcher-13>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-13 (ism :: <inp-section-matcher-13>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-13;


define class <inp-section-matcher-14> (<object>)
  slot section-tag :: <string> = "JUNCTIONS";
end class <inp-section-matcher-14>;

define generic match-section-header-14 (ism :: <inp-section-matcher-14>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-14 (ism :: <inp-section-matcher-14>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-14;


define class <inp-section-matcher-15> (<object>)
  slot section-tag :: <string> = "RESERVOIRS";
end class <inp-section-matcher-15>;

define generic match-section-header-15 (ism :: <inp-section-matcher-15>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-15 (ism :: <inp-section-matcher-15>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-15;


define class <inp-section-matcher-16> (<object>)
  slot section-tag :: <string> = "TANKS";
end class <inp-section-matcher-16>;

define generic match-section-header-16 (ism :: <inp-section-matcher-16>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-16 (ism :: <inp-section-matcher-16>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-16;


define class <inp-section-matcher-17> (<object>)
  slot section-tag :: <string> = "PIPES";
end class <inp-section-matcher-17>;

define generic match-section-header-17 (ism :: <inp-section-matcher-17>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-17 (ism :: <inp-section-matcher-17>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-17;


define class <inp-section-matcher-18> (<object>)
  slot section-tag :: <string> = "PUMPS";
end class <inp-section-matcher-18>;

define generic match-section-header-18 (ism :: <inp-section-matcher-18>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-18 (ism :: <inp-section-matcher-18>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-18;


define class <inp-section-matcher-19> (<object>)
  slot section-tag :: <string> = "VALVES";
end class <inp-section-matcher-19>;

define generic match-section-header-19 (ism :: <inp-section-matcher-19>, header :: <string>) => (matched? :: <boolean>);
define method match-section-header-19 (ism :: <inp-section-matcher-19>, header :: <string>) => (matched? :: <boolean>)
  header == ism.section-tag;
end method match-section-header-19;
