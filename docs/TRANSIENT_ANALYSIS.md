# Acoustic Pressure Transient and Water Hammer Analysis

This guide explains how Penstock simulates high-speed pressure transients and evaluates surge protection equipment.

## Joukowsky Pressure Spike

When a valve closes abruptly in time T_c < 2 * L / c:

    Delta P = rho * c * Delta V
    Delta H = (c * Delta V) / g

For water in steel or ductile iron pipes (c = 1200 m/s), an instantaneous flow change of 1.5 m/s causes a pressure head surge of:

    Delta H = (1200 * 1.5) / 9.80665 = 183.5 meters (~18 bar overpressure)

## Surge Mitigation Devices

Penstock models multiple surge protection strategies:
1. **Hydropneumatic Air Vessels**: Pressurized gas cushions that absorb incoming pressure waves and supply flow during downsurges.
2. **Two-Stage Valve Stroking**: Rapid initial valve closure (down to 20% opening) followed by a cushioned slow stroke to dissipate kinetic energy.
3. **Surge Anticipation Valves**: Fast-opening relief valves triggered by power loss or low-pressure wave detection.
