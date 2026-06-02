---
sidebar_position: 2
---

# 3D Preview

The 3D preview renders your amigurumi shape in real time using WebGL (Three.js). It updates as you edit stitches so you always see what your finished piece will look like.

## Interacting with the preview

| Gesture | Action |
|---------|--------|
| **Drag** | Rotate the shape |
| **Scroll / Pinch** | Zoom in and out |
| **Right-drag** | Pan |

## What the preview shows

- The surface mesh computed from your stitch counts
- Seam lines between rounds (faint lines)
- Approximate proportions based on your gauge

The preview is a mathematical approximation — actual yarn texture, stuffing density, and finishing will affect the final look.

## Performance

The 3D render runs in a Web Worker to keep the editor responsive. On older devices the preview may update with a short delay after large changes.

## Tips

- Rotate the shape to check for pinching at the top and bottom
- Compare the width-to-height ratio against your gauge swatch
- Use the profile editor to smooth bumps you see in the preview
