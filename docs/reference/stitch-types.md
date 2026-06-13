---
sidebar_position: 1
title: Stitch types
description: The stitch types AmiLab supports, their abbreviations, and how increases and decreases are represented.
---

# Stitch types

AmiLab uses standard US crochet abbreviations. Five stitch types are available wherever a stitch-type selector appears.

## Stitches

| Abbreviation | Name | Notes |
|---|---|---|
| `sc` | Single crochet | Shortest stitch; the workhorse of amigurumi. |
| `hdc` | Half double crochet | Slightly taller than `sc`. |
| `dc` | Double crochet | Taller again. |
| `tr` | Treble (triple) crochet | The tallest stitch. |
| `ch` | Chain | Used for starting (foundation) chains and turning chains. A chain worked with no base is a turning chain. |

Stitch height increases down the list, from `sc` (shortest) to `tr` (tallest). Taller stitches cover more vertical distance per round, which affects both the look of the fabric and the [piece's dimensions](../explanations/gauge-and-dimensions.md).

## Increases and decreases

`inc` and `dec` appear as actions in the editor, but they are **not separate stitch types**. They are described by how a stitch connects to the round below (see [how AmiLab models a piece](../explanations/how-amilab-models-a-piece.md)):

| Action | Abbreviation | What it is |
|---|---|---|
| Increase | `inc` | Two stitches worked into the same base stitch, adding one to the round count. |
| Decrease | `dec` | One stitch worked over two or more bases, removing stitches from the round count. |

An increase or decrease can use any of the five stitch types — you choose the type, and the increase/decrease action sets up the connections.

## Related

- [How AmiLab models a piece](../explanations/how-amilab-models-a-piece.md) — why increases and decreases are connections, not types
- [Editor controls](./editor-controls.md) — where to select a stitch type and apply inc/dec
- [Glossary](./glossary.md) — definitions of base stitch, round, and more
