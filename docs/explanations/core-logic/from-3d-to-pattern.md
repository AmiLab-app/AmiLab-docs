# From 3D to Pattern

The path from your profile curve to a printable pattern involves three stages:

1. **Profile definition** — your control points define a smooth curve using Catmull-Rom spline interpolation
2. **Revolution** — the curve is rotated around the vertical axis to create a 3D mesh
3. **Slice sampling** — the mesh is cut into horizontal slices (rows). Each slice's circumference is mapped to a stitch count based on your gauge settings

The result is a round-by-round table of stitch counts, formatted in your chosen stitch notation and language.
