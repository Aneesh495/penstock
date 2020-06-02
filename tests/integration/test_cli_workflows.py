import unittest
import subprocess
import sys
import os

class TestCLIWorkflows(unittest.TestCase):
    def test_cli_demo_water_hammer(self):
        repo_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
        cmd = [sys.executable, "python/penstock/cli.py", "demo", "--scenario", "water-hammer"]
        res = subprocess.run(cmd, cwd=repo_dir, capture_output=True, text=True)
        self.assertEqual(res.returncode, 0)
        self.assertIn("PROTECTED: AIR VESSEL DAMPING", res.stdout)
        self.assertIn("UNPROTECTED: WATER HAMMER OVERPRESSURE", res.stdout)

    def test_cli_demo_dma_leak(self):
        repo_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
        cmd = [sys.executable, "python/penstock/cli.py", "demo", "--scenario", "dma-leak"]
        res = subprocess.run(cmd, cwd=repo_dir, capture_output=True, text=True)
        self.assertEqual(res.returncode, 0)
        self.assertIn("LEAK LOCALIZED ACCURATELY", res.stdout)

if __name__ == "__main__":
    unittest.main()
