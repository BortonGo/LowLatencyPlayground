# Задача 4. Cancel Benchmark Before After

## Цель

Сделать benchmark cancel таким, чтобы по нему было понятно:

- сколько cancel operations выполнено;
- сколько cancel реально успешно;
- насколько fast cancel index ускорил сценарий;
- нет ли случайного benchmark-а "cancel missing на пустой книге".

## Нужные Файлы

```text
benchmarks/stage_07_matching_engine/benchmark_matching_engine.cpp
```

Опционально можно добавить notes с результатами:

```text
notes/stage_07_matching_engine/task_04_cancel_benchmark_before_after/results.md
```

## Requirements

- Подготовка resting orders происходит до таймера.
- В timed секции только `engine.cancel(order.id)`.
- Считай `successful_cancels`.
- Печатай `successful_cancels`.
- Печатай `operations`.
- Печатай `elapsed(us)`.
- Печатай `throughput(ops/sec)`.
- Checksum должен зависеть от successful cancels.

## Output Format

Пример:

```text
CANCEL RESTING ONLY
operations = 100000
successful_cancels = 100000
checksum = 5000050000
elapsed(us) = 12345
throughput(ops/sec) = 8.1e+06
```

## Scenarios

Оставь минимум три сценария:

- `ADD RESTING ONLY`;
- `MATCH CROSSING ONLY`;
- `CANCEL RESTING ONLY`.

Для match scenario дополнительно печатай:

```text
trades_generated = trades.size()
```

## Критерии Готовности

- Benchmark собирается в Release.
- Benchmark запускается.
- Cancel scenario не меряет пустую книгу.
- Output можно прочитать без просмотра кода.
- Ты можешь объяснить, почему cancel стал быстрее или почему не стал.

## Подсказка 1

Не включай генерацию `std::vector<Order>` в timed секцию.

## Подсказка 2

Не включай заполнение книги в timed секцию cancel benchmark.

## Подсказка 3

`trades.clear()` не освобождает capacity. Это нормально для benchmark.

## Что Прислать На Review

Пришли:

- `benchmark_matching_engine.cpp`;
- вывод Release benchmark;
- короткое объяснение: какая операция самая медленная и почему.

