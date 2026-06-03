# How Shapes Are Calculated

AmiLab converts a 2D profile curve into a 3D shape by revolving it around a central axis. This is known as **lathe** or **revolve** geometry.

The profile you draw in the editor represents a cross-section. AmiLab divides it into evenly spaced horizontal slices — each slice becomes a round of stitches. The circumference of each slice determines the stitch count for that round.

**Key insight:** The more slices (rows), the smoother the vertical curve. The more stitches per round, the finer the horizontal detail.
