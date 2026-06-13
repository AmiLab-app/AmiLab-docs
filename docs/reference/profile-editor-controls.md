---
sidebar_position: 5
title: Profile editor controls
description: A lookup for the controls in the Shapes view — toolbar, chips, and the silhouette canvas.
---

# Profile editor controls

A reference for the controls in the **Shapes view**, where you design a [profile](../explanations/profiles-and-cross-sections.md). Open it from the menu (**☰**) under **View → Shapes**.

## Toolbar

| Control | Action |
|---|---|
| **New** | Start a new profile. Prompts you to name it. |
| Save indicator | Shows **Unsaved** while editing and **Saved** once changes are stored. |
| **Files** | Open the Files dialog to load and manage your saved profiles. |

## Chips

Above the canvas.

| Chip | Action |
|---|---|
| **Gauge** | Open the gauge dialog. Gauge affects the 3D preview and the materialized stitch counts. |
| **Section** | Click to cycle the cross-section: Circle → Circle + → Hexagon → Square. |
| Dimensions (`r:… h:…`) | Open the Dimensions dialog to set the max radius and total height. |

## Cross-sections

| Option | Result |
|---|---|
| **Circle** | Smooth, round cross-section. |
| **Circle +** | Round, with staggered stitch placement. |
| **Hexagon** | Six-sided cross-section. |
| **Square** | Four-sided cross-section. |

## Dimensions dialog

| Field | Range |
|---|---|
| **Max radius** | 0.5–50 cm |
| **Total height** | 1–100 cm |

## Canvas

The drawing area, where the silhouette is shown as control points.

| Action | How |
|---|---|
| Select a point | Click it. |
| Move a point | Drag it. The bottom and top points move horizontally only (radius); points in between move freely, staying between their neighbors. |
| **+ Add point** | Insert a new control point in the largest gap along the silhouette. |
| **- Delete point** | Remove the selected point. Available only for points between the bottom and top. |

To change the overall height, use **Total height** in the Dimensions dialog rather than dragging the top point.

## Related

- [Profiles and cross-sections](../explanations/profiles-and-cross-sections.md) — what these controls shape
- [Shapes and parameters](./shapes-and-parameters.md) — materializing a saved profile
- [Create a custom shape](../tutorials/create-a-custom-shape.md)
