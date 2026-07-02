# Review Checklist

- Есть target `benchmark_division_strength_reduction`.
- Runtime `/ 10` и const `/ 10` дают одинаковый checksum.
- Const `/ 8` и `>> 3` дают одинаковый checksum.
- Есть assembly файл для `-O2`.
- Notes сравнивают runtime division и constant division.
- Нет вывода без проверки generated code.
