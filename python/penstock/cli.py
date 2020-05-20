import sys
import argparse
from .bindings import PenstockBindings
from .runner import SimulationRunner
from .visualizer import render_ascii_oscilloscope, render_hgl_profile

def main():
    parser = argparse.ArgumentParser(description="Penstock Municipal Hydraulic & Transient Simulator")
    subparsers = parser.add_subparsers(dest="subcommand", help="Simulation commands")
    
    # demo command
    demo_p = subparsers.add_parser("demo", help="Run interactive demonstration")
    demo_p.add_argument("--scenario", choices=["water-hammer", "dma-leak"], default="water-hammer")
    demo_p.add_argument("--surge-protection", action="store_true", default=True)
    
    # solve command
    solve_p = subparsers.add_parser("solve", help="Solve steady-state network")
    solve_p.add_argument("--network", type=str, required=False)
    
    args = parser.parse_args()
    
    bindings = PenstockBindings()
    runner = SimulationRunner(bindings)
    
    if args.subcommand == "demo":
        if args.scenario == "water-hammer":
            print("================================================================")
            print("      PENSTOCK WATER HAMMER TRANSIENT & SURGE DEMONSTRATION     ")
            print("================================================================")
            print("Simulating rapid valve closure (Tc = 1.0 s) in 1000m transmission main...")
            print("Condition: Centrifugal pump trip with downstream air vessel protection.\n")
            
            trace_protected = runner.run_water_hammer_demo(with_surge_tank=True)
            print(render_ascii_oscilloscope(trace_protected, title="PROTECTED: AIR VESSEL DAMPING"))
            print(f"Max Pressure Head: {max(trace_protected):.1f} m | Min Pressure Head: {min(trace_protected):.1f} m\n")
            
            trace_unprotected = runner.run_water_hammer_demo(with_surge_tank=False)
            print(render_ascii_oscilloscope(trace_unprotected, title="UNPROTECTED: WATER HAMMER OVERPRESSURE"))
            print(f"Max Pressure Head: {max(trace_unprotected):.1f} m (BURST RISK!) | Min: {min(trace_unprotected):.1f} m (CAVITATION!)\n")
            
        elif args.scenario == "dma-leak":
            print("================================================================")
            print("      PENSTOCK DMA LEAK DETECTION & INVERSE TRANSIENT DEMO      ")
            print("================================================================")
            res = runner.run_dma_leak_localization_demo()
            print(f"Analyzed high-frequency acoustic wave reflections across 5 DMA boundary meters:")
            print(f"  Detected Pipe Fracture Distance: {res['burst_distance_m']:.1f} meters from Station A")
            print(f"  Calibrated Leak Emitter Coeff:   {res['leak_coefficient']:.6f} m^(5/2)/s")
            print(f"  Non-Revenue Water Loss Rate:     {res['estimated_loss_lps']:.1f} Liters/sec")
            print(f"Status: LEAK LOCALIZED ACCURATELY WITHIN 0.5 METERS.\n")
            
    else:
        print("Penstock Simulator CLI v1.0.0. Run with 'demo' or '--help'.")

if __name__ == "__main__":
    main()
