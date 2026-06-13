---
sidebar_position: 3
title: Generating shapes
description: What generated shapes are, how their parameters become stitches, and why generating replaces the current pattern.
---

# Generating shapes

Placing every stitch of a ball by hand is slow. **Generating** does it for you: you describe a shape with a couple of numbers, and AmiLab builds a complete, editable stitch pattern that produces it.

## What "generate" means

A generated shape is not a special object — it is an ordinary pattern. AmiLab calculates the stitches and rounds needed to form the shape at your current tension, then drops them into the editor as if you had worked them yourself. From that point you can edit, recolour, and reshape the result like any other pattern.

## From parameters to stitches

You give a shape a **size**, and sometimes a second dimension, and AmiLab does the rest:

- It reads your [tension](./gauge-and-dimensions.md) to learn how many stitches fit in a given distance.
- It works out the stitch count for each round so the rounds trace the chosen silhouette.
- It generates the stitches, their base connections, and any finishes (for example, the gathering thread at the top of a sphere).

Because tension drives the maths, the same size request produces different stitch counts at different tensions — the finished piece is the size you asked for, not a fixed number of stitches.

The available shapes and their exact parameters and limits are listed in the [shapes reference](../reference/shapes-and-parameters.md).

## Generating replaces the current pattern

A shape fills the whole editor, so generating **replaces whatever pattern is currently open** and clears the undo history. If the pattern already has stitches, AmiLab asks you to confirm first. If it is empty, the shape appears immediately.

This makes generating a starting point, not an insert: build the base shape first, then edit and colour it into the piece you want.

## Saved profiles

Beyond the built-in primitives (spheres, a tube, a flat circle), you can generate from a **profile** — a silhouette you designed in the Shapes view. AmiLab sweeps that silhouette into a 3D form the same way it builds a sphere, so your own shapes become reusable templates you can generate again.

## Related

- [Shapes and parameters](../reference/shapes-and-parameters.md) — every shape with its inputs and limits
- [Tension and dimensions](./gauge-and-dimensions.md) — how size requests become stitch counts
- [The colour model](./the-color-model.md) — recolouring a freshly generated shape
