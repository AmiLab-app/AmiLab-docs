---
sidebar_position: 5
title: Profiles and cross-sections
description: How a profile's silhouette and cross-section combine into a 3D shape you can generate.
---

# Profiles and cross-sections

The Shapes view lets you design forms that aren't in the built-in list. It works on a simple idea borrowed from a potter's wheel: **draw the outline of one side of a shape, and spin it.** Two things define the result — the *profile* and the *cross-section*.

## The profile: a silhouette of control points

A **profile** is the silhouette of one half of a shape, described by a handful of **control points**. Each point answers one question: *how wide is the shape at this height?*

- The **height** of a point is its position from the bottom of the piece, in centimetres.
- The **radius** of a point is how far the shape reaches out from its centre axis at that height. AmiLab stores radius as a fraction from 0 (on the axis) to 1 (the profile's maximum radius), so scaling the whole shape is a single setting.

Move a point toward the axis and the shape pinches in at that height; move it outward and the shape bulges. Add points where you need finer control over the curve, remove them where you don't. The outline they trace is the profile.

Two settings scale that outline into real dimensions:

- **Max radius** — the widest the shape can get; it's the real-world size that a radius fraction of 1 maps to.
- **Total height** — the height of the topmost point, which stretches or compresses the whole silhouette vertically.

## The cross-section: how the silhouette is swept

The profile only describes the side view. The **cross-section** decides what the shape looks like when you slice across it — the form AmiLab sweeps the silhouette around:

- **Circle** — a smooth, round body (a true solid of revolution).
- **Circle+** — round, but with stitches staggered between rounds.
- **Hexagon** — a six-sided body.
- **Square** — a four-sided body.

The same profile produces very different pieces depending on the cross-section: a teardrop silhouette becomes a smooth egg with a circle, or a faceted gem with a hexagon.

## From profile to pattern

A profile is a reusable *template*, not a pattern by itself. When you [generate](./materializing-shapes.md) it, AmiLab combines the silhouette and cross-section with your [tension](./gauge-and-dimensions.md) to work out the stitch count for each round, then builds the stitches — exactly as it does for the built-in shapes. The profile stays saved, ready to generate again at any size or tension.

## Related

- [Generating shapes](./materializing-shapes.md) — how a profile becomes stitches
- [Profile editor controls](../reference/profile-editor-controls.md) — the controls in the Shapes view
- [Create a custom shape](../tutorials/create-a-custom-shape.md) — design and generate a profile step by step
