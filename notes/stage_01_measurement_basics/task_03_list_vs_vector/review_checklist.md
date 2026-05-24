# Review Checklist. Задача 3 List vs Vector

## Correctness

- `vector` и `list` содержат одинаковое количество элементов.
- Оба контейнера заполнены до measured phase.
- В measured phase считается сумма всех элементов.
- `checksum` используется после benchmark.
- `LatencyStats::count()` совпадает с `measured_iterations`.

## Measurement

- Benchmark target отдельный.
- Запуск выполнен в Release build.
- В measured lambda нет printing.
- В measured lambda нет intentional allocation.
- Измеряется traversal, а не создание container.

## Interpretation

- Сравнение идет по median, p95, p99, p99.9 и max.
- Есть объяснение роли contiguous memory.
- Есть объяснение pointer chasing в `list`.
- Вывод не сводится к Big-O.

## Style

- Код простой и явный.
- Нет преждевременной общей benchmark framework.
- Include list соответствует используемым типам.
- Названия функций отражают измеряемый сценарий.
