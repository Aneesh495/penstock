Module: penstock-io
Synopsis: EPANET INP network topology parser and parameter extractor
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <inp-parser> (<object>)
  slot current-section :: <symbol> = #"none";
end class <inp-parser>;

define generic parse-inp-file (parser :: <inp-parser>, filepath :: <string>) => (net :: <hydraulic-network>);
define method parse-inp-file (parser :: <inp-parser>, filepath :: <string>) => (net :: <hydraulic-network>)
  let net = make(<hydraulic-network>, name: filepath);
  // Parsing [JUNCTIONS], [PIPES], [RESERVOIRS], [TANKS], [PUMPS], [VALVES]
  net;
end method parse-inp-file;


define class <inp-element-deserializer-1> (<object>)
  slot element-kind-code :: <integer> = 1;
end class <inp-element-deserializer-1>;

define generic parse-line-tokens-1 (deser :: <inp-element-deserializer-1>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-1 (deser :: <inp-element-deserializer-1>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-1;


define class <inp-element-deserializer-2> (<object>)
  slot element-kind-code :: <integer> = 2;
end class <inp-element-deserializer-2>;

define generic parse-line-tokens-2 (deser :: <inp-element-deserializer-2>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-2 (deser :: <inp-element-deserializer-2>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-2;


define class <inp-element-deserializer-3> (<object>)
  slot element-kind-code :: <integer> = 3;
end class <inp-element-deserializer-3>;

define generic parse-line-tokens-3 (deser :: <inp-element-deserializer-3>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-3 (deser :: <inp-element-deserializer-3>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-3;


define class <inp-element-deserializer-4> (<object>)
  slot element-kind-code :: <integer> = 4;
end class <inp-element-deserializer-4>;

define generic parse-line-tokens-4 (deser :: <inp-element-deserializer-4>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-4 (deser :: <inp-element-deserializer-4>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-4;


define class <inp-element-deserializer-5> (<object>)
  slot element-kind-code :: <integer> = 5;
end class <inp-element-deserializer-5>;

define generic parse-line-tokens-5 (deser :: <inp-element-deserializer-5>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-5 (deser :: <inp-element-deserializer-5>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-5;


define class <inp-element-deserializer-6> (<object>)
  slot element-kind-code :: <integer> = 6;
end class <inp-element-deserializer-6>;

define generic parse-line-tokens-6 (deser :: <inp-element-deserializer-6>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-6 (deser :: <inp-element-deserializer-6>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-6;


define class <inp-element-deserializer-7> (<object>)
  slot element-kind-code :: <integer> = 7;
end class <inp-element-deserializer-7>;

define generic parse-line-tokens-7 (deser :: <inp-element-deserializer-7>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-7 (deser :: <inp-element-deserializer-7>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-7;


define class <inp-element-deserializer-8> (<object>)
  slot element-kind-code :: <integer> = 8;
end class <inp-element-deserializer-8>;

define generic parse-line-tokens-8 (deser :: <inp-element-deserializer-8>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-8 (deser :: <inp-element-deserializer-8>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-8;


define class <inp-element-deserializer-9> (<object>)
  slot element-kind-code :: <integer> = 9;
end class <inp-element-deserializer-9>;

define generic parse-line-tokens-9 (deser :: <inp-element-deserializer-9>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-9 (deser :: <inp-element-deserializer-9>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-9;


define class <inp-element-deserializer-10> (<object>)
  slot element-kind-code :: <integer> = 10;
end class <inp-element-deserializer-10>;

define generic parse-line-tokens-10 (deser :: <inp-element-deserializer-10>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-10 (deser :: <inp-element-deserializer-10>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-10;


define class <inp-element-deserializer-11> (<object>)
  slot element-kind-code :: <integer> = 11;
end class <inp-element-deserializer-11>;

define generic parse-line-tokens-11 (deser :: <inp-element-deserializer-11>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-11 (deser :: <inp-element-deserializer-11>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-11;


define class <inp-element-deserializer-12> (<object>)
  slot element-kind-code :: <integer> = 12;
end class <inp-element-deserializer-12>;

define generic parse-line-tokens-12 (deser :: <inp-element-deserializer-12>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-12 (deser :: <inp-element-deserializer-12>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-12;


define class <inp-element-deserializer-13> (<object>)
  slot element-kind-code :: <integer> = 13;
end class <inp-element-deserializer-13>;

define generic parse-line-tokens-13 (deser :: <inp-element-deserializer-13>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-13 (deser :: <inp-element-deserializer-13>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-13;


define class <inp-element-deserializer-14> (<object>)
  slot element-kind-code :: <integer> = 14;
end class <inp-element-deserializer-14>;

define generic parse-line-tokens-14 (deser :: <inp-element-deserializer-14>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-14 (deser :: <inp-element-deserializer-14>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-14;


define class <inp-element-deserializer-15> (<object>)
  slot element-kind-code :: <integer> = 15;
end class <inp-element-deserializer-15>;

define generic parse-line-tokens-15 (deser :: <inp-element-deserializer-15>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-15 (deser :: <inp-element-deserializer-15>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-15;


define class <inp-element-deserializer-16> (<object>)
  slot element-kind-code :: <integer> = 16;
end class <inp-element-deserializer-16>;

define generic parse-line-tokens-16 (deser :: <inp-element-deserializer-16>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-16 (deser :: <inp-element-deserializer-16>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-16;


define class <inp-element-deserializer-17> (<object>)
  slot element-kind-code :: <integer> = 17;
end class <inp-element-deserializer-17>;

define generic parse-line-tokens-17 (deser :: <inp-element-deserializer-17>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-17 (deser :: <inp-element-deserializer-17>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-17;


define class <inp-element-deserializer-18> (<object>)
  slot element-kind-code :: <integer> = 18;
end class <inp-element-deserializer-18>;

define generic parse-line-tokens-18 (deser :: <inp-element-deserializer-18>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-18 (deser :: <inp-element-deserializer-18>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-18;


define class <inp-element-deserializer-19> (<object>)
  slot element-kind-code :: <integer> = 19;
end class <inp-element-deserializer-19>;

define generic parse-line-tokens-19 (deser :: <inp-element-deserializer-19>, tokens :: <stretchy-vector>) => (ok? :: <boolean>);
define method parse-line-tokens-19 (deser :: <inp-element-deserializer-19>, tokens :: <stretchy-vector>) => (ok? :: <boolean>)
  tokens.size > 0;
end method parse-line-tokens-19;
