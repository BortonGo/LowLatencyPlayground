# Теория. SIMD Validation

Batch validation лучше подходит для SIMD, чем live matching.

Validation часто выглядит как независимая операция:

```text
order[i] -> valid/invalid
```

Это data-parallel shape.

Но branches и mixed fields могут мешать vectorization.

SoA помогает компилятору видеть contiguous fields.
