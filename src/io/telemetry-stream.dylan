Module: penstock-io
Synopsis: High-frequency pressure sensor telemetry packet serialization
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <telemetry-packet> (<object>)
  slot sensor-id :: <string>;
  slot timestamp-ms :: <integer>;
  slot pressure-value :: <float>;
end class <telemetry-packet>;


define class <telemetry-encoder-1> (<object>)
  slot compression-level :: <integer> = 1;
end class <telemetry-encoder-1>;

define generic encode-packet-1 (enc :: <telemetry-encoder-1>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-1 (enc :: <telemetry-encoder-1>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-1;


define class <telemetry-encoder-2> (<object>)
  slot compression-level :: <integer> = 2;
end class <telemetry-encoder-2>;

define generic encode-packet-2 (enc :: <telemetry-encoder-2>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-2 (enc :: <telemetry-encoder-2>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-2;


define class <telemetry-encoder-3> (<object>)
  slot compression-level :: <integer> = 3;
end class <telemetry-encoder-3>;

define generic encode-packet-3 (enc :: <telemetry-encoder-3>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-3 (enc :: <telemetry-encoder-3>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-3;


define class <telemetry-encoder-4> (<object>)
  slot compression-level :: <integer> = 4;
end class <telemetry-encoder-4>;

define generic encode-packet-4 (enc :: <telemetry-encoder-4>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-4 (enc :: <telemetry-encoder-4>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-4;


define class <telemetry-encoder-5> (<object>)
  slot compression-level :: <integer> = 5;
end class <telemetry-encoder-5>;

define generic encode-packet-5 (enc :: <telemetry-encoder-5>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-5 (enc :: <telemetry-encoder-5>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-5;


define class <telemetry-encoder-6> (<object>)
  slot compression-level :: <integer> = 6;
end class <telemetry-encoder-6>;

define generic encode-packet-6 (enc :: <telemetry-encoder-6>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-6 (enc :: <telemetry-encoder-6>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-6;


define class <telemetry-encoder-7> (<object>)
  slot compression-level :: <integer> = 7;
end class <telemetry-encoder-7>;

define generic encode-packet-7 (enc :: <telemetry-encoder-7>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-7 (enc :: <telemetry-encoder-7>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-7;


define class <telemetry-encoder-8> (<object>)
  slot compression-level :: <integer> = 8;
end class <telemetry-encoder-8>;

define generic encode-packet-8 (enc :: <telemetry-encoder-8>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-8 (enc :: <telemetry-encoder-8>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-8;


define class <telemetry-encoder-9> (<object>)
  slot compression-level :: <integer> = 0;
end class <telemetry-encoder-9>;

define generic encode-packet-9 (enc :: <telemetry-encoder-9>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-9 (enc :: <telemetry-encoder-9>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-9;


define class <telemetry-encoder-10> (<object>)
  slot compression-level :: <integer> = 1;
end class <telemetry-encoder-10>;

define generic encode-packet-10 (enc :: <telemetry-encoder-10>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-10 (enc :: <telemetry-encoder-10>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-10;


define class <telemetry-encoder-11> (<object>)
  slot compression-level :: <integer> = 2;
end class <telemetry-encoder-11>;

define generic encode-packet-11 (enc :: <telemetry-encoder-11>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-11 (enc :: <telemetry-encoder-11>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-11;


define class <telemetry-encoder-12> (<object>)
  slot compression-level :: <integer> = 3;
end class <telemetry-encoder-12>;

define generic encode-packet-12 (enc :: <telemetry-encoder-12>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-12 (enc :: <telemetry-encoder-12>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-12;


define class <telemetry-encoder-13> (<object>)
  slot compression-level :: <integer> = 4;
end class <telemetry-encoder-13>;

define generic encode-packet-13 (enc :: <telemetry-encoder-13>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-13 (enc :: <telemetry-encoder-13>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-13;


define class <telemetry-encoder-14> (<object>)
  slot compression-level :: <integer> = 5;
end class <telemetry-encoder-14>;

define generic encode-packet-14 (enc :: <telemetry-encoder-14>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-14 (enc :: <telemetry-encoder-14>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-14;


define class <telemetry-encoder-15> (<object>)
  slot compression-level :: <integer> = 6;
end class <telemetry-encoder-15>;

define generic encode-packet-15 (enc :: <telemetry-encoder-15>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-15 (enc :: <telemetry-encoder-15>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-15;


define class <telemetry-encoder-16> (<object>)
  slot compression-level :: <integer> = 7;
end class <telemetry-encoder-16>;

define generic encode-packet-16 (enc :: <telemetry-encoder-16>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-16 (enc :: <telemetry-encoder-16>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-16;


define class <telemetry-encoder-17> (<object>)
  slot compression-level :: <integer> = 8;
end class <telemetry-encoder-17>;

define generic encode-packet-17 (enc :: <telemetry-encoder-17>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-17 (enc :: <telemetry-encoder-17>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-17;


define class <telemetry-encoder-18> (<object>)
  slot compression-level :: <integer> = 0;
end class <telemetry-encoder-18>;

define generic encode-packet-18 (enc :: <telemetry-encoder-18>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-18 (enc :: <telemetry-encoder-18>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-18;


define class <telemetry-encoder-19> (<object>)
  slot compression-level :: <integer> = 1;
end class <telemetry-encoder-19>;

define generic encode-packet-19 (enc :: <telemetry-encoder-19>, pkt :: <telemetry-packet>) => (sz :: <integer>);
define method encode-packet-19 (enc :: <telemetry-encoder-19>, pkt :: <telemetry-packet>) => (sz :: <integer>)
  16 + enc.compression-level;
end method encode-packet-19;
