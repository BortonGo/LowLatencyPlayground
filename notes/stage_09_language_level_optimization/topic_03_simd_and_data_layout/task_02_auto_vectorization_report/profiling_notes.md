# Заметки По Профилированию

## Сборка

```bash
cmake -S . -B cmake-build-vectorization \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_CXX_FLAGS_RELEASE="-O3 -DNDEBUG -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -Rpass-analysis=loop-vectorize"

cmake --build cmake-build-vectorization --target aos_vs_soa_benchmark
```

Компилятор: Apple Clang, Apple Silicon.

## Важные Сообщения Компилятора

| Цикл | Результат | Сообщение компилятора | Значение |
|---|---|---|---|
| `aos_traversal()`, строка 87 | SIMD: нет | `the cost-model indicates that vectorization is not beneficial` | Clang не применил SIMD к AoS traversal. |
| `aos_traversal()`, строка 87 | Interleaving: да | `interleaved loop (interleaved count: 2)` | Компилятор обрабатывает две итерации с разворачиванием, но это не SIMD-векторизация. |
| `soa_traversal()`, строка 109 | SIMD: нет | `the cost-model indicates that vectorization is not beneficial` | Clang не применил SIMD и к SoA traversal. |
| Подготовка данных, строки 74 и 103 | SIMD: нет | `instruction cannot be vectorized` | Ожидаемо: эти циклы заполняют `vector` и вызывают `push_back`; они не входят в измеряемый traversal. |

Сообщения из `/Library/.../c++/v1/...` относятся к внутренностям libc++, например
`std::sort`, `chrono` и аллокации. Они ничего не говорят о двух hot loop, поэтому
для этой задачи их игнорируем.

## Связь С Runtime-Измерениями

Сюда нужно вписать уже снятые результаты Stage 2:

| Workload | Результат Stage 2 | Clang использовал SIMD? |
|---|---:|---|
| AoS traversal | TODO | no |
| SoA traversal | TODO | no |

## Вывод

Clang не автовекторизовал ни один из двух hot loop. В текущем бенчмарке SoA не
получает автоматического преимущества от SIMD: его производительность отражает
layout данных и cache/memory traffic, а не работу векторных инструкций.

Условие `if (active)` и текущая форма reduction привели к тому, что cost model
компилятора отказалась от векторизации. Это не означает, что SoA хуже или что
SoA нельзя векторизовать. Для следующей задачи нужен более SIMD-friendly
branchless loop, на котором мы отдельно проверим ручной SIMD.
