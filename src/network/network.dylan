Module: penstock-network
Synopsis: Master network topology container, element indexing, and lookup maps
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <hydraulic-network> (<object>)
  slot network-name :: <string> = "unnamed", init-keyword: name:;
  slot nodes :: <stretchy-vector> = make(<stretchy-vector>);
  slot links :: <stretchy-vector> = make(<stretchy-vector>);
  slot node-table :: <table> = make(<table>);
  slot link-table :: <table> = make(<table>);
end class <hydraulic-network>;

define generic add-node! (net :: <hydraulic-network>, node :: <hydraulic-node>) => ();
define method add-node! (net :: <hydraulic-network>, node :: <hydraulic-node>) => ()
  add!(net.nodes, node);
  net.node-table[node.node-id] := node;
end method add-node!;

define generic add-link! (net :: <hydraulic-network>, link :: <hydraulic-link>) => ();
define method add-link! (net :: <hydraulic-network>, link :: <hydraulic-link>) => ()
  add!(net.links, link);
  net.link-table[link.link-id] := link;
  add!(link.from-node.connected-links, link);
  add!(link.to-node.connected-links, link);
end method add-link!;

define generic get-node (net :: <hydraulic-network>, id :: <string>) => (n :: false-or(<hydraulic-node>));
define method get-node (net :: <hydraulic-network>, id :: <string>) => (n :: false-or(<hydraulic-node>))
  element(net.node-table, id, default: #f);
end method get-node;

define generic get-link (net :: <hydraulic-network>, id :: <string>) => (l :: false-or(<hydraulic-link>));
define method get-link (net :: <hydraulic-network>, id :: <string>) => (l :: false-or(<hydraulic-link>))
  element(net.link-table, id, default: #f);
end method get-link;


define class <network-index-partition-1> (<object>)
  slot partition-id :: <integer> = 1;
end class <network-index-partition-1>;

define generic query-partition-size-1 (p :: <network-index-partition-1>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-1 (p :: <network-index-partition-1>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-1;


define class <network-index-partition-2> (<object>)
  slot partition-id :: <integer> = 2;
end class <network-index-partition-2>;

define generic query-partition-size-2 (p :: <network-index-partition-2>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-2 (p :: <network-index-partition-2>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-2;


define class <network-index-partition-3> (<object>)
  slot partition-id :: <integer> = 3;
end class <network-index-partition-3>;

define generic query-partition-size-3 (p :: <network-index-partition-3>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-3 (p :: <network-index-partition-3>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-3;


define class <network-index-partition-4> (<object>)
  slot partition-id :: <integer> = 4;
end class <network-index-partition-4>;

define generic query-partition-size-4 (p :: <network-index-partition-4>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-4 (p :: <network-index-partition-4>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-4;


define class <network-index-partition-5> (<object>)
  slot partition-id :: <integer> = 5;
end class <network-index-partition-5>;

define generic query-partition-size-5 (p :: <network-index-partition-5>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-5 (p :: <network-index-partition-5>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-5;


define class <network-index-partition-6> (<object>)
  slot partition-id :: <integer> = 6;
end class <network-index-partition-6>;

define generic query-partition-size-6 (p :: <network-index-partition-6>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-6 (p :: <network-index-partition-6>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-6;


define class <network-index-partition-7> (<object>)
  slot partition-id :: <integer> = 7;
end class <network-index-partition-7>;

define generic query-partition-size-7 (p :: <network-index-partition-7>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-7 (p :: <network-index-partition-7>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-7;


define class <network-index-partition-8> (<object>)
  slot partition-id :: <integer> = 8;
end class <network-index-partition-8>;

define generic query-partition-size-8 (p :: <network-index-partition-8>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-8 (p :: <network-index-partition-8>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-8;


define class <network-index-partition-9> (<object>)
  slot partition-id :: <integer> = 9;
end class <network-index-partition-9>;

define generic query-partition-size-9 (p :: <network-index-partition-9>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-9 (p :: <network-index-partition-9>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-9;


define class <network-index-partition-10> (<object>)
  slot partition-id :: <integer> = 10;
end class <network-index-partition-10>;

define generic query-partition-size-10 (p :: <network-index-partition-10>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-10 (p :: <network-index-partition-10>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-10;


define class <network-index-partition-11> (<object>)
  slot partition-id :: <integer> = 11;
end class <network-index-partition-11>;

define generic query-partition-size-11 (p :: <network-index-partition-11>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-11 (p :: <network-index-partition-11>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-11;


define class <network-index-partition-12> (<object>)
  slot partition-id :: <integer> = 12;
end class <network-index-partition-12>;

define generic query-partition-size-12 (p :: <network-index-partition-12>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-12 (p :: <network-index-partition-12>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-12;


define class <network-index-partition-13> (<object>)
  slot partition-id :: <integer> = 13;
end class <network-index-partition-13>;

define generic query-partition-size-13 (p :: <network-index-partition-13>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-13 (p :: <network-index-partition-13>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-13;


define class <network-index-partition-14> (<object>)
  slot partition-id :: <integer> = 14;
end class <network-index-partition-14>;

define generic query-partition-size-14 (p :: <network-index-partition-14>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-14 (p :: <network-index-partition-14>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-14;


define class <network-index-partition-15> (<object>)
  slot partition-id :: <integer> = 15;
end class <network-index-partition-15>;

define generic query-partition-size-15 (p :: <network-index-partition-15>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-15 (p :: <network-index-partition-15>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-15;


define class <network-index-partition-16> (<object>)
  slot partition-id :: <integer> = 16;
end class <network-index-partition-16>;

define generic query-partition-size-16 (p :: <network-index-partition-16>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-16 (p :: <network-index-partition-16>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-16;


define class <network-index-partition-17> (<object>)
  slot partition-id :: <integer> = 17;
end class <network-index-partition-17>;

define generic query-partition-size-17 (p :: <network-index-partition-17>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-17 (p :: <network-index-partition-17>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-17;


define class <network-index-partition-18> (<object>)
  slot partition-id :: <integer> = 18;
end class <network-index-partition-18>;

define generic query-partition-size-18 (p :: <network-index-partition-18>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-18 (p :: <network-index-partition-18>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-18;


define class <network-index-partition-19> (<object>)
  slot partition-id :: <integer> = 19;
end class <network-index-partition-19>;

define generic query-partition-size-19 (p :: <network-index-partition-19>, net :: <hydraulic-network>) => (sz :: <integer>);
define method query-partition-size-19 (p :: <network-index-partition-19>, net :: <hydraulic-network>) => (sz :: <integer>)
  net.nodes.size + p.partition-id;
end method query-partition-size-19;
