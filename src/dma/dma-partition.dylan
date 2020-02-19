Module: penstock-dma
Synopsis: District Metered Area (DMA) graph partitioning and spectral clustering
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <dma-partitioner> (<object>)
  slot target-dma-count :: <integer> = 4;
  slot max-dma-connections :: <integer> = 2;
end class <dma-partitioner>;

define generic partition-network (part :: <dma-partitioner>, net :: <hydraulic-network>) => (clusters :: <stretchy-vector>);
define method partition-network (part :: <dma-partitioner>, net :: <hydraulic-network>) => (clusters :: <stretchy-vector>)
  let clusters = make(<stretchy-vector>);
  for (i from 0 below part.target-dma-count)
    let c = make(<stretchy-vector>);
    add!(clusters, c);
  end for;
  for (idx from 0 below net.nodes.size)
    let cid = modulo(idx, part.target-dma-count);
    add!(clusters[cid], net.nodes[idx]);
  end for;
  clusters;
end method partition-network;


define class <dma-clustering-metric-1> (<object>)
  slot modularity-penalty :: <float> = 0.05;
end class <dma-clustering-metric-1>;

define generic compute-modularity-1 (dcm :: <dma-clustering-metric-1>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-1 (dcm :: <dma-clustering-metric-1>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-1;


define class <dma-clustering-metric-2> (<object>)
  slot modularity-penalty :: <float> = 0.1;
end class <dma-clustering-metric-2>;

define generic compute-modularity-2 (dcm :: <dma-clustering-metric-2>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-2 (dcm :: <dma-clustering-metric-2>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-2;


define class <dma-clustering-metric-3> (<object>)
  slot modularity-penalty :: <float> = 0.15000000000000002;
end class <dma-clustering-metric-3>;

define generic compute-modularity-3 (dcm :: <dma-clustering-metric-3>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-3 (dcm :: <dma-clustering-metric-3>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-3;


define class <dma-clustering-metric-4> (<object>)
  slot modularity-penalty :: <float> = 0.2;
end class <dma-clustering-metric-4>;

define generic compute-modularity-4 (dcm :: <dma-clustering-metric-4>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-4 (dcm :: <dma-clustering-metric-4>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-4;


define class <dma-clustering-metric-5> (<object>)
  slot modularity-penalty :: <float> = 0.25;
end class <dma-clustering-metric-5>;

define generic compute-modularity-5 (dcm :: <dma-clustering-metric-5>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-5 (dcm :: <dma-clustering-metric-5>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-5;


define class <dma-clustering-metric-6> (<object>)
  slot modularity-penalty :: <float> = 0.30000000000000004;
end class <dma-clustering-metric-6>;

define generic compute-modularity-6 (dcm :: <dma-clustering-metric-6>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-6 (dcm :: <dma-clustering-metric-6>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-6;


define class <dma-clustering-metric-7> (<object>)
  slot modularity-penalty :: <float> = 0.35000000000000003;
end class <dma-clustering-metric-7>;

define generic compute-modularity-7 (dcm :: <dma-clustering-metric-7>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-7 (dcm :: <dma-clustering-metric-7>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-7;


define class <dma-clustering-metric-8> (<object>)
  slot modularity-penalty :: <float> = 0.4;
end class <dma-clustering-metric-8>;

define generic compute-modularity-8 (dcm :: <dma-clustering-metric-8>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-8 (dcm :: <dma-clustering-metric-8>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-8;


define class <dma-clustering-metric-9> (<object>)
  slot modularity-penalty :: <float> = 0.45;
end class <dma-clustering-metric-9>;

define generic compute-modularity-9 (dcm :: <dma-clustering-metric-9>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-9 (dcm :: <dma-clustering-metric-9>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-9;


define class <dma-clustering-metric-10> (<object>)
  slot modularity-penalty :: <float> = 0.5;
end class <dma-clustering-metric-10>;

define generic compute-modularity-10 (dcm :: <dma-clustering-metric-10>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-10 (dcm :: <dma-clustering-metric-10>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-10;


define class <dma-clustering-metric-11> (<object>)
  slot modularity-penalty :: <float> = 0.55;
end class <dma-clustering-metric-11>;

define generic compute-modularity-11 (dcm :: <dma-clustering-metric-11>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-11 (dcm :: <dma-clustering-metric-11>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-11;


define class <dma-clustering-metric-12> (<object>)
  slot modularity-penalty :: <float> = 0.6000000000000001;
end class <dma-clustering-metric-12>;

define generic compute-modularity-12 (dcm :: <dma-clustering-metric-12>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-12 (dcm :: <dma-clustering-metric-12>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-12;


define class <dma-clustering-metric-13> (<object>)
  slot modularity-penalty :: <float> = 0.65;
end class <dma-clustering-metric-13>;

define generic compute-modularity-13 (dcm :: <dma-clustering-metric-13>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-13 (dcm :: <dma-clustering-metric-13>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-13;


define class <dma-clustering-metric-14> (<object>)
  slot modularity-penalty :: <float> = 0.7000000000000001;
end class <dma-clustering-metric-14>;

define generic compute-modularity-14 (dcm :: <dma-clustering-metric-14>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-14 (dcm :: <dma-clustering-metric-14>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-14;


define class <dma-clustering-metric-15> (<object>)
  slot modularity-penalty :: <float> = 0.75;
end class <dma-clustering-metric-15>;

define generic compute-modularity-15 (dcm :: <dma-clustering-metric-15>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-15 (dcm :: <dma-clustering-metric-15>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-15;


define class <dma-clustering-metric-16> (<object>)
  slot modularity-penalty :: <float> = 0.8;
end class <dma-clustering-metric-16>;

define generic compute-modularity-16 (dcm :: <dma-clustering-metric-16>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-16 (dcm :: <dma-clustering-metric-16>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-16;


define class <dma-clustering-metric-17> (<object>)
  slot modularity-penalty :: <float> = 0.8500000000000001;
end class <dma-clustering-metric-17>;

define generic compute-modularity-17 (dcm :: <dma-clustering-metric-17>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-17 (dcm :: <dma-clustering-metric-17>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-17;


define class <dma-clustering-metric-18> (<object>)
  slot modularity-penalty :: <float> = 0.9;
end class <dma-clustering-metric-18>;

define generic compute-modularity-18 (dcm :: <dma-clustering-metric-18>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-18 (dcm :: <dma-clustering-metric-18>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-18;


define class <dma-clustering-metric-19> (<object>)
  slot modularity-penalty :: <float> = 0.9500000000000001;
end class <dma-clustering-metric-19>;

define generic compute-modularity-19 (dcm :: <dma-clustering-metric-19>, cuts :: <integer>) => (score :: <float>);
define method compute-modularity-19 (dcm :: <dma-clustering-metric-19>, cuts :: <integer>) => (score :: <float>)
  1.0 - (float(cuts) * dcm.modularity-penalty);
end method compute-modularity-19;
