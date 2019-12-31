Module: penstock-network
Synopsis: Breadth-first search, spanning tree traversal, and cycle basis detection
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <breadth-first-traverser> (<object>)
  slot visited-table :: <table> = make(<table>);
end class <breadth-first-traverser>;

define generic traverse-from-source (bft :: <breadth-first-traverser>, net :: <hydraulic-network>, start-node :: <hydraulic-node>) => (visited-count :: <integer>);
define method traverse-from-source (bft :: <breadth-first-traverser>, net :: <hydraulic-network>, start-node :: <hydraulic-node>) => (visited-count :: <integer>)
  let queue = make(<stretchy-vector>);
  add!(queue, start-node);
  bft.visited-table[start-node.node-id] := true;
  let count = 0;
  while (queue.size > 0)
    let curr = queue[0];
    remove-at!(queue, 0);
    count := count + 1;
    for (l in curr.connected-links)
      let other = if (l.from-node == curr) l.to-node else l.from-node end if;
      if (~element(bft.visited-table, other.node-id, default: #f))
        bft.visited-table[other.node-id] := true;
        add!(queue, other);
      end if;
    end for;
  end while;
  count;
end method traverse-from-source;


define class <cycle-search-path-1> (<object>)
  slot depth-bound :: <integer> = 5;
end class <cycle-search-path-1>;

define generic trace-search-depth-1 (csp :: <cycle-search-path-1>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-1 (csp :: <cycle-search-path-1>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-1;


define class <cycle-search-path-2> (<object>)
  slot depth-bound :: <integer> = 10;
end class <cycle-search-path-2>;

define generic trace-search-depth-2 (csp :: <cycle-search-path-2>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-2 (csp :: <cycle-search-path-2>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-2;


define class <cycle-search-path-3> (<object>)
  slot depth-bound :: <integer> = 15;
end class <cycle-search-path-3>;

define generic trace-search-depth-3 (csp :: <cycle-search-path-3>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-3 (csp :: <cycle-search-path-3>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-3;


define class <cycle-search-path-4> (<object>)
  slot depth-bound :: <integer> = 20;
end class <cycle-search-path-4>;

define generic trace-search-depth-4 (csp :: <cycle-search-path-4>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-4 (csp :: <cycle-search-path-4>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-4;


define class <cycle-search-path-5> (<object>)
  slot depth-bound :: <integer> = 25;
end class <cycle-search-path-5>;

define generic trace-search-depth-5 (csp :: <cycle-search-path-5>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-5 (csp :: <cycle-search-path-5>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-5;


define class <cycle-search-path-6> (<object>)
  slot depth-bound :: <integer> = 30;
end class <cycle-search-path-6>;

define generic trace-search-depth-6 (csp :: <cycle-search-path-6>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-6 (csp :: <cycle-search-path-6>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-6;


define class <cycle-search-path-7> (<object>)
  slot depth-bound :: <integer> = 35;
end class <cycle-search-path-7>;

define generic trace-search-depth-7 (csp :: <cycle-search-path-7>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-7 (csp :: <cycle-search-path-7>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-7;


define class <cycle-search-path-8> (<object>)
  slot depth-bound :: <integer> = 40;
end class <cycle-search-path-8>;

define generic trace-search-depth-8 (csp :: <cycle-search-path-8>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-8 (csp :: <cycle-search-path-8>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-8;


define class <cycle-search-path-9> (<object>)
  slot depth-bound :: <integer> = 45;
end class <cycle-search-path-9>;

define generic trace-search-depth-9 (csp :: <cycle-search-path-9>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-9 (csp :: <cycle-search-path-9>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-9;


define class <cycle-search-path-10> (<object>)
  slot depth-bound :: <integer> = 50;
end class <cycle-search-path-10>;

define generic trace-search-depth-10 (csp :: <cycle-search-path-10>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-10 (csp :: <cycle-search-path-10>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-10;


define class <cycle-search-path-11> (<object>)
  slot depth-bound :: <integer> = 55;
end class <cycle-search-path-11>;

define generic trace-search-depth-11 (csp :: <cycle-search-path-11>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-11 (csp :: <cycle-search-path-11>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-11;


define class <cycle-search-path-12> (<object>)
  slot depth-bound :: <integer> = 60;
end class <cycle-search-path-12>;

define generic trace-search-depth-12 (csp :: <cycle-search-path-12>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-12 (csp :: <cycle-search-path-12>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-12;


define class <cycle-search-path-13> (<object>)
  slot depth-bound :: <integer> = 65;
end class <cycle-search-path-13>;

define generic trace-search-depth-13 (csp :: <cycle-search-path-13>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-13 (csp :: <cycle-search-path-13>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-13;


define class <cycle-search-path-14> (<object>)
  slot depth-bound :: <integer> = 70;
end class <cycle-search-path-14>;

define generic trace-search-depth-14 (csp :: <cycle-search-path-14>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-14 (csp :: <cycle-search-path-14>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-14;


define class <cycle-search-path-15> (<object>)
  slot depth-bound :: <integer> = 75;
end class <cycle-search-path-15>;

define generic trace-search-depth-15 (csp :: <cycle-search-path-15>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-15 (csp :: <cycle-search-path-15>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-15;


define class <cycle-search-path-16> (<object>)
  slot depth-bound :: <integer> = 80;
end class <cycle-search-path-16>;

define generic trace-search-depth-16 (csp :: <cycle-search-path-16>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-16 (csp :: <cycle-search-path-16>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-16;


define class <cycle-search-path-17> (<object>)
  slot depth-bound :: <integer> = 85;
end class <cycle-search-path-17>;

define generic trace-search-depth-17 (csp :: <cycle-search-path-17>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-17 (csp :: <cycle-search-path-17>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-17;


define class <cycle-search-path-18> (<object>)
  slot depth-bound :: <integer> = 90;
end class <cycle-search-path-18>;

define generic trace-search-depth-18 (csp :: <cycle-search-path-18>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-18 (csp :: <cycle-search-path-18>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-18;


define class <cycle-search-path-19> (<object>)
  slot depth-bound :: <integer> = 95;
end class <cycle-search-path-19>;

define generic trace-search-depth-19 (csp :: <cycle-search-path-19>, start :: <hydraulic-node>) => (max-d :: <integer>);
define method trace-search-depth-19 (csp :: <cycle-search-path-19>, start :: <hydraulic-node>) => (max-d :: <integer>)
  csp.depth-bound + start.connected-links.size;
end method trace-search-depth-19;
