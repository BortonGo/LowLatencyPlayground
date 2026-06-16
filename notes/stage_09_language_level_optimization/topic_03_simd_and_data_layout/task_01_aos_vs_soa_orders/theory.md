# Теория. AoS vs SoA

AoS:

```text
Order { id, price, quantity, side }
```

SoA:

```text
ids[]
prices[]
quantities[]
sides[]
```

AoS удобен для object-style code.

SoA часто лучше для batch loops, потому что нужное поле лежит подряд.

SIMD и cache обычно любят SoA.
