# Теория. Manual SIMD

Manual SIMD дает контроль над vector instructions.

Цена:

- platform-specific code;
- сложнее читать;
- больше edge cases;
- нужна обработка tail elements;
- сложнее поддерживать.

Manual SIMD имеет смысл только если auto-vectorization недостаточна и workload реально важен.
