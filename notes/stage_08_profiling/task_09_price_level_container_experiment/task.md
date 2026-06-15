# Задача 9. Price Level Container Experiment

## Цель

Проверить гипотезу:

```text
std::deque<Order> внутри price level является заметной частью bottleneck
```

В profiles видны `std::deque::__add_back_capacity` и allocation paths, но пока это не доказывает, что именно `deque` надо первым менять.

Цель задачи:

```text
deque level vs vector level -> measure add/front/pop/cancel behavior
```

## Что Нужно Сделать

Добавь маленький isolated benchmark:

```text
benchmarks/stage_08_profiling/benchmark_price_level_container.cpp
```

Сравни контейнеры:

- `std::deque<Order>`;
- `std::vector<Order>` with reserve;
- optional simple tombstone vector, если захочется, но только как отдельный scenario.

## Scenarios

Измерь:

- push back many orders;
- read front many times;
- pop front many times;
- erase/cancel by id near front;
- erase/cancel by id near middle;
- erase/cancel by id near back.

## Tests

Если делаешь helper wrapper, добавь:

```text
tests/test_price_level_container.cpp
```

Если benchmark использует только raw STL containers, tests не обязательны.

## Report

Создай:

```text
notes/stage_08_profiling/task_09_price_level_container_experiment/profiling_notes.md
```

В отчете ответь:

- где `vector` лучше;
- где `deque` лучше;
- насколько дорог `erase` из середины;
- подходит ли `vector` без tombstones для cancel-heavy path;
- нужен ли tombstone experiment.

## Критерии Готовности

- Есть benchmark.
- Сравнение не смешано с matching engine.
- Есть checksum.
- Есть notes.
- Вывод говорит, менять ли контейнер внутри price level.

## Что Не Нужно Делать

Пока не надо:

- переписывать `PriceLevelArrayBookSide`;
- внедрять vector level в matching engine;
- писать allocator;
- объединять это с order id index task.
