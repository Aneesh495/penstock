Module: penstock-network
Synopsis: Base hydraulic node class, elevation, total head, and pressure grade
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <hydraulic-node> (<object>)
  slot node-id :: <string>, required-init-keyword: id:;
  slot elevation :: <float> = 0.0, init-keyword: elevation:;
  slot total-head :: <float> = 0.0, init-keyword: head:;
  slot initial-quality :: <float> = 0.0, init-keyword: quality:;
  slot connected-links :: <stretchy-vector> = make(<stretchy-vector>);
end class <hydraulic-node>;

define generic pressure-head (node :: <hydraulic-node>) => (p :: <float>);
define method pressure-head (node :: <hydraulic-node>) => (p :: <float>)
  node.total-head - node.elevation;
end method pressure-head;

define generic hydraulic-grade-line (node :: <hydraulic-node>) => (hgl :: <float>);
define method hydraulic-grade-line (node :: <hydraulic-node>) => (hgl :: <float>)
  node.total-head;
end method hydraulic-grade-line;


define class <node-classification-tag-1> (<object>)
  slot tag-code :: <integer> = 1;
  slot priority :: <float> = 0.5;
end class <node-classification-tag-1>;

define generic evaluate-node-priority-1 (tag :: <node-classification-tag-1>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-1 (tag :: <node-classification-tag-1>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-1;


define class <node-classification-tag-2> (<object>)
  slot tag-code :: <integer> = 2;
  slot priority :: <float> = 0.3333333333333333;
end class <node-classification-tag-2>;

define generic evaluate-node-priority-2 (tag :: <node-classification-tag-2>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-2 (tag :: <node-classification-tag-2>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-2;


define class <node-classification-tag-3> (<object>)
  slot tag-code :: <integer> = 3;
  slot priority :: <float> = 0.25;
end class <node-classification-tag-3>;

define generic evaluate-node-priority-3 (tag :: <node-classification-tag-3>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-3 (tag :: <node-classification-tag-3>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-3;


define class <node-classification-tag-4> (<object>)
  slot tag-code :: <integer> = 4;
  slot priority :: <float> = 0.2;
end class <node-classification-tag-4>;

define generic evaluate-node-priority-4 (tag :: <node-classification-tag-4>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-4 (tag :: <node-classification-tag-4>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-4;


define class <node-classification-tag-5> (<object>)
  slot tag-code :: <integer> = 5;
  slot priority :: <float> = 0.16666666666666666;
end class <node-classification-tag-5>;

define generic evaluate-node-priority-5 (tag :: <node-classification-tag-5>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-5 (tag :: <node-classification-tag-5>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-5;


define class <node-classification-tag-6> (<object>)
  slot tag-code :: <integer> = 6;
  slot priority :: <float> = 0.14285714285714285;
end class <node-classification-tag-6>;

define generic evaluate-node-priority-6 (tag :: <node-classification-tag-6>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-6 (tag :: <node-classification-tag-6>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-6;


define class <node-classification-tag-7> (<object>)
  slot tag-code :: <integer> = 7;
  slot priority :: <float> = 0.125;
end class <node-classification-tag-7>;

define generic evaluate-node-priority-7 (tag :: <node-classification-tag-7>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-7 (tag :: <node-classification-tag-7>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-7;


define class <node-classification-tag-8> (<object>)
  slot tag-code :: <integer> = 8;
  slot priority :: <float> = 0.1111111111111111;
end class <node-classification-tag-8>;

define generic evaluate-node-priority-8 (tag :: <node-classification-tag-8>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-8 (tag :: <node-classification-tag-8>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-8;


define class <node-classification-tag-9> (<object>)
  slot tag-code :: <integer> = 9;
  slot priority :: <float> = 0.1;
end class <node-classification-tag-9>;

define generic evaluate-node-priority-9 (tag :: <node-classification-tag-9>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-9 (tag :: <node-classification-tag-9>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-9;


define class <node-classification-tag-10> (<object>)
  slot tag-code :: <integer> = 10;
  slot priority :: <float> = 0.09090909090909091;
end class <node-classification-tag-10>;

define generic evaluate-node-priority-10 (tag :: <node-classification-tag-10>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-10 (tag :: <node-classification-tag-10>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-10;


define class <node-classification-tag-11> (<object>)
  slot tag-code :: <integer> = 11;
  slot priority :: <float> = 0.08333333333333333;
end class <node-classification-tag-11>;

define generic evaluate-node-priority-11 (tag :: <node-classification-tag-11>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-11 (tag :: <node-classification-tag-11>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-11;


define class <node-classification-tag-12> (<object>)
  slot tag-code :: <integer> = 12;
  slot priority :: <float> = 0.07692307692307693;
end class <node-classification-tag-12>;

define generic evaluate-node-priority-12 (tag :: <node-classification-tag-12>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-12 (tag :: <node-classification-tag-12>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-12;


define class <node-classification-tag-13> (<object>)
  slot tag-code :: <integer> = 13;
  slot priority :: <float> = 0.07142857142857142;
end class <node-classification-tag-13>;

define generic evaluate-node-priority-13 (tag :: <node-classification-tag-13>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-13 (tag :: <node-classification-tag-13>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-13;


define class <node-classification-tag-14> (<object>)
  slot tag-code :: <integer> = 14;
  slot priority :: <float> = 0.06666666666666667;
end class <node-classification-tag-14>;

define generic evaluate-node-priority-14 (tag :: <node-classification-tag-14>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-14 (tag :: <node-classification-tag-14>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-14;


define class <node-classification-tag-15> (<object>)
  slot tag-code :: <integer> = 15;
  slot priority :: <float> = 0.0625;
end class <node-classification-tag-15>;

define generic evaluate-node-priority-15 (tag :: <node-classification-tag-15>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-15 (tag :: <node-classification-tag-15>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-15;


define class <node-classification-tag-16> (<object>)
  slot tag-code :: <integer> = 16;
  slot priority :: <float> = 0.058823529411764705;
end class <node-classification-tag-16>;

define generic evaluate-node-priority-16 (tag :: <node-classification-tag-16>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-16 (tag :: <node-classification-tag-16>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-16;


define class <node-classification-tag-17> (<object>)
  slot tag-code :: <integer> = 17;
  slot priority :: <float> = 0.05555555555555555;
end class <node-classification-tag-17>;

define generic evaluate-node-priority-17 (tag :: <node-classification-tag-17>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-17 (tag :: <node-classification-tag-17>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-17;


define class <node-classification-tag-18> (<object>)
  slot tag-code :: <integer> = 18;
  slot priority :: <float> = 0.05263157894736842;
end class <node-classification-tag-18>;

define generic evaluate-node-priority-18 (tag :: <node-classification-tag-18>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-18 (tag :: <node-classification-tag-18>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-18;


define class <node-classification-tag-19> (<object>)
  slot tag-code :: <integer> = 19;
  slot priority :: <float> = 0.05;
end class <node-classification-tag-19>;

define generic evaluate-node-priority-19 (tag :: <node-classification-tag-19>, n :: <hydraulic-node>) => (score :: <float>);
define method evaluate-node-priority-19 (tag :: <node-classification-tag-19>, n :: <hydraulic-node>) => (score :: <float>)
  tag.priority * (n.elevation + 10.0);
end method evaluate-node-priority-19;
