---
sidebar_position: 4
title: The color model
description: How the default yarn color, per-stitch overrides, and the project palette work together to color a piece.
---

# The color model

AmiLab colors a piece with two layers and one convenience. Knowing how they combine lets you recolor a whole shape in one click *and* place individual color details like eyes or stripes.

## Two layers: default and override

**Default color** is the base. It applies to every stitch that has no color of its own, so setting it recolors the entire piece at once. If you never set a default, AmiLab uses a neutral yarn tone.

**Per-stitch color** is an override. Give a single stitch a color and it ignores the default, showing its own color instead. This is how you add detail without touching the rest of the piece: a few overridden stitches become an eye; a band of them becomes a stripe.

The rule is simple:

> A stitch shows its **own color** if it has one, otherwise it shows the **default color**.

Clearing a stitch's override (the **Clear color override** action) drops it back to the default. Changing the default never disturbs stitches that have their own color.

## The convenience: a project palette

A **palette** is a small set of colors saved on the project. It does not color anything by itself — it is a shortcut. Both the default-color picker and the per-stitch picker show the palette as one-click swatches, so the colors you use across a project are always a click away instead of buried in a color wheel.

A palette therefore keeps a project consistent: every pattern in it reaches for the same saved colors.

## Putting it together

A typical character uses all three:

1. Set the **default color** to the body yarn — the whole piece updates.
2. Save the body color and a contrast color to the **palette** for quick reuse.
3. **Override** a handful of stitches with the contrast color to add eyes or markings.

## Related

- [How AmiLab models a piece](./how-amilab-models-a-piece.md) — color is a property of each stitch in the graph
- [Editor controls](../reference/editor-controls.md) — where the default-color chip and per-stitch color button live
- [Getting Started](../tutorials/getting-started.md) — apply all three layers in practice
