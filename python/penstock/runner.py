import math
from .visualizer import render_ascii_oscilloscope, render_hgl_profile

class SimulationRunner:
    def __init__(self, bindings=None):
        self.bindings = bindings

    def run_water_hammer_demo(self, valve_closure_time=1.0, with_surge_tank=True):
        # Joukowsky acoustic wave simulation with surge tank comparison
        steps = 100
        dt = 0.05
        time_series = []
        base_head = 80.0
        wave_speed = 1200.0
        v0 = 2.0
        g = 9.80665
        joukowsky_head = (wave_speed * v0) / g # Delta H = a * delta V / g
        
        damping = 0.04 if not with_surge_tank else 0.25
        amplitude = joukowsky_head if not with_surge_tank else (joukowsky_head * 0.22)
        
        for t in range(steps):
            time_sec = t * dt
            # Decaying acoustic pressure oscillation
            head = base_head + amplitude * math.exp(-damping * time_sec) * math.cos(2.0 * math.pi * time_sec / 1.6)
            time_series.append(head)
            
        return time_series

    def run_dma_leak_localization_demo(self):
        # ITA pressure wave reflection timing to pinpoint pipe burst
        c = 1200.0 # wave speed m/s
        reflection_delay = 0.4167 # seconds (500m return trip)
        burst_distance = 0.5 * reflection_delay * c
        return {
            "burst_distance_m": burst_distance,
            "leak_coefficient": 0.0035,
            "estimated_loss_lps": 12.4
        }
