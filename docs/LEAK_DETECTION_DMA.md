# District Metered Area (DMA) & Leak Detection Analytics

District Metered Areas (DMAs) partition municipal grids into hydraulically isolated zones monitored by boundary meters.

## Inverse Transient Analysis (ITA)

When an acoustic transient wave encounters a pipe defect (crack, burst, or corrosion hole), partial wave reflection occurs:

    R_leak = - (c / (2 * g * A)) * Delta Q_leak

By timing the arrival of the reflected wave at high-frequency pressure sensors:

    Distance to burst = 0.5 * Delta t * c

Where:
- c is the acoustic wave speed (m/s)
- Delta t is the arrival time delay (seconds)
