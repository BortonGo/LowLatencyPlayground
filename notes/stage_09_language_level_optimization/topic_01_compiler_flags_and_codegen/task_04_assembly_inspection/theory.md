# Теория. Assembly Inspection

Benchmark говорит, что стало быстрее или медленнее.

Assembly помогает понять, почему.

В generated code полезно искать:

- function calls в hot loop;
- лишние loads/stores;
- branches;
- vector instructions;
- unrolling;
- missed inlining.

Смотреть assembly нужно точечно. Полный binary читать не надо.
