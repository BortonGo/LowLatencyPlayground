# Profiling Notes

## Context

В этой задаче проверялся hot/cold split. Мы сравнивали две layout-схемы:

```text
Fat AoS:
  id, price, quantity, side, cold_payload[64] лежат в одной структуре

Hot/Cold split:
  hot поля лежат отдельно
  cold_payload лежит в отдельном ColdOrders
```

И два сценария:

```text
HOT ONLY:
  проверяем только id/price/quantity/side
  cold_payload вообще не читаем

COLD TOUCH:
  проверяем id/price/quantity/side
  если order invalid, дополнительно читаем byte из cold_payload
```

Смысл experiment: понять, когда cold data внутри AoS мешает hot scan, и что
происходит, когда cold data реально нужна.

## Commands

Сборка:

```bash
cmake --build cmake-build-release --target benchmark_hot_cold_split
```

Запуск:

```bash
./cmake-build-release/benchmark_hot_cold_split
```

## Correctness

Для каждого distribution проверялись пары:

```text
validate_fat_aos == validate_hot_split
validate_and_touch_cold_aos == validate_and_touch_cold_split
```

Checksums совпали.

HOT ONLY checksums:


| Distribution |        checksum | invalid |
| ------------ | --------------: | ------: |
| 99% valid    | 490'644'000'000 |  10'000 |
| 90% valid    | 405'540'000'000 | 100'000 |
| 50% valid    | 125'300'000'000 | 500'000 |

COLD TOUCH checksums:


| Distribution |        checksum |
| ------------ | --------------: |
| 99% valid    | 490'645'277'547 |
| 90% valid    | 405'552'762'970 |
| 50% valid    | 125'363'694'572 |

## Measurements

Ниже медианы из 5 запусков по `elapsed`.


| Distribution | Fat AoS hot-only | Hot split hot-only | Fat AoS cold-touch | Hot split cold-touch |
| ------------ | ---------------: | -----------------: | -----------------: | -------------------: |
| 99% valid    |           1166us |              513us |             1095us |                920us |
| 90% valid    |           1112us |              510us |             1140us |               2543us |
| 50% valid    |           1111us |              511us |             3021us |               3271us |

Relative view:


| Distribution | Hot-only split effect | Cold-touch split effect |
| ------------ | --------------------: | ----------------------: |
| 99% valid    |         ~2.27x faster |           ~1.19x faster |
| 90% valid    |         ~2.18x faster |           ~2.23x slower |
| 50% valid    |         ~2.17x faster |           ~1.08x slower |

## Hot-Only Interpretation

В hot-only scenario split стабильно быстрее примерно в 2.1-2.3 раза.

Причина: в `FatOrderRecord` рядом с hot fields лежит:

```cpp
std::array<std::uint8_t, 64> cold_payload;
```

Даже если loop не читает `cold_payload` явно, CPU при проходе по AoS тащит
cache lines, внутри которых лежит этот payload. В итоге на каждый order через
cache проходит больше данных, чем нужно hot validation.

В split варианте hot scan читает только:

```text
ids
prices
quantities
sides
```

Cold payload лежит отдельно и не загрязняет hot path.

## Cold-Touch Interpretation

Когда cold payload реально читается на invalid orders, картина меняется.

На 99% valid cold touch редкий, поэтому split еще может быть примерно на уровне
или чуть быстрее. Но на 90% и 50% valid invalid orders больше, cold payload
читается чаще, и split начинает платить за дополнительный доступ в отдельный
`ColdOrders`.

Особенно заметно на 90% valid: hot fields лежат отдельно, cold payload отдельно,
и при invalid order приходится идти во второй массив. Это может ломать locality
и добавлять memory latency.

## Conclusion

Hot/cold split отлично помогает, когда hot loop почти всегда использует только
hot fields. В этой задаче hot-only scan стал примерно в 2 раза быстрее.

Но split не бесплатный. Если cold data реально нужна часто, отдельный cold
массив может стать дополнительным random/second-stream access и ухудшить
результат.

Практический вывод:

```text
hot/cold split полезен для частого hot-only path,
но его надо проверять отдельно для slow/cold path.
```

Это не аргумент автоматически переписывать все структуры. Это аргумент смотреть,
какие поля реально нужны в hot loop, и не таскать большой payload через cache без
необходимости.
