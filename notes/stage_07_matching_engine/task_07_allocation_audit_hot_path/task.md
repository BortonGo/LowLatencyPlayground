# Задача 7. Allocation Audit In Hot Path

## Цель

Понять, какие сценарии `MatchingEngine` делают heap allocation в hot path.

Нужно проверить:

- add resting;
- match crossing;
- cancel resting;
- vector trades with reserve;
- `TradeBuffer`.

## Нужные Файлы

Рекомендуемый benchmark:

```text
benchmarks/stage_07_matching_engine/benchmark_matching_engine_allocations.cpp
```

Добавь в CMake:

```cmake
add_llp_benchmark(benchmark_matching_engine_allocations
        benchmarks/stage_07_matching_engine/benchmark_matching_engine_allocations.cpp)
```

## Interface

В benchmark-файле можно добавить глобальный счетчик:

```cpp
std::atomic<std::uint64_t> g_allocations{0};

void* operator new(std::size_t size) {
    g_allocations.fetch_add(1, std::memory_order_relaxed);
    return std::malloc(size);
}

void operator delete(void* ptr) noexcept {
    std::free(ptr);
}
```

Если компилятор просит sized delete, добавь:

```cpp
void operator delete(void* ptr, std::size_t) noexcept {
    std::free(ptr);
}
```

## Requirements

- Счетчик должен сбрасываться перед timed/hot section.
- Подготовка orders не должна попадать в allocation count.
- Печатай allocations для каждого сценария.
- Печатай checksum, чтобы работа не была выкинута.
- Не меняй `MatchingEngine` ради этой задачи.

## Scenarios

Минимум:

```text
ADD RESTING ALLOCATIONS
MATCH CROSSING ALLOCATIONS VECTOR
MATCH CROSSING ALLOCATIONS TRADE_BUFFER
CANCEL RESTING ALLOCATIONS
```

## Expected Thinking

Ожидаемо:

- add может аллоцировать из-за `std::map`, `std::deque`, `std::unordered_map`;
- match может почти не аллоцировать, если levels уже подготовлены и trades buffer заранее готов;
- cancel обычно не должен аллоцировать;
- `std::vector<Trade>` без reserve может аллоцировать;
- `TradeBuffer` сам не аллоцирует.

## Критерии Готовности

- Benchmark собирается в Release.
- Benchmark запускается.
- Есть allocation count по сценариям.
- Ты можешь объяснить, откуда берутся allocations.
- Ты можешь связать allocations с latency tail.

## Подсказка 1

Сначала сгенерируй orders, потом сбрось счетчик:

```cpp
auto orders = generate_orders(...);
g_allocations.store(0, std::memory_order_relaxed);
```

## Подсказка 2

Для `MATCH CROSSING` подготовка resting book должна быть до сброса счетчика, если ты хочешь мерить только matching.

## Подсказка 3

Сравни `std::vector<Trade>` с `reserve` и без `reserve`, чтобы увидеть разницу.

## Что Прислать На Review

Пришли:

- `benchmark_matching_engine_allocations.cpp`;
- изменения в `CMakeLists.txt`;
- вывод Release benchmark;
- короткий вывод: где есть allocations и почему.

