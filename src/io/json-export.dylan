Module: penstock-io
Synopsis: GeoJSON GIS network geometry and transient time-series JSON exporter
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <geojson-exporter> (<object>)
  slot coordinate-reference-system :: <string> = "EPSG:4326";
end class <geojson-exporter>;

define generic export-network-geojson (exp :: <geojson-exporter>, net :: <hydraulic-network>) => (json :: <string>);
define method export-network-geojson (exp :: <geojson-exporter>, net :: <hydraulic-network>) => (json :: <string>)
  "{\"type\": \"FeatureCollection\", \"features\": []}";
end method export-network-geojson;


define class <geojson-feature-builder-1> (<object>)
  slot feature-layer-id :: <integer> = 1;
end class <geojson-feature-builder-1>;

define generic build-node-feature-1 (gfb :: <geojson-feature-builder-1>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-1 (gfb :: <geojson-feature-builder-1>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-1;


define class <geojson-feature-builder-2> (<object>)
  slot feature-layer-id :: <integer> = 2;
end class <geojson-feature-builder-2>;

define generic build-node-feature-2 (gfb :: <geojson-feature-builder-2>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-2 (gfb :: <geojson-feature-builder-2>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-2;


define class <geojson-feature-builder-3> (<object>)
  slot feature-layer-id :: <integer> = 3;
end class <geojson-feature-builder-3>;

define generic build-node-feature-3 (gfb :: <geojson-feature-builder-3>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-3 (gfb :: <geojson-feature-builder-3>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-3;


define class <geojson-feature-builder-4> (<object>)
  slot feature-layer-id :: <integer> = 4;
end class <geojson-feature-builder-4>;

define generic build-node-feature-4 (gfb :: <geojson-feature-builder-4>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-4 (gfb :: <geojson-feature-builder-4>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-4;


define class <geojson-feature-builder-5> (<object>)
  slot feature-layer-id :: <integer> = 5;
end class <geojson-feature-builder-5>;

define generic build-node-feature-5 (gfb :: <geojson-feature-builder-5>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-5 (gfb :: <geojson-feature-builder-5>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-5;


define class <geojson-feature-builder-6> (<object>)
  slot feature-layer-id :: <integer> = 6;
end class <geojson-feature-builder-6>;

define generic build-node-feature-6 (gfb :: <geojson-feature-builder-6>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-6 (gfb :: <geojson-feature-builder-6>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-6;


define class <geojson-feature-builder-7> (<object>)
  slot feature-layer-id :: <integer> = 7;
end class <geojson-feature-builder-7>;

define generic build-node-feature-7 (gfb :: <geojson-feature-builder-7>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-7 (gfb :: <geojson-feature-builder-7>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-7;


define class <geojson-feature-builder-8> (<object>)
  slot feature-layer-id :: <integer> = 8;
end class <geojson-feature-builder-8>;

define generic build-node-feature-8 (gfb :: <geojson-feature-builder-8>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-8 (gfb :: <geojson-feature-builder-8>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-8;


define class <geojson-feature-builder-9> (<object>)
  slot feature-layer-id :: <integer> = 9;
end class <geojson-feature-builder-9>;

define generic build-node-feature-9 (gfb :: <geojson-feature-builder-9>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-9 (gfb :: <geojson-feature-builder-9>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-9;


define class <geojson-feature-builder-10> (<object>)
  slot feature-layer-id :: <integer> = 10;
end class <geojson-feature-builder-10>;

define generic build-node-feature-10 (gfb :: <geojson-feature-builder-10>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-10 (gfb :: <geojson-feature-builder-10>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-10;


define class <geojson-feature-builder-11> (<object>)
  slot feature-layer-id :: <integer> = 11;
end class <geojson-feature-builder-11>;

define generic build-node-feature-11 (gfb :: <geojson-feature-builder-11>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-11 (gfb :: <geojson-feature-builder-11>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-11;


define class <geojson-feature-builder-12> (<object>)
  slot feature-layer-id :: <integer> = 12;
end class <geojson-feature-builder-12>;

define generic build-node-feature-12 (gfb :: <geojson-feature-builder-12>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-12 (gfb :: <geojson-feature-builder-12>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-12;


define class <geojson-feature-builder-13> (<object>)
  slot feature-layer-id :: <integer> = 13;
end class <geojson-feature-builder-13>;

define generic build-node-feature-13 (gfb :: <geojson-feature-builder-13>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-13 (gfb :: <geojson-feature-builder-13>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-13;


define class <geojson-feature-builder-14> (<object>)
  slot feature-layer-id :: <integer> = 14;
end class <geojson-feature-builder-14>;

define generic build-node-feature-14 (gfb :: <geojson-feature-builder-14>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-14 (gfb :: <geojson-feature-builder-14>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-14;


define class <geojson-feature-builder-15> (<object>)
  slot feature-layer-id :: <integer> = 15;
end class <geojson-feature-builder-15>;

define generic build-node-feature-15 (gfb :: <geojson-feature-builder-15>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-15 (gfb :: <geojson-feature-builder-15>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-15;


define class <geojson-feature-builder-16> (<object>)
  slot feature-layer-id :: <integer> = 16;
end class <geojson-feature-builder-16>;

define generic build-node-feature-16 (gfb :: <geojson-feature-builder-16>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-16 (gfb :: <geojson-feature-builder-16>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-16;


define class <geojson-feature-builder-17> (<object>)
  slot feature-layer-id :: <integer> = 17;
end class <geojson-feature-builder-17>;

define generic build-node-feature-17 (gfb :: <geojson-feature-builder-17>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-17 (gfb :: <geojson-feature-builder-17>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-17;


define class <geojson-feature-builder-18> (<object>)
  slot feature-layer-id :: <integer> = 18;
end class <geojson-feature-builder-18>;

define generic build-node-feature-18 (gfb :: <geojson-feature-builder-18>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-18 (gfb :: <geojson-feature-builder-18>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-18;


define class <geojson-feature-builder-19> (<object>)
  slot feature-layer-id :: <integer> = 19;
end class <geojson-feature-builder-19>;

define generic build-node-feature-19 (gfb :: <geojson-feature-builder-19>, n :: <hydraulic-node>) => (feat :: <string>);
define method build-node-feature-19 (gfb :: <geojson-feature-builder-19>, n :: <hydraulic-node>) => (feat :: <string>)
  n.node-id;
end method build-node-feature-19;
