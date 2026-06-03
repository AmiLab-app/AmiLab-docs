# Crochet Math Basics

Designing amigurumi by hand requires calculating stitch counts for each round. AmiLab does this for you, but understanding the math helps you design better.

## The Core Formula

Each round's stitch count equals the circumference of the shape at that height divided by the stitch width.

```
stitches = circumference(round) / gauge_per_stitch
```

## Increasing and Decreasing

- **To make the shape wider:** Add increases so the next round has more stitches than the current one
- **To make it narrower:** Add decreases so the next round has fewer stitches
- **To keep it straight:** Maintain the same stitch count

The rate of change between rounds determines the slope of the shape.
