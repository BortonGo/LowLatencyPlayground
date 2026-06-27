# Задача 1. Sequential Vs Random Memory Access

## Цель

Померить базовую цену memory access pattern: последовательный проход против
случайного доступа по индексам. Это фундамент для следующей задачи про
`__builtin_prefetch`.

## Файл

Создай benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_memory_access_patterns.cpp
```

Добавь target:

```text
benchmark_memory_access_patterns
```

## Данные

Подготовь один большой массив:

```cpp
std::vector<std::uint64_t> values;
```

Размеры:

```text
64K
1M
16M
64M
```

Для random access подготовь отдельный массив индексов:

```cpp
std::vector<std::uint32_t> indices;
```

`indices` должен быть permutation от `0` до `size - 1`. Генерация и shuffle не
попадают в measured interval.

## Функции

Напиши две функции:

```cpp
std::uint64_t sum_sequential(const std::vector<std::uint64_t>& values);

std::uint64_t sum_random_indexed(
    const std::vector<std::uint64_t>& values,
    const std::vector<std::uint32_t>& indices);
```

Обе функции возвращают checksum. Checksum должен совпадать.

## Что Мерить

Для каждого size замерь:

```text
sequential sum
random indexed sum
```

Сделай минимум 5 прогонов и занеси median в notes.

## Report

Таблица:

```text
size | sequential | random indexed | slowdown
```

Ответь:

- на каком размере random access начинает сильно проигрывать;
- почему CPU cache и prefetcher помогают sequential loop;
- почему random index ломает locality;
- почему это важнее, чем просто "количество инструкций".

## Не Нужно

- добавлять manual prefetch в этой задаче;
- использовать matching engine;
- менять существующие структуры проекта.
