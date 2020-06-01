import unittest
import math

class TestWaterHammerIntegration(unittest.TestCase):
    def test_joukowsky_pressure_rise(self):
        wave_speed = 1200.0  # m/s
        delta_v = 1.5        # m/s
        g = 9.80665
        delta_h = (wave_speed * delta_v) / g
        expected_h = 183.55  # meters head
        self.assertAlmostEqual(delta_h, expected_h, delta=0.5)

    def test_surge_vessel_damping(self):
        v0 = 25.0  # m^3 initial gas
        p0 = 10.33 # atmospheric head
        gamma = 1.2
        c_poly = p0 * (v0 ** gamma)
        # When compressed to 20 m^3
        v1 = 20.0
        p1 = c_poly / (v1 ** gamma)
        self.assertGreater(p1, p0)
        self.assertLess(p1, 50.0)

if __name__ == "__main__":
    unittest.main()
