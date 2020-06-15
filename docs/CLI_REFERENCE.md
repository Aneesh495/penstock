# Command-Line Interface (CLI) Reference

Penstock provides both a native C executable (`bin/penstock`) and an interactive Python terminal interface (`python/penstock/cli.py`).

## Commands

### `demo`
Run pre-configured hydraulic demonstrations:

    # Water hammer valve trip comparison
    python3 python/penstock/cli.py demo --scenario water-hammer

    # Acoustic DMA leak localization
    python3 python/penstock/cli.py demo --scenario dma-leak

### `solve`
Perform steady-state network balance:

    python3 python/penstock/cli.py solve --network examples/two_reservoir_gravity.inp
