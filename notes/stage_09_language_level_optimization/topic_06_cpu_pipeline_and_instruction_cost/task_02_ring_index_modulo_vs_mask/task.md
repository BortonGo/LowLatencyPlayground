# Задача 2. Ring Index Modulo Vs Mask

## Цель

Проверить цену обновления ring buffer index разными способами.
Это controlled experiment про `%`, branch reset и bitmask для power-of-two
capacity.

## Файл

Создай benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_ring_index_update.cpp
```

Добавь target:

```text
benchmark_ring_index_update
```

## Сценарий

Нужно много раз обновлять индекс:

```cpp
index = next(index, capacity);
checksum += index;
```

Количество итераций:

```text
100'000'000
```

## Функции

Modulo:

```cpp
std::uint64_t run_modulo_index(std::size_t iterations, std::uint32_t capacity);
```

Branch reset:

```cpp
std::uint64_t run_branch_reset_index(std::size_t iterations, std::uint32_t capacity);
```

Bitmask, только для power-of-two:

```cpp
std::uint64_t run_mask_index(std::size_t iterations, std::uint32_t capacity);
```

## Logic

Modulo:

```cpp
index = (index + 1) % capacity;
```

Branch reset:

```cpp
++index;
if (index == capacity) {
    index = 0;
}
```

Mask:

```cpp
index = (index + 1) & (capacity - 1);
```

## Capacities

Проверь:

```text
capacity = 1024
capacity = 4096
capacity = 1000
```

Для `capacity = 1000` mask variant не запускай, потому что это не power-of-two.

## Важный Момент

Если `capacity` compile-time constant, compiler может сам оптимизировать `%`.
Поэтому capacity передавай runtime value из `main`, не делай template и не
используй `constexpr capacity` внутри функции.

## Report

Таблица:

```text
capacity | modulo | branch reset | mask | notes
```

Ответь:

- насколько дорог `%`;
- когда branch reset быстрее;
- почему mask работает только для power-of-two;
- что это значит для ring buffer capacity.

## Не Нужно

- менять настоящий `RingBuffer`;
- делать capacity template;
- использовать mask для capacity, которая не power-of-two.
