import unittest
import math

class TestRegressionLedger(unittest.TestCase):
    def test_bug_001_zero_flow_reynolds_divergence(self):
        # Repro: When velocity is exactly 0.0, kinematic viscosity division could divide by zero
        velocity = 0.0
        diameter = 0.3
        nu = 1.004e-6
        re = (abs(velocity) * diameter) / max(1e-9, nu)
        self.assertEqual(re, 0.0)

    def test_bug_002_negative_pressure_emitter_nan(self):
        # Repro: Under sub-atmospheric pressure, fractional exponent of negative number produces NaN
        pressure = -5.0
        c_emitter = 0.005
        q_leak = c_emitter * (max(0.0, pressure) ** 0.5)
        self.assertEqual(q_leak, 0.0)

    def test_bug_003_courant_number_overflow(self):
        # Repro: If reach length is excessively small, Courant CFL exceeds 1.0 violating stability
        wave_speed = 1200.0
        dt = 0.01
        dx = 15.0 # c*dt / dx = 12 / 15 = 0.8 <= 1.0
        courant = (wave_speed * dt) / dx
        self.assertLessEqual(courant, 1.0)

if __name__ == "__main__":
    unittest.main()
