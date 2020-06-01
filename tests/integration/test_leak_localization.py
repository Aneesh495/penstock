import unittest
import math

class TestLeakLocalizationIntegration(unittest.TestCase):
    def test_inverse_transient_delay(self):
        wave_speed = 1200.0
        burst_location = 300.0 # meters from sensor
        round_trip_distance = 2.0 * burst_location
        delay = round_trip_distance / wave_speed
        self.assertAlmostEqual(delay, 0.50, places=3)

    def test_pressure_dependent_emitter(self):
        c_emitter = 0.002
        alpha = 0.5
        pressure = 49.0 # meters head (sqrt = 7.0)
        q_leak = c_emitter * (pressure ** alpha)
        expected_leak = 0.014 # m^3/s (14 L/s)
        self.assertAlmostEqual(q_leak, expected_leak, places=4)

if __name__ == "__main__":
    unittest.main()
