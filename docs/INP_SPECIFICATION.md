# EPANET INP File Format Specification in Penstock

Penstock provides full bidirectional support for the industry-standard EPANET `.inp` network specification.

## Supported Network Sections

| Section | Scope in Penstock |
|---|---|
| `[JUNCTIONS]` | Elevation, base demand, demand pattern assignment, emitter coefficients |
| `[RESERVOIRS]` | Fixed total head, head variation patterns |
| `[TANKS]` | Elevation, initial/min/max water levels, diameter, volume curves |
| `[PIPES]` | Length, diameter, roughness, minor loss coefficients, status |
| `[PUMPS]` | Characteristic head-discharge curves, relative speed ratios |
| `[VALVES]` | PRV, PSV, PBV, FCV, TCV, GPV control valve parameters |
| `[DEMANDS]` | Diurnal customer demand multipliers |
| `[OPTIONS]` | Units (LPS, GPM, MGD), headloss formula (D-W, H-W), tolerances |
