# Review Checklist. Задача 2 Vector Push Back Benchmark

## Correctness

- Benchmark target собирается отдельно от tests.
- `without_reserve` и `with_reserve` действительно измеряют разные сценарии.
- `with_reserve` резервирует достаточно памяти под warm-up и measured phase.
- `LatencyStats::count()` совпадает с `measured_iterations`.
- Код не зависит от undefined behavior.

## Measurement

- Printing не находится внутри measured loop.
- Setup отделен от measured operation.
- Lambda измеряет именно `push_back`, а не создание container.
- Result consumption есть, чтобы optimizer не удалил работу.
- Benchmark запускался в Release build или есть понимание, что Debug шумный.

## Interpretation

- В выводе есть median, p95, p99 и max.
- Вывод не делает выводы только по average.
- Есть объяснение, почему `without_reserve` может иметь tail spikes.
- Есть понимание, что timer overhead и OS noise влияют на короткие операции.

## API/Style

- Benchmark code простой и читаемый.
- Нет преждевременной benchmark framework abstraction.
- Include list минимальный и понятный.
- Названия case отражают измеряемое поведение.
