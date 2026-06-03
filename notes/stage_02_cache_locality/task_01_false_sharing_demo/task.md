# Задача 1. False Sharing Demo

## Цель

Написать benchmark, который демонстрирует false sharing на двух counters,
обновляемых двумя threads.

Нужно сравнить:

1. `UnpaddedCounters`: два atomic counters лежат рядом;
2. `PaddedCounters`: counters разведены по разным cache lines.

Главная цель - увидеть, что lock-free/atomic код может быть медленным из-за
cache coherence traffic.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/stage_02_cache_locality/false_sharing_demo.cpp
```

## CMake

Добавь отдельный executable:

```cmake
add_executable(false_sharing_demo
        benchmarks/stage_02_cache_locality/false_sharing_demo.cpp
)

target_include_directories(false_sharing_demo PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

Если на твоей платформе понадобится явно линковать threads:

```cmake
find_package(Threads REQUIRED)
target_link_libraries(false_sharing_demo PRIVATE Threads::Threads)
```

## Интерфейс/Структуры

Используй примерно такие структуры:

```cpp
struct UnpaddedCounters {
    std::atomic<std::uint64_t> a{0};
    std::atomic<std::uint64_t> b{0};
};

struct alignas(64) PaddedCounter {
    std::atomic<std::uint64_t> value{0};
    char padding[64 - sizeof(std::atomic<std::uint64_t>)]{};
};

struct PaddedCounters {
    PaddedCounter a;
    PaddedCounter b;
};
```

Можно улучшить padding аккуратнее, если хочешь, но не усложняй слишком рано.

## Требования

- Используй `std::thread`.
- Используй `std::atomic<std::uint64_t>`.
- Каждый thread должен increment свой counter.
- Используй `memory_order_relaxed`, потому что нам не нужна синхронизация данных,
  мы измеряем contention/cache behavior.
- Измеряй total elapsed time на весь run, а не latency каждого increment.
- Сделай два benchmark case:
  - `unpadded`;
  - `padded`.
- Для каждого case выведи:
  - iterations per thread;
  - final counter values;
  - elapsed time в milliseconds или microseconds.
- Запускай в Release build.

## Рекомендуемая Конфигурация

Начни с:

```cpp
constexpr std::uint64_t iterations_per_thread = 100'000'000;
```

Если слишком долго на твоем MacBook Air, уменьши до `20'000'000`.

## Форма Benchmark

Идея:

```cpp
auto start = std::chrono::steady_clock::now();

std::thread t1([&] {
    for (...) {
        counters.a.fetch_add(1, std::memory_order_relaxed);
    }
});

std::thread t2([&] {
    for (...) {
        counters.b.fetch_add(1, std::memory_order_relaxed);
    }
});

t1.join();
t2.join();

auto end = std::chrono::steady_clock::now();
```

Для padded version обращение будет чуть другим:

```cpp
counters.a.value.fetch_add(1, std::memory_order_relaxed);
```

## Output Format

Пример:

```text
unpadded
iterations/thread : 100000000
a                 : 100000000
b                 : 100000000
elapsed           : 1200 ms

padded
iterations/thread : 100000000
a                 : 100000000
b                 : 100000000
elapsed           : 350 ms
```

Числа примерные. Реальный результат зависит от CPU, scheduler, power mode и
background load.

## Критерии Готовности

- Benchmark собирается отдельной target.
- Оба counters после run равны `iterations_per_thread`.
- Используется `memory_order_relaxed`.
- Unpadded и padded cases используют одинаковое количество работы.
- Измеряется total elapsed time, а не каждый increment.
- Ты можешь объяснить, почему counters независимы логически, но мешают друг
  другу физически.

## Подсказка 1

Не используй `BenchmarkTimer` здесь. Он измеряет один callable много раз, а тут
нам нужно измерить один многопоточный run целиком.

## Подсказка 2

Сделай два helper-а:

```cpp
RunResult run_unpadded(std::uint64_t iterations);
RunResult run_padded(std::uint64_t iterations);
```

Где:

```cpp
struct RunResult {
    std::uint64_t a = 0;
    std::uint64_t b = 0;
    std::chrono::nanoseconds elapsed{};
};
```

## Подсказка 3

Если результат нестабильный, запусти benchmark несколько раз. Для такого demo
важен устойчивый порядок величин, а не идеальная точность.

## Что Прислать На Review

Пришли:

- `benchmarks/stage_02_cache_locality/false_sharing_demo.cpp`;
- изменения в `CMakeLists.txt`;
- пример вывода из Release build;
- короткое объяснение своими словами, почему padded быстрее или почему разница
  на твоей машине оказалась маленькой.
