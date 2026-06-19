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
| **Shapes** | Open the New Shape dialog to [materialize a shape](../explanations/materializing-shapes.md). |
| **Undo** / **Redo** | Step backward or forward through your edits. |
| Save indicator | Shows **Unsaved** while editing and **Saved** once changes are stored. |
| **Files** | Open the Files dialog to load and manage your patterns. |

## Pattern panel header

Above the stitch grid, on the left.

| Control | Action |
|---|---|
| State badge | Shows the current working mode and the active round. |
| **Gauge** chip | Opens gauge settings — the project settings for a project pattern, or the Gauge dialog for an ungrouped one. |
| **Default** chip | Opens the [Default color](../explanations/the-color-model.md) dialog. The swatch shows the current default. |
| Expand / collapse | Enlarges the pattern panel to fill the workspace, or restores it. |

## Preview controls

At the bottom of the 3D preview, on the right.

| Control | Action |
|---|---|
| **Realistic** / **Schematic** | Toggle the preview between the yarn-like rendering and the stitch diagram. Affects only the preview, not the pattern. |
| **Enable camera auto-focus** / **Disable camera auto-focus** | Toggle whether the preview camera moves to the active stitch. When enabled, selecting or adding stitches moves the camera to the active stitch. When disabled, the camera stays still while selection and edits continue. |
| Expand / collapse | Enlarges the preview to fill the workspace, or restores it. |

## Starting a piece

When a pattern is empty, the grid offers three ways to begin (the [working mode](./glossary.md)):

| Button | Begins with |
|---|---|
| **Magic Ring** | A closed ring centre — the usual amigurumi start. |
| **Open Round** | An open ring centre. |
| **Foundation Chain** | A starting chain worked in two passes. |

## Stitch controls bar

Below the pattern grid. The controls below are for the default editing mode; the magic-ring and foundation-chain modes show their own bars while active.

### Header

| Control | Action |
|---|---|
| Position indicator | Shows the `R# S#` coordinate of the current selection. |
| **append mode** checkbox | When on, actions add new stitches at the end of the piece. |

### Stitch actions

| Control | Action |
|---|---|
| Stitch-type selector | Choose `sc`, `hdc`, `dc`, `tr`, or `ch` for the new or selected stitch. See [stitch types](./stitch-types.md). |
| **+ stitch** | Append a stitch (append mode). |
| **inc** | Append an [increase](./stitch-types.md) (append mode). |
| **dec** | Append a [decrease](./stitch-types.md) (append mode). |
| **+ base** | Add another base to the selected stitch. |
| Delete stitch | Remove the last stitch, or unseal the current row. |
| **Select range** | Begin a range selection from the selected stitch. |
| Split | Split the selected stitch into two. |
| Merge ◀ / ▶ | Merge the selected stitch with its left or right neighbor. |
| Insert ◀ / ▶ | Insert a new stitch to the left or right of the selected one. |
| Yarn color | Open the per-stitch color picker for the selected stitch. |

Selecting several stitches at once limits the bar to changing their stitch type.

### Row actions

| Control | Action |
|---|---|
| End row | Finish the current round and start the next. |
| Autobuild | Set a target stitch count and build or rebuild the row to match. |
| Insert row | Add a new row at the current position. |
| Duplicate row | Copy the current row. |
| Delete row | Remove the selected row. |
| **Close** | Open the close-pattern dialog to finish the piece. |
| Make magic ring / Open ring | Toggle the opening round between a closed ring and an open one. |

## Related

- [Stitch types](./stitch-types.md)
- [The color model](../explanations/the-color-model.md)
- [Getting Started](../tutorials/getting-started.md)
