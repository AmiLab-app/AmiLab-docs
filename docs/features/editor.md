---
sidebar_position: 1
---

# Pattern Editor

The pattern editor is the main workspace in AmiLab. It combines a profile drawing canvas, a live 3D preview, and a pattern panel in one screen.

## Layout

```
┌────────────────┬──────────────────┬───────────────┐
│  Profile       │   3D Preview     │  Pattern      │
│  Editor        │                  │  Panel        │
└────────────────┴──────────────────┴───────────────┘
```

- **Profile editor** (left) — draw the cross-section of your shape
- **3D preview** (centre) — live render of the full shape
- **Pattern panel** (right) — round-by-round stitch counts

## Control bar

The toolbar above the editor has controls for:

| Control | Purpose |
|---------|---------|
| **New** | Start a fresh design |
| **Save / Load** | Persist designs to browser storage or your account |
| **Stitch type** | Choose the base stitch (sc, hdc, dc, tr) |
| **Magic ring size** | Set how many stitches to cast on in round 1 |

## Editing stitches

Each row in the pattern panel represents one round. You can:
- **Add a round** — click the **+** button at the bottom
- **Delete a round** — hover a row and click the trash icon
- **Adjust stitch count** — drag the count handle or type a value

The 3D preview updates as you change stitch counts.

## Keyboard shortcuts

| Key | Action |
|-----|--------|
| `Ctrl/⌘ + Z` | Undo |
| `Ctrl/⌘ + Shift + Z` | Redo |
| `Ctrl/⌘ + S` | Save |
