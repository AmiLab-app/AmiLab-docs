---
sidebar_position: 2
title: Create a custom shape
description: Design your own silhouette in the profile editor, then materialize it as a crochet pattern.
---

# Create a custom shape

AmiLab's built-in spheres and tubes cover a lot, but sooner or later you will want a shape that isn't in the list. The **Shapes view** lets you draw your own. You design a *profile* — the outline of one side of a shape — and AmiLab spins it into a 3D form you can turn into a pattern.

In this tutorial you will design a simple **egg** shape and then materialize it in the pattern editor.

You will learn how to:

- Open the Shapes view and start a new profile
- Set a shape's size and cross-section
- Sculpt a silhouette by moving, adding, and removing control points
- Materialize your custom shape as an editable pattern

**Time to complete:** about 15 minutes.

**Before you start**, sign in (so your profile saves) and, ideally, work through [Getting Started](./getting-started.md) first — this tutorial assumes you know your way around the editor.

---

## Step 1: Open the Shapes view

1. Click the menu button (**☰**) in the top-right corner.
2. Under **View**, click **Shapes**.

The workspace switches to the profile editor: a drawing canvas on one side and a 3D preview on the other.

:::note[Profiles and shapes]

The view is called **Shapes**, and the thing you design in it is a **profile** — a reusable silhouette. The two words refer to the same feature; you'll see both in the interface.

:::

---

## Step 2: Start a new profile

1. In the toolbar, click **New**.
2. In the **Name your profile** dialog, type a name such as `Egg`.
3. Click **Create**.

Your profile is saved to your account and, like patterns, it **saves automatically** from here on. Watch the save indicator in the toolbar — **Unsaved** while you edit, **Saved** once stored.

---

## Step 3: Read the canvas

Before you change anything, get oriented. The canvas shows your profile as a curve with a few **control points**:

- The **left edge** of the canvas is the center axis of the shape.
- **Height** runs up the canvas; **radius** (how far the shape bulges out from the center) runs across it.
- Each control point sets **how wide the shape is at that height**. Drag a point toward the axis to pull that part inward; drag it away to push it outward.

A new profile starts as a simple tapered tube with two points — one at the bottom, one at the top. The 3D preview beside the canvas shows what the current silhouette produces, and it updates as you work.

---

## Step 4: Set the size and cross-section

Two chips above the canvas control the overall shape.

**Dimensions** — click the chip showing `r:… h:…`:

1. Set **Max radius** to `4` cm — the widest the egg will get.
2. Set **Total height** to `7` cm.
3. Click **Done**.

**Section** — this chip sets the cross-section, the shape AmiLab sweeps the silhouette around. Click it to cycle through the options:

| Section | Result |
|---|---|
| **Circle** | A smooth, round cross-section. |
| **Circle +** | Round, with staggered stitch placement. |
| **Hexagon** | A six-sided cross-section. |
| **Square** | A four-sided cross-section. |

For a rounded egg, leave it on **Circle**.

---

## Step 5: Sculpt the egg

Now shape the silhouette. An egg is rounded at both ends and widest below the middle.

1. **Round the bottom.** Drag the lowest point toward the left axis so the base starts narrow.
2. **Add a belly.** Click **+ Add point** to insert a new control point, then drag it down to the lower third of the canvas and out to the right, near the max radius. This is the widest part of the egg.
3. **Round the top.** Drag the highest point toward the axis so the top closes to a soft point.
4. **Smooth the curve.** Add a point or two between the belly and the ends, nudging each one so the outline flows in a smooth egg curve. To remove a point you don't need, select it and click **- Delete point**.

Watch the 3D preview as you go — it redraws with every change, so you can see the egg take shape and adjust.

:::tip[Which points can move where]

The **bottom and top points** are fixed at their heights — you can only change their radius (drag them left and right). To change the overall height, use the **Total height** field in the Dimensions dialog. The points **in between** move freely, as long as they stay between their neighbors.

:::

When the silhouette looks like an egg and the save indicator reads **Saved**, your shape is ready.

---

## Step 6: Materialize your shape as a pattern

A profile is a template. To crochet it, you materialize it into a pattern — exactly like the built-in shapes, but now your egg is one of the options.

1. Open the menu (**☰**) and, under **View**, click **Patterns** to return to the pattern editor.
2. Click **New** in the toolbar to start an empty pattern, name it `My Egg`, and click **Create**.
3. Click **Shapes** in the toolbar to open the **New Shape** dialog.
4. Open the **Shape** dropdown. Under **Saved profiles**, choose your **Egg**.
5. **Size** (max radius) and **Height** are filled in from your profile. Leave them, or adjust to resize the finished piece.
6. Click **Materialize shape**.

The pattern grid fills with the rounds that build your egg, and the 3D preview shows it. From here it is an ordinary pattern — recolor it, edit stitches, or close it up.

:::note[Materializing uses your gauge and replaces the pattern]

AmiLab generates the stitch counts from your current [gauge](../explanations/gauge-and-dimensions.md), so the finished egg is the size you set at your gauge. Because a shape fills the whole pattern, materializing into a pattern that already has stitches asks for confirmation first — which is why you started with an empty one.

:::

---

## What you built

You designed a reusable custom shape from scratch and turned it into a crochet pattern. Your **Egg** profile stays in your saved shapes, ready to materialize again — at any size or gauge — whenever you need it.

## Next steps

- Color your egg — see [the color model](../explanations/the-color-model.md) and the coloring steps in [Getting Started](./getting-started.md).
- [Close up a finished piece](../how-to/close-up-a-piece.md) to finish the open end.
- Read [Materializing shapes](../explanations/materializing-shapes.md) to understand how profiles become stitches.
