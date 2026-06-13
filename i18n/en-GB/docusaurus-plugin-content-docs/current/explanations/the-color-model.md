---
sidebar_position: 4
title: The colour model
description: How the default yarn colour, per-stitch overrides, and the project palette work together to colour a piece.
---

# The colour model

AmiLab colours a piece with two layers and one convenience. Knowing how they combine lets you recolour a whole shape in one click *and* place individual colour details like eyes or stripes.

## Two layers: default and override

**Default colour** is the base. It applies to every stitch that has no colour of its own, so setting it recolours the entire piece at once. If you never set a default, AmiLab uses a neutral yarn tone.

**Per-stitch colour** is an override. Give a single stitch a colour and it ignores the default, showing its own colour instead. This is how you add detail without touching the rest of the piece: a few overridden stitches become an eye; a band of them becomes a stripe.

The rule is simple:

> A stitch shows its **own colour** if it has one, otherwise it shows the **default colour**.

Clearing a stitch's override (the **Clear stitch colour** action) drops it back to the default. Changing the default never disturbs stitches that have their own colour.

## The convenience: a project palette

A **palette** is a small set of colours saved on the project. It does not colour anything by itself — it is a shortcut. Both the default-colour picker and the per-stitch picker show the palette as one-click swatches, so the colours you use across a project are always a click away instead of buried in a colour wheel.

A palette therefore keeps a project consistent: every pattern in it reaches for the same saved colours.

## Putting it together

A typical character uses all three:

1. Set the **default colour** to the body yarn — the whole piece updates.
2. Save the body colour and a contrast colour to the **palette** for quick reuse.
3. **Override** a handful of stitches with the contrast colour to add eyes or markings.

## Related

- [How AmiLab models a piece](./how-amilab-models-a-piece.md) — colour is a property of each stitch in the graph
- [Editor controls](../reference/editor-controls.md) — where the default-colour chip and per-stitch colour button live
- [Getting Started](../tutorials/getting-started.md) — apply all three layers in practice
