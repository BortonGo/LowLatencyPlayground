# Задача 2. Software Prefetch Distance

## Цель

Понять, когда `__builtin_prefetch` помогает, а когда только добавляет шум.
Работаем поверх random indexed workload из задачи 1.

## Файл

Создай benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_software_prefetch.cpp
```

Добавь target:

```text
benchmark_software_prefetch
```

## Функции

Базовая функция:

```cpp
std::uint64_t sum_random_no_prefetch(
    const std::vector<std::uint64_t>& values,
    const std::vector<std::uint32_t>& indices);
```

Prefetch вариант:

```cpp
std::uint64_t sum_random_prefetch(
    const std::vector<std::uint64_t>& values,
    const std::vector<std::uint32_t>& indices,
    std::size_t distance);
```

Внутри loop сначала prefetch будущего элемента:

```cpp
if (i + distance < indices.size()) {
    __builtin_prefetch(&values[indices[i + distance]], 0, 1);
}
```

Потом обычная работа:

```cpp
sum += values[indices[i]];
```

## Distances

Проверь:

```text
0/no prefetch
1
4
8
16
32
64
```

`distance = 0` лучше печатать как отдельный baseline `NO PREFETCH`, а не реально
вызывать prefetch текущего элемента.

## Проверка

Все варианты должны возвращать одинаковый checksum.

Если checksum отличается, benchmark невалиден.

## Report

Таблица:

```text
size | no prefetch | d=1 | d=4 | d=8 | d=16 | d=32 | d=64 | best
```

Ответь:

- на каком size prefetch начал помогать или не помог;
- какая distance была лучшей;
- почему слишком маленькая distance не успевает скрыть latency;
- почему слишком большая distance может портить cache;
- стоит ли применять prefetch без измерений.

## Не Нужно

- prefetch sequential loop;
- использовать `__builtin_prefetch` как "магическое ускорение";
- делать вывод по одному запуску.
