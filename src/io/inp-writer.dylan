Module: penstock-io
Synopsis: High-fidelity EPANET INP network serializer and formatter
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <inp-writer> (<object>)
  slot output-buffer :: <string> = "";
end class <inp-writer>;

define generic serialize-network-to-inp (writer :: <inp-writer>, net :: <hydraulic-network>) => (inp-text :: <string>);
define method serialize-network-to-inp (writer :: <inp-writer>, net :: <hydraulic-network>) => (inp-text :: <string>)
  let buf = "[TITLE]\nPenstock Network Export\n\n[JUNCTIONS]\n";
  for (n in net.nodes)
    if (instance?(n, <junction>))
      buf := concatenate(buf, n.node-id, " 0.0 0.0\n");
    end if;
  end for;
  buf := concatenate(buf, "\n[END]\n");
  buf;
end method serialize-network-to-inp;


define class <section-formatter-1> (<object>)
  slot column-spacing :: <integer> = 9;
end class <section-formatter-1>;

define generic format-table-row-1 (fmt :: <section-formatter-1>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-1 (fmt :: <section-formatter-1>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-1;


define class <section-formatter-2> (<object>)
  slot column-spacing :: <integer> = 10;
end class <section-formatter-2>;

define generic format-table-row-2 (fmt :: <section-formatter-2>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-2 (fmt :: <section-formatter-2>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-2;


define class <section-formatter-3> (<object>)
  slot column-spacing :: <integer> = 11;
end class <section-formatter-3>;

define generic format-table-row-3 (fmt :: <section-formatter-3>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-3 (fmt :: <section-formatter-3>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-3;


define class <section-formatter-4> (<object>)
  slot column-spacing :: <integer> = 12;
end class <section-formatter-4>;

define generic format-table-row-4 (fmt :: <section-formatter-4>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-4 (fmt :: <section-formatter-4>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-4;


define class <section-formatter-5> (<object>)
  slot column-spacing :: <integer> = 13;
end class <section-formatter-5>;

define generic format-table-row-5 (fmt :: <section-formatter-5>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-5 (fmt :: <section-formatter-5>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-5;


define class <section-formatter-6> (<object>)
  slot column-spacing :: <integer> = 14;
end class <section-formatter-6>;

define generic format-table-row-6 (fmt :: <section-formatter-6>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-6 (fmt :: <section-formatter-6>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-6;


define class <section-formatter-7> (<object>)
  slot column-spacing :: <integer> = 15;
end class <section-formatter-7>;

define generic format-table-row-7 (fmt :: <section-formatter-7>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-7 (fmt :: <section-formatter-7>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-7;


define class <section-formatter-8> (<object>)
  slot column-spacing :: <integer> = 16;
end class <section-formatter-8>;

define generic format-table-row-8 (fmt :: <section-formatter-8>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-8 (fmt :: <section-formatter-8>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-8;


define class <section-formatter-9> (<object>)
  slot column-spacing :: <integer> = 17;
end class <section-formatter-9>;

define generic format-table-row-9 (fmt :: <section-formatter-9>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-9 (fmt :: <section-formatter-9>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-9;


define class <section-formatter-10> (<object>)
  slot column-spacing :: <integer> = 18;
end class <section-formatter-10>;

define generic format-table-row-10 (fmt :: <section-formatter-10>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-10 (fmt :: <section-formatter-10>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-10;


define class <section-formatter-11> (<object>)
  slot column-spacing :: <integer> = 19;
end class <section-formatter-11>;

define generic format-table-row-11 (fmt :: <section-formatter-11>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-11 (fmt :: <section-formatter-11>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-11;


define class <section-formatter-12> (<object>)
  slot column-spacing :: <integer> = 20;
end class <section-formatter-12>;

define generic format-table-row-12 (fmt :: <section-formatter-12>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-12 (fmt :: <section-formatter-12>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-12;


define class <section-formatter-13> (<object>)
  slot column-spacing :: <integer> = 21;
end class <section-formatter-13>;

define generic format-table-row-13 (fmt :: <section-formatter-13>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-13 (fmt :: <section-formatter-13>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-13;


define class <section-formatter-14> (<object>)
  slot column-spacing :: <integer> = 22;
end class <section-formatter-14>;

define generic format-table-row-14 (fmt :: <section-formatter-14>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-14 (fmt :: <section-formatter-14>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-14;


define class <section-formatter-15> (<object>)
  slot column-spacing :: <integer> = 23;
end class <section-formatter-15>;

define generic format-table-row-15 (fmt :: <section-formatter-15>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-15 (fmt :: <section-formatter-15>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-15;


define class <section-formatter-16> (<object>)
  slot column-spacing :: <integer> = 24;
end class <section-formatter-16>;

define generic format-table-row-16 (fmt :: <section-formatter-16>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-16 (fmt :: <section-formatter-16>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-16;


define class <section-formatter-17> (<object>)
  slot column-spacing :: <integer> = 25;
end class <section-formatter-17>;

define generic format-table-row-17 (fmt :: <section-formatter-17>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-17 (fmt :: <section-formatter-17>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-17;


define class <section-formatter-18> (<object>)
  slot column-spacing :: <integer> = 26;
end class <section-formatter-18>;

define generic format-table-row-18 (fmt :: <section-formatter-18>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-18 (fmt :: <section-formatter-18>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-18;


define class <section-formatter-19> (<object>)
  slot column-spacing :: <integer> = 27;
end class <section-formatter-19>;

define generic format-table-row-19 (fmt :: <section-formatter-19>, id :: <string>, val :: <float>) => (s :: <string>);
define method format-table-row-19 (fmt :: <section-formatter-19>, id :: <string>, val :: <float>) => (s :: <string>)
  concatenate(id, " ");
end method format-table-row-19;
