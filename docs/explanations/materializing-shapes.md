---
sidebar_position: 3
title: Materializing shapes
description: What generated shapes are, how their parameters become stitches, and why materializing replaces the current pattern.
---

# Materializing shapes

Placing every stitch of a ball by hand is slow. **Materializing** does it for you: you describe a shape with a couple of numbers, and AmiLab generates a complete, editable stitch pattern that produces it.

## What "materialize" means

A materialized shape is not a special object — it is an ordinary pattern. AmiLab calculates the stitches and rounds needed to form the shape at your current gauge, then drops them into the editor as if you had worked them yourself. From that point you can edit, recolor, and reshape the result like any other pattern.

## From parameters to stitches

You give a shape a **size**, and sometimes a second dimension, and AmiLab does the rest:

- It reads your [gauge](./gauge-and-dimensions.md) to learn how many stitches fit in a given distance.
- It works out the stitch count for each round so the rounds trace the chosen silhouette.
- It generates the stitches, their base connections, and any closures (for example, the gathering thread at the top of a sphere).

Because gauge drives the math, the same size request produces different stitch counts at different gauges — the finished piece is the size you asked for, not a fixed number of stitches.

The available shapes and their exact parameters and limits are listed in the [shapes reference](../reference/shapes-and-parameters.md).

## Materializing replaces the current pattern

A shape fills the whole editor, so materializing **replaces whatever pattern is currently open** and clears the undo history. If the pattern already has stitches, AmiLab asks you to confirm first. If it is empty, the shape appears immediately.

This makes materializing a starting point, not an insert: generate the base shape first, then edit and color it into the piece you want.

## Saved profiles

Beyond the built-in primitives (spheres, a tube, a flat circle), you can materialize from a **profile** — a silhouette you designed in the Shapes view. AmiLab sweeps that silhouette into a 3D form the same way it builds a sphere, so your own shapes become reusable, materializable templates.

## Related

- [Shapes and parameters](../reference/shapes-and-parameters.md) — every shape with its inputs and limits
- [Gauge and dimensions](./gauge-and-dimensions.md) — how size requests become stitch counts
- [The color model](./the-color-model.md) — recoloring a freshly materialized shape
