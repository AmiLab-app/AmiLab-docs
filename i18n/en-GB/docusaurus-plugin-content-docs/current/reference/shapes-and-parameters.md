---
sidebar_position: 4
title: Shapes and parameters
description: The shapes AmiLab can generate, their parameters, and the accepted input ranges.
---

# Shapes and parameters

The shapes available in the **Insert shape** dialog, with the parameters each one takes. For how generating works, see [generating shapes](../explanations/materializing-shapes.md).

## Shapes

| Shape | Size | Second dimension | Notes |
|---|---|---|---|
| **Smooth sphere** | Radius (cm) | Height (cm), optional | Leave height empty to size it automatically from the radius. |
| **Hexagonal sphere** | Radius (cm) | Height (cm), optional | Hexagonal cross-section with staggered stitches; gives a smooth, even ball. Height auto-sizes if empty. |
| **Staggered sphere** | Radius (cm) | Height (cm), optional | Staggered stitch placement. Height auto-sizes if empty. |
| **Tube** | Diameter (cm) | Length (cm) | A straight cylinder of the given length. |
| **Flat circle** | Radius (cm) | — | A flat disc; no second dimension. |
| **Saved profile** | Max radius (cm) | Height (cm), optional | Generates one of your saved [profiles](./glossary.md). Values default to the profile's own dimensions. |

## Input ranges

| Parameter | Range | Step |
|---|---|---|
| Size (radius / diameter) | 1–30 cm | 0.5 |
| Height / length | 0.5–200 cm | 0.5 |

The stitch counts AmiLab generates for a given size depend on your [tension](../explanations/gauge-and-dimensions.md): the dialog uses the current tension to translate centimetres into stitches and rounds.

## Related

- [Generating shapes](../explanations/materializing-shapes.md) — how parameters become stitches
- [Tension and dimensions](../explanations/gauge-and-dimensions.md) — why tension affects the result
- [Getting Started](../tutorials/getting-started.md) — generate a hexagonal sphere step by step
