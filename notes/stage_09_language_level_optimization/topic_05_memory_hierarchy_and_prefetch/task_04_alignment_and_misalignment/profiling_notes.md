# Profiling Notes

## Context

В этой задаче проверялось, насколько сильно влияет alignment начала чтения на
простой scan по `uint64_t`.

Было несколько вариантов:

```text
offset 0   -> 64-byte aligned pointer
offset 8   -> pointer сдвинут на 8 bytes, но все еще valid для uint64_t
offset 16  -> pointer сдвинут на 16 bytes, valid для uint64_t
offset 32  -> pointer сдвинут на 32 bytes, valid для uint64_t
offset 1   -> byte-misaligned чтение через std::memcpy
```

Важный момент: `offset 1` специально сделан через `std::memcpy`, а не через
`reinterpret_cast<std::uint64_t*>`. Иначе это был бы риск undefined behavior.

## Commands

Сборка:

```bash
cmake --build cmake-build-release --target benchmark_alignment_scan
```

Запуск:

```bash
./cmake-build-release/benchmark_alignment_scan
```

## Code Notes

Для aligned pointer используется helper:

```cpp
std::byte* align_to_64(std::byte* ptr)
```

Для обычных variants:

```cpp
sum_u64(reinterpret_cast<std::uint64_t*>(base + offset), count)
```

Это безопасно для offsets `0`, `8`, `16`, `32`, потому что адрес остается кратен
8 bytes, то есть подходит для `uint64_t`.

Для `offset 1` используется:

```cpp
std::memcpy(&value, data + i * sizeof(std::uint64_t), sizeof(value));
```

Это менее приятно писать, но это правильный способ сделать byte-misaligned read
без UB.

## Correctness

Checksums для `offset 0`, `offset 8`, `offset 16`, `offset 32` совпадают:


| Size |       checksum |
| ---: | -------------: |
|   1M |  4'999'500'000 |
|  16M | 79'992'000'000 |

Checksum у `offset 1 memcpy` отличается:


| Size |          offset 1 checksum |
| ---: | -------------------------: |
|   1M | 16'140'901'064'514'889'664 |
|  16M |                304'512'000 |

Это ожидаемо: `offset 1` читает другой byte stream, то есть не те же самые
`uint64_t` значения, а группы по 8 байт начиная с `base + 1`.

## Measurements

Ниже медианы из 5 запусков по `elapsed`.


| Size | Offset 0 aligned | Offset 8 | Offset 16 | Offset 32 | Offset 1 memcpy |
| ---: | ---------------: | -------: | --------: | --------: | --------------: |
|   1M |            100us |     83us |      91us |      80us |            86us |
|  16M |           2036us |   1773us |    1830us |    1760us |          1790us |

Замеры получились шумные: первый прогон был заметно холоднее, дальше результаты
стабилизировались. Поэтому здесь не стоит делать вывод "offset 32 быстрее,
значит надо всегда сдвигать pointer". Это скорее шум, cache state и детали
codegen.

## Interpretation

Главный результат: сильного штрафа за offsets `8`, `16`, `32` не видно.

Это логично: такие адреса все еще корректно выровнены для `uint64_t`. Они могут
быть не 64-byte aligned, но обычный scalar scan на современной машине нормально
переваривает такие адреса.

`offset 1 memcpy` тоже не стал катастрофически медленным. Вероятно, compiler
хорошо оптимизирует маленький fixed-size `std::memcpy` на 8 bytes. Но это не
значит, что можно делать опасный cast с `base + 1` к `uint64_t*`: через cast был
бы undefined behavior, а через `memcpy` это корректный C++.

## Conclusion

Эта задача показала, что alignment важен как правило корректности и как возможный
performance factor, но в конкретном простом scan не видно большого штрафа между
`64-byte aligned` и offsets, которые все еще кратны 8.

Практический вывод:

```text
не надо вручную выравнивать все подряд без измерений;
для uint64_t важно не нарушать минимум 8-byte alignment;
byte-misaligned чтение делаем через memcpy, если оно реально нужно;
performance выводы по alignment надо подтверждать benchmark и assembly.
```
