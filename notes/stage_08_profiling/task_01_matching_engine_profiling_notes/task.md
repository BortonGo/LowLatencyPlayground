# Задача 1. Matching Engine Profiling Notes

## Цель

Сделать первый profiling pass для matching engine benchmark и записать выводы.

## Нужные Файлы

Создай notes:

```text
notes/stage_08_profiling/task_01_matching_engine_profiling_notes/profiling_notes.md
```

Используй один или несколько benchmark-ов:

```text
benchmark_matching_engine
benchmark_vector_vs_trade_buffer
benchmark_matching_engine_latency
```

## Requirements

- Собери Release.
- Запусти benchmark.
- Сними profile через доступный инструмент:
  - `sample`;
  - Instruments;
  - другой macOS profiler.
- Запиши top hotspots.
- Запиши, что было неожиданно.
- Запиши, какой следующий optimization target.

## Suggested Commands

В одном терминале можно запустить benchmark:

```text
./cmake-build-release/benchmark_matching_engine
```

Если benchmark слишком быстро завершается, временно увеличь workload или добавь loop в benchmark.

Для `sample` нужен процесс, который живет несколько секунд:

```text
sample <pid> 5
```

## profiling_notes.md Format

Минимум:

```text
# Matching Engine Profiling Notes

## Setup

Build type:
Benchmark:
Machine:

## Hotspots

- ...

## Observations

- ...

## Next Optimization Target

- ...
```

## Критерии Готовности

- Есть `profiling_notes.md`.
- Есть реальные observations, а не только "все быстро".
- Ты можешь объяснить, где время.
- Ты можешь предложить следующую оптимизацию на основе profile.

## Подсказка 1

Если benchmark завершается слишком быстро, временно увеличь `orders_cnt`.

## Подсказка 2

Сравни profile до/после fast cancel index, если интересно.

## Подсказка 3

Если profiler показывает много времени в benchmark/printing, значит измеряешь не ту часть или workload слишком маленький.

## Что Прислать На Review

Пришли:

- `profiling_notes.md`;
- какой benchmark профилировал;
- краткий вывод своими словами.

