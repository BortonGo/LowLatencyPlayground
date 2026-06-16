# Теория. Auto-Vectorization

Compiler умеет превращать некоторые loops в SIMD без intrinsics.

Ему проще, когда:

- данные contiguous;
- нет сложных branches;
- нет aliasing uncertainty;
- loop count понятный;
- операции одинаковые для всех элементов.

Vectorization report помогает понять, почему loop vectorized или missed.
