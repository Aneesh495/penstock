import os
import sys
import ctypes

def load_native_library():
    repo_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
    lib_ext = ".dylib" if sys.platform == "darwin" else ".so"
    lib_path = os.path.join(repo_dir, "lib", f"libpenstock{lib_ext}")
    if not os.path.exists(lib_path):
        raise FileNotFoundError(f"Native library not found at {lib_path}. Run 'make' first.")
    return ctypes.CDLL(lib_path)

class PenstockBindings:
    def __init__(self):
        try:
            self.lib = load_native_library()
            self._setup_prototypes()
        except Exception:
            self.lib = None

    def _setup_prototypes(self):
        # Setup C prototypes
        self.lib.penstock_network_create.restype = ctypes.c_void_p
        self.lib.penstock_network_free.argtypes = [ctypes.c_void_p]
        self.lib.penstock_suter_wh.argtypes = [ctypes.c_double]
        self.lib.penstock_suter_wh.restype = ctypes.c_double
        self.lib.penstock_suter_wb.argtypes = [ctypes.c_double]
        self.lib.penstock_suter_wb.restype = ctypes.c_double
