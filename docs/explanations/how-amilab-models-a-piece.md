---
sidebar_position: 1
title: How AmiLab models a piece
description: The stitch graph behind every pattern — how stitches reference each other and why rounds are derived, not stored.
---

# How AmiLab models a piece

Understanding one idea makes everything else in AmiLab click into place: **a pattern is a graph of stitches, and the rounds you see are derived from that graph.** Once you know how stitches connect, increases, decreases, and editing all behave predictably.

## A stitch and its bases

Every stitch records three things that matter here:

- its **type** — `sc`, `hdc`, `dc`, `tr`, or `ch` (see the [stitch types reference](../reference/stitch-types.md))
- its **base** — the stitch or stitches in the round below that it is worked into
- an optional **color**

The base is the key. A stitch points "down" to the stitch it sits on top of:

- **No base** — the stitch starts the piece. These are your foundation stitches: the centre of a magic ring, or a starting chain.
- **One base** — a normal stitch worked into a single stitch below.
- **Two or more bases** — a **decrease**: one stitch closes over several stitches below, pulling the count down.

An **increase** is the mirror image, and AmiLab does not need a special record for it. When two stitches in a round share the same base — two stitches worked into one loop — that is an increase. AmiLab recognizes it from the shape of the graph.

## Rounds are derived, not stored

AmiLab never stores "round 3." Instead, it calculates rounds from the base connections every time the pattern changes:

- Foundation stitches (no base) form the first round.
- A stitch belongs to the round just above its deepest base.

This is why the pattern grid always stays consistent with your edits. Change a base, split a stitch, or delete one, and the rounds recompute from the connections rather than from a stored layout that could drift out of sync.

## Why this matters to you

- **Increases and decreases follow from connections.** You shape a piece by changing how many stitches share a base, not by toggling a separate "increase" flag.
- **Edits stay coherent.** Because rounds are recomputed, the count badges, the written pattern, and the 3D preview all reflect the same underlying graph.
- **The 3D preview is built from the same graph.** The base connections tell AmiLab which stitches sit on which, which is what lets it place every stitch in space.

## Related

- [Gauge and dimensions](./gauge-and-dimensions.md) — how stitch counts become real-world measurements
- [Stitch types](../reference/stitch-types.md) — the building blocks referenced above
- [Glossary](../reference/glossary.md) — quick definitions of base stitch, round, increase, and decrease
