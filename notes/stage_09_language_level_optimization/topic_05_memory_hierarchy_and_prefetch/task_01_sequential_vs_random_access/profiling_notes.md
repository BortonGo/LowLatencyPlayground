# Profiling notes

## Context

В этой задаче сравнивался один и тот же checksum, но с разным memory access
pattern:

```cpp
sum_sequential(values)
sum_random_indexed(values, indices)
```

`sum_sequential` идет по `values` подряд. `sum_random_indexed` идет по
перемешанному массиву индексов и читает `values[indices[i]]`.

Генерация `values`, генерация `indices` и `std::shuffle` не входят в measured
interval.

## Commands

Сборка:

```bash
cmake --build cmake-build-release --target benchmark_memory_access_patterns
```

Запуск:

```bash
./cmake-build-release/benchmark_memory_access_patterns
```

## Correctness

Для каждого размера checksum совпал между sequential и random indexed:


| Size |        checksum |
| ---: | --------------: |
|  64K |     307'968'000 |
|   1M |   4'999'500'000 |
|  16M |  79'992'000'000 |
|  64M | 319'968'000'000 |

Это важно: обе функции делают одну и ту же работу по сумме значений, отличается
только порядок доступа к памяти.

## Timer

Ниже медианы из 5 запусков по `elapsed`.


| Size | Sequential | Random indexed | Slowdown |
| ---: | ---------: | -------------: | -------: |
|  64K |        3us |           25us |     8.3x |
|   1M |       66us |          544us |     8.2x |
|  16M |     1531us |        40078us |    26.2x |
|  64M |     6334us |       188258us |    29.7x |

Пример throughput из контрольного запуска:


| Size | Sequential throughput | Random throughput |
| ---: | --------------------: | ----------------: |
|  64K |       ~17.2e9 ops/sec |    ~2.5e9 ops/sec |
|   1M |       ~15.0e9 ops/sec |    ~1.8e9 ops/sec |
|  16M |       ~10.4e9 ops/sec |    ~0.4e9 ops/sec |
|  64M |       ~10.1e9 ops/sec |   ~0.34e9 ops/sec |

## What see

Последовательный проход оказался в разы быстрее, особенно на больших размерах.

На маленьком размере `64K` random access уже хуже примерно в 8 раз, но данные
еще относительно дружелюбны к cache. На `16M` и `64M` разница становится намного
сильнее: random indexed access проигрывает примерно в 26-30 раз.

Главная причина не в количестве арифметики. В обоих вариантах мы делаем одну
и ту же простую операцию:

```cpp
checksum += value;
```

Разница в том, как CPU получает `value` из памяти.

## Why Sequential Faster

Sequential loop идет по памяти подряд:

```text
values[0], values[1], values[2], ...
```

Это хорошо для CPU:

- cache line используется почти полностью;
- hardware prefetcher видит простой pattern;
- следующая cache line часто подтягивается заранее;
- load pipeline работает ровнее;
- меньше TLB/cache misses.

## Why Random Indexed Slower

Random indexed loop сначала читает индекс, потом прыгает в случайное место:

```cpp
checksum += values[indices[i]];
```

Проблемы:

- hardware prefetcher хуже угадывает следующий адрес;
- cache line часто используется частично;
- memory latency становится главным bottleneck;
- CPU сложнее держать много полезных loads in flight;
- на больших массивах данные перестают помещаться в cache.

Поэтому на `16M` и `64M` slowdown резко растет.

## Conclusion

Эта задача хорошо показала, что memory access pattern может быть важнее, чем
сама операция внутри loop. Последовательный проход без прыжков оказался в разы
быстрее random indexed access.

Практический вывод для low latency кода:

- сначала надо смотреть, как данные лежат в памяти;
- contiguous scan часто выигрывает у pointer chasing / random indexing;
- cache locality может дать больше, чем микрооптимизация выражения внутри loop;
- перед `__builtin_prefetch` нужно понять baseline: где именно память стала
  bottleneck.
