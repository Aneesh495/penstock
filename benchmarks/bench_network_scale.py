import time
import math

def benchmark_synthetic_grid(node_count=1000):
    print(f"Synthesizing {node_count}-node municipal network topology...")
    start = time.perf_counter()
    nodes = [{"id": f"J_{i}", "elevation": 20.0 + (i % 50), "demand": 0.005} for i in range(node_count)]
    links = [{"id": f"P_{i}", "from": f"J_{i}", "to": f"J_{(i+1)%node_count}", "length": 500.0, "diam": 0.25} for i in range(node_count)]
    elapsed_ms = (time.perf_counter() - start) * 1000.0
    print(f"Synthesized network with {len(nodes)} nodes and {len(links)} pipes in {elapsed_ms:.2f} ms")

if __name__ == "__main__":
    benchmark_synthetic_grid(5000)
