# Задача 4. Alignment And Misalignment

## Цель

Проверить, влияет ли alignment на простой numeric scan и SIMD-friendly loop.
Это маленький controlled experiment, не изменение engine code.

## Файл

Создай benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_alignment_scan.cpp
```

Добавь target:

```text
benchmark_alignment_scan
```

## Данные

Выдели один byte buffer с запасом и сделай несколько views на `std::uint64_t`.

Идея:

```cpp
std::vector<std::byte> buffer(bytes + 64);
```

Потом найди aligned pointer на 64 bytes и создай offsets:

```text
offset 0
offset 8
offset 16
offset 32
offset 1
```

Для удобства можно сделать helper:

```cpp
std::uint64_t* align_to_64(std::byte* ptr);
```

Если offset делает pointer невалидным для `uint64_t` access по правилам C++,
не используй прямой `uint64_t*`. Для `offset 1` сделай отдельный byte-copy
вариант через `std::memcpy`, чтобы не получить undefined behavior.

## Функции

Aligned scan:

```cpp
std::uint64_t sum_aligned(const std::uint64_t* data, std::size_t count);
```

Misaligned-but-still-uint64 scan для offsets, кратных 8:

```cpp
std::uint64_t sum_offset_u64(const std::uint64_t* data, std::size_t count);
```

Byte-misaligned scan:

```cpp
std::uint64_t sum_misaligned_memcpy(const std::byte* data, std::size_t count);
```

## Что Мерить

Размеры:

```text
1M uint64_t
16M uint64_t
```

Variants:

```text
64-byte aligned
offset 8
offset 16
offset 32
offset 1 via memcpy
```

Все variants должны давать ожидаемый checksum или явно объяснять, почему
`offset 1` читает другой byte stream.

## Report

Таблица:

```text
size | aligned | offset 8 | offset 16 | offset 32 | offset 1 memcpy
```

Ответь:

- есть ли разница между 64-byte aligned и offsets, кратными 8;
- насколько дорог `offset 1` через `memcpy`;
- видна ли разница в assembly;
- стоит ли вручную выравнивать все подряд.

## Не Нужно

- делать undefined behavior ради красивых цифр;
- использовать reinterpret_cast для `offset 1` как `uint64_t*`;
- менять allocator в основном проекте.
