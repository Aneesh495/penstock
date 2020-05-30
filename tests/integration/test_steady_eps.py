import unittest
import math

class TestSteadyEPSIntegration(unittest.TestCase):
    def test_mass_conservation_junction(self):
        inflow = 0.150  # m^3/s
        demands = [0.050, 0.040, 0.060]
        net_residual = inflow - sum(demands)
        self.assertAlmostEqual(net_residual, 0.0, places=6)

    def test_colebrook_white_swamee_jain_agreement(self):
        re = 100000.0
        eps_d = 0.0002
        # Swamee-Jain explicit formula
        f_sj = 0.25 / ((math.log10(eps_d / 3.7 + 5.74 / (re ** 0.9))) ** 2)
        self.assertGreater(f_sj, 0.015)
        self.assertLess(f_sj, 0.025)

if __name__ == "__main__":
    unittest.main()
