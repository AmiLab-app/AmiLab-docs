---
sidebar_position: 2
title: Tension and dimensions
description: How AmiLab turns stitch and row counts into real-world measurements, and why tension changes rescale the whole piece.
---

# Tension and dimensions

A crochet pattern is a count of stitches and rows. A finished toy has a size in centimetres. **Tension is the bridge between the two**, and it is how AmiLab knows how big your piece really is.

## What tension describes

Tension (also called gauge) is two numbers that describe the density of your fabric:

- **Stitches per 10 cm** — how many stitches fit across 10 cm.
- **Rows per 10 cm** — how many rows fit over 10 cm of height.

These come from your yarn, hook, and how tightly you crochet. The most reliable source is a tension square you crocheted and measured; your yarn label is a good starting estimate. AmiLab's default is **18 stitches and 20 rows per 10 cm**, and you can set values from **1–60** stitches and **1–80** rows.

## How dimensions are calculated

AmiLab combines your tension with the stitch graph to place every stitch in 3D space, then measures the result. The **width, height, and depth** shown beneath the 3D preview are the real-world size of the piece *at your current tension*.

Because the same stitch count means a different size at a different tension, the measurements are only meaningful alongside the tension that produced them. A 6-round sphere is small in fine cotton and large in chunky wool — same pattern, different tension, different toy.

## Why changing tension rescales everything

Tension is not a per-stitch property; it applies to the whole piece. Change either number and AmiLab recomputes the layout, so the entire piece grows or shrinks at once. The stitch *counts* do not change — the pattern is the same — but its physical size does.

This also affects [generated shapes](./materializing-shapes.md): when AmiLab generates a sphere or tube to a size you ask for, it uses your tension to decide how many stitches that size requires.

## Where tension lives

- **In a project** — tension belongs to the project, so every pattern in it shares the same tension. Edit it from the project settings (the **Tension** chip above the pattern grid opens them).
- **Patterns with no project** — tension belongs to the single pattern, and the **Tension** chip opens a simple dialog to change it.

## Related

- [How AmiLab models a piece](./how-amilab-models-a-piece.md) — the stitch graph that tension measures
- [Generating shapes](./materializing-shapes.md) — how tension sizes generated shapes
- [Getting Started](../tutorials/getting-started.md) — set your tension in context
