# Stitch Algorithms

Each round in a pattern is calculated to produce a smooth transition from the previous round.

AmiLab uses a **proportional distribution** algorithm: given a target stitch count for a round, the software distributes the required increases or decreases evenly around the circumference.

**Increases** (single crochet to 2 single crochet) widen the shape.  
**Decreases** (2 single crochet together) narrow it.  
**Even rounds** (same count as the previous round) maintain the current width.

The algorithm prioritizes symmetry — increases and decreases are placed to keep the shape balanced.
