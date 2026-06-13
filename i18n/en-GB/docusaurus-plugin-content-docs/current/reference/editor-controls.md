---
sidebar_position: 3
title: Editor controls
description: A lookup for every control in the pattern editor — toolbar, panel chips, preview, and the stitch controls bar.
---

# Editor controls

A reference for the controls in the pattern editor. Many controls are **context-sensitive** — they appear only when they apply to your current selection.

## Toolbar

Above the pattern grid.

| Control | Action |
|---|---|
| **New** | Start a new pattern. Disabled until you sign in. |
| **Shapes** | Open the Insert shape dialog to [generate a shape](../explanations/materializing-shapes.md). |
| **Undo** / **Redo** | Step backward or forward through your edits. |
| Save indicator | Shows **Unsaved** while editing and **Saved** once changes are stored. |
| **Files** | Open the Files dialog to open and manage your patterns. |

## Pattern panel header

Above the stitch grid, on the left.

| Control | Action |
|---|---|
| State badge | Shows the current working mode and the active round. |
| **Tension** chip | Opens tension settings — the project settings for a project pattern, or the Tension dialog for a pattern with no project. |
| **Default** chip | Opens the [Default colour](../explanations/the-color-model.md) dialog. The swatch shows the current default. |
| Expand / collapse | Enlarges the pattern panel to fill the workspace, or restores it. |

## Preview controls

At the bottom of the 3D preview, on the right.

| Control | Action |
|---|---|
| **Realistic** / **Schematic** | Toggle the preview between the yarn-like rendering and the stitch diagram. Affects only the preview, not the pattern. |
| Expand / collapse | Enlarges the preview to fill the workspace, or restores it. |

## Starting a piece

When a pattern is empty, the grid offers three ways to begin (the [working mode](./glossary.md)):

| Button | Begins with |
|---|---|
| **Magic ring** | A closed ring centre — the usual amigurumi start. |
| **Open round** | An open ring centre. |
| **Foundation chain** | A starting chain worked in two passes. |

## Stitch controls bar

Below the pattern grid. The controls below are for the default editing mode; the magic-ring and foundation-chain modes show their own bars while active.

### Header

| Control | Action |
|---|---|
| Position indicator | Shows the `R# S#` coordinate of the current selection. |
| **Add at end** checkbox | When on, actions add new stitches at the end of the piece. |

### Stitch actions

| Control | Action |
|---|---|
| Stitch-type selector | Choose `dc`, `htr`, `tr`, `dtr`, or `ch` for the new or selected stitch. See [stitch types](./stitch-types.md). |
| **+ stitch** | Append a stitch (Add at end). |
| **inc** | Append an [increase](./stitch-types.md) (Add at end). |
| **dec** | Append a [decrease](./stitch-types.md) (Add at end). |
| **+ base** | Add another base to the selected stitch. |
| Delete stitch | Remove the last stitch, or reopen the current row. |
| **Select range** | Begin a range selection from the selected stitch. |
| Split | Split the selected stitch into two. |
| Merge ◀ / ▶ | Merge the selected stitch with its left or right neighbour. |
| Insert ◀ / ▶ | Insert a new stitch to the left or right of the selected one. |
| Yarn colour | Open the per-stitch colour picker for the selected stitch. |

Selecting several stitches at once limits the bar to changing their stitch type.

### Row actions

| Control | Action |
|---|---|
| End row | Finish the current round and start the next. |
| Auto-build | Set a target stitch count and build or rebuild the row to match. |
| Insert row | Add a new row at the current position. |
| Duplicate row | Copy the current row. |
| Delete row | Remove the selected row. |
| **Finish** | Open the finish-pattern dialog to finish the piece. |
| Close ring / Open ring | Toggle the opening round between a closed ring and an open one. |

## Related

- [Stitch types](./stitch-types.md)
- [The colour model](../explanations/the-color-model.md)
- [Getting Started](../tutorials/getting-started.md)
