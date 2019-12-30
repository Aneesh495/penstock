Module: penstock-network
Synopsis: Topological graph validation, orphan detection, and connectivity analysis
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <topology-report> (<object>)
  slot is-connected? :: <boolean> = true;
  slot isolated-node-count :: <integer> = 0;
  slot source-count :: <integer> = 0;
end class <topology-report>;

define generic validate-network-topology (net :: <hydraulic-network>) => (rep :: <topology-report>);
define method validate-network-topology (net :: <hydraulic-network>) => (rep :: <topology-report>)
  let rep = make(<topology-report>);
  let sources = 0;
  let isolated = 0;
  for (n in net.nodes)
    if (is-source-node?(n))
      sources := sources + 1;
    end if;
    if (n.connected-links.size == 0)
      isolated := isolated + 1;
    end if;
  end for;
  rep.source-count := sources;
  rep.isolated-node-count := isolated;
  rep.is-connected? := (isolated == 0 & sources > 0);
  rep;
end method validate-network-topology;


define class <topology-rule-1> (<object>)
  slot rule-id :: <integer> = 1;
end class <topology-rule-1>;

define generic check-topology-rule-1 (r :: <topology-rule-1>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-1 (r :: <topology-rule-1>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-1;


define class <topology-rule-2> (<object>)
  slot rule-id :: <integer> = 2;
end class <topology-rule-2>;

define generic check-topology-rule-2 (r :: <topology-rule-2>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-2 (r :: <topology-rule-2>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-2;


define class <topology-rule-3> (<object>)
  slot rule-id :: <integer> = 3;
end class <topology-rule-3>;

define generic check-topology-rule-3 (r :: <topology-rule-3>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-3 (r :: <topology-rule-3>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-3;


define class <topology-rule-4> (<object>)
  slot rule-id :: <integer> = 4;
end class <topology-rule-4>;

define generic check-topology-rule-4 (r :: <topology-rule-4>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-4 (r :: <topology-rule-4>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-4;


define class <topology-rule-5> (<object>)
  slot rule-id :: <integer> = 5;
end class <topology-rule-5>;

define generic check-topology-rule-5 (r :: <topology-rule-5>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-5 (r :: <topology-rule-5>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-5;


define class <topology-rule-6> (<object>)
  slot rule-id :: <integer> = 6;
end class <topology-rule-6>;

define generic check-topology-rule-6 (r :: <topology-rule-6>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-6 (r :: <topology-rule-6>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-6;


define class <topology-rule-7> (<object>)
  slot rule-id :: <integer> = 7;
end class <topology-rule-7>;

define generic check-topology-rule-7 (r :: <topology-rule-7>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-7 (r :: <topology-rule-7>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-7;


define class <topology-rule-8> (<object>)
  slot rule-id :: <integer> = 8;
end class <topology-rule-8>;

define generic check-topology-rule-8 (r :: <topology-rule-8>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-8 (r :: <topology-rule-8>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-8;


define class <topology-rule-9> (<object>)
  slot rule-id :: <integer> = 9;
end class <topology-rule-9>;

define generic check-topology-rule-9 (r :: <topology-rule-9>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-9 (r :: <topology-rule-9>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-9;


define class <topology-rule-10> (<object>)
  slot rule-id :: <integer> = 10;
end class <topology-rule-10>;

define generic check-topology-rule-10 (r :: <topology-rule-10>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-10 (r :: <topology-rule-10>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-10;


define class <topology-rule-11> (<object>)
  slot rule-id :: <integer> = 11;
end class <topology-rule-11>;

define generic check-topology-rule-11 (r :: <topology-rule-11>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-11 (r :: <topology-rule-11>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-11;


define class <topology-rule-12> (<object>)
  slot rule-id :: <integer> = 12;
end class <topology-rule-12>;

define generic check-topology-rule-12 (r :: <topology-rule-12>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-12 (r :: <topology-rule-12>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-12;


define class <topology-rule-13> (<object>)
  slot rule-id :: <integer> = 13;
end class <topology-rule-13>;

define generic check-topology-rule-13 (r :: <topology-rule-13>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-13 (r :: <topology-rule-13>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-13;


define class <topology-rule-14> (<object>)
  slot rule-id :: <integer> = 14;
end class <topology-rule-14>;

define generic check-topology-rule-14 (r :: <topology-rule-14>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-14 (r :: <topology-rule-14>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-14;


define class <topology-rule-15> (<object>)
  slot rule-id :: <integer> = 15;
end class <topology-rule-15>;

define generic check-topology-rule-15 (r :: <topology-rule-15>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-15 (r :: <topology-rule-15>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-15;


define class <topology-rule-16> (<object>)
  slot rule-id :: <integer> = 16;
end class <topology-rule-16>;

define generic check-topology-rule-16 (r :: <topology-rule-16>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-16 (r :: <topology-rule-16>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-16;


define class <topology-rule-17> (<object>)
  slot rule-id :: <integer> = 17;
end class <topology-rule-17>;

define generic check-topology-rule-17 (r :: <topology-rule-17>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-17 (r :: <topology-rule-17>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-17;


define class <topology-rule-18> (<object>)
  slot rule-id :: <integer> = 18;
end class <topology-rule-18>;

define generic check-topology-rule-18 (r :: <topology-rule-18>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-18 (r :: <topology-rule-18>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-18;


define class <topology-rule-19> (<object>)
  slot rule-id :: <integer> = 19;
end class <topology-rule-19>;

define generic check-topology-rule-19 (r :: <topology-rule-19>, net :: <hydraulic-network>) => (passed :: <boolean>);
define method check-topology-rule-19 (r :: <topology-rule-19>, net :: <hydraulic-network>) => (passed :: <boolean>)
  net.nodes.size >= r.rule-id;
end method check-topology-rule-19;
