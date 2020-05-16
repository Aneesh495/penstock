import math

def render_ascii_oscilloscope(time_series, width=60, height=12, title="PRESSURE TRANSIENT WAVE"):
    if not time_series:
        return ""
    min_v = min(time_series)
    max_v = max(time_series)
    span = max_v - min_v if max_v != min_v else 1.0
    
    grid = [[" " for _ in range(width)] for _ in range(height)]
    
    for x in range(width):
        idx = int(x * (len(time_series) - 1) / (width - 1))
        val = time_series[idx]
        norm = (val - min_v) / span
        y = height - 1 - int(norm * (height - 1))
        y = max(0, min(height - 1, y))
        grid[y][x] = "#"
        
    border = "=" * (width + 16)
    lines = [border, f"  {title:^56}  ", border]
    for row_idx, row in enumerate(grid):
        row_val = max_v - (row_idx / (height - 1)) * span
        lines.append(f"{row_val:7.1f} m | {''.join(row)} |")
    lines.append(border)
    return "\n".join(lines)

def render_hgl_profile(nodes, heads):
    lines = ["\n--- Hydraulic Grade Line (HGL) Profile ---"]
    for n, h in zip(nodes, heads):
        bar_len = int(max(0, h) / 5.0)
        lines.append(f"  {n:10} | {'=' * bar_len} {h:.2f} m")
    return "\n".join(lines)
