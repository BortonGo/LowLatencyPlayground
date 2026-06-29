# Profiling Notes

## Context

В этой задаче проверялся `__builtin_prefetch` на random indexed access из
предыдущей задачи.

Baseline:

```cpp
checksum += values[indices[i]];
```

Prefetch variant:

```cpp
__builtin_prefetch(&values[indices[i + distance]], 0, 1);
checksum += values[indices[i]];
```

Размер данных:

```text
16'000'000 uint64_t
```

Все варианты возвращают одинаковый checksum:

```text
checksum = 79'992'000'000
```

## Commands

Сборка:

```bash
cmake --build cmake-build-release --target benchmark_software_prefetch
```

Запуск:

```bash
./cmake-build-release/benchmark_software_prefetch
```

## Fix During Review

В первой версии `sum_random_prefetch` была важная ошибка:

```cpp
for (auto i : indices) {
    if (i + distance < indices.size()) {
        __builtin_prefetch(&values[indices[i + distance]], 0, 1);
    }
    checksum += values[i];
}
```

Здесь `i` был не номером итерации, а уже перемешанным индексом из `indices`.
Из-за этого prefetch смотрел не на будущую итерацию, а на случайную позицию,
зависящую от значения индекса.

Финальная форма правильнее:

```cpp
for (std::size_t i = 0; i < indices.size(); ++i) {
    if (i + distance < indices.size()) {
        __builtin_prefetch(&values[indices[i + distance]], 0, 1);
    }
    checksum += values[indices[i]];
}
```

Теперь `distance` означает именно расстояние до будущей итерации.

## Measurements

Ниже медианы из 5 запусков по `elapsed`.

| Variant | Median elapsed | Relative to no prefetch |
|---|---:|---:|
| No prefetch | 42'724us | 1.00x |
| Prefetch distance 1 | 48'136us | 1.13x slower |
| Prefetch distance 4 | 47'109us | 1.10x slower |
| Prefetch distance 8 | 45'443us | 1.06x slower |
| Prefetch distance 16 | 41'572us | 1.03x faster |
| Prefetch distance 32 | 36'587us | 1.17x faster |
| Prefetch distance 64 | 29'623us | 1.44x faster |

Лучший результат в этих прогонах:

```text
Prefetch distance 64
```

## Interpretation

`__builtin_prefetch` иногда помогает, а иногда нет. В этом experiment маленькие
distances `1`, `4`, `8` стали хуже baseline. Скорее всего, prefetch был слишком
близко к реальной загрузке и не успевал скрыть memory latency, но уже добавлял
лишнюю инструкцию и pressure.

`distance = 16` оказался примерно около baseline. Это пограничная зона: иногда
может быть чуть лучше, иногда разница легко уйдет в шум.

`distance = 32` и `distance = 64` дали заметный выигрыш. Тут prefetch смотрит
достаточно далеко вперед, и у CPU появляется шанс подтянуть cache line до того,
как loop реально дойдет до этой загрузки.

## Why It Is Not Guaranteed

Prefetch - это hint, а не команда "ускорь". CPU может использовать этот hint,
но итог зависит от:

- размера данных;
- random pattern;
- distance;
- memory latency;
- cache pressure;
- текущей архитектуры CPU;
- того, сколько независимых loads уже есть in flight;
- того, вытесняет ли prefetch полезные cache lines.

Слишком маленькая distance не успевает помочь. Слишком большая distance в другом
workload может начать портить cache, потому что данные подтягиваются слишком
рано и вытесняют полезное.

## Conclusion

Главный вывод: нельзя заранее сказать, что `__builtin_prefetch` точно поможет.
Его нужно проверять на конкретном hot loop и подбирать distance измерениями.

В этом benchmark prefetch действительно помог на больших distances, особенно
`64`, но ухудшил результат на маленьких distances. Поэтому `__builtin_prefetch`
нельзя использовать как универсальную оптимизацию.

Практическое правило:

```text
prefetch имеет смысл пробовать только после того, как понятно,
что bottleneck именно в memory latency random access pattern.
```

Задачу считаю засчитанной: checksum совпадает, baseline есть, несколько
distances проверены, вывод не абсолютизирует prefetch.
