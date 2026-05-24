# Задача 1. LatencyStats and BenchmarkTimer

## Цель

Собрать маленький benchmark helper, который умеет много раз запускать callable,
игнорировать warm-up iterations, собирать latency samples по каждой измеряемой
итерации и возвращать базовую статистику latency.

В результате должно быть удобно писать небольшие benchmark-программы вроде:

- `benchmark_vector_push_back.cpp`
- `benchmark_list_vs_vector.cpp`

Пока не оптимизируй helper. Сначала сделай семантику понятной и тестируемой.

## Нужные Файлы

Рекомендуемые файлы:

```text
include/llp/latency_stats.hpp
include/llp/benchmark_timer.hpp
tests/test_latency_stats.cpp
tests/test_benchmark_timer.cpp
```

Можешь изменить имена, если API остается чистым и последовательным.

## Интерфейс

Используй namespace `llp`.

### LatencyStats

```cpp
class LatencyStats {
public:
    using Sample = std::chrono::nanoseconds;

    void add_sample(Sample sample);
    std::size_t count() const noexcept;
    bool empty() const noexcept;

    Sample min() const;
    Sample max() const;
    Sample mean() const;
    Sample median() const;
    Sample percentile(double p) const;

    void clear();
};
```

### BenchmarkTimer

```cpp
struct BenchmarkConfig {
    std::size_t warmup_iterations = 1'000;
    std::size_t measured_iterations = 10'000;
};

class BenchmarkTimer {
public:
    explicit BenchmarkTimer(BenchmarkConfig config = {});

    template <typename Func>
    LatencyStats run(Func&& func) const;
};
```

## Требования

- Используй C++17 или C++20.
- Для timing используй `std::chrono::steady_clock`.
- Warm-up iterations должны выполнять `func`, но не должны записываться.
- Measured iterations должны записывать один latency sample на каждый вызов.
- После запуска timer `LatencyStats::count()` должен быть равен
  `measured_iterations`.
- Percentiles должны работать независимо от порядка добавления samples.
- `percentile(50.0)` должен быть согласован с `median()`.
- Реши и задокументируй поведение для empty stats. Рекомендация для первой
  версии: бросать `std::runtime_error` из `min`, `max`, `mean`, `median` и
  `percentile`.
- Валидируй percentile input. Рекомендованное поведение: бросать
  `std::out_of_range`, если не выполнено `0.0 <= p <= 100.0`.
- Не добавляй printing внутрь `LatencyStats` и `BenchmarkTimer`.

## Примеры Тестов

Это примеры поведения, которое стоит покрыть. Их можно написать через
GoogleTest, когда появится test setup.

```cpp
TEST(LatencyStatsTest, CountsSamples) {
    llp::LatencyStats stats;
    stats.add_sample(std::chrono::nanoseconds{10});
    stats.add_sample(std::chrono::nanoseconds{20});

    EXPECT_EQ(stats.count(), 2u);
    EXPECT_FALSE(stats.empty());
}
```

```cpp
TEST(LatencyStatsTest, ComputesMinMaxMean) {
    llp::LatencyStats stats;
    stats.add_sample(std::chrono::nanoseconds{30});
    stats.add_sample(std::chrono::nanoseconds{10});
    stats.add_sample(std::chrono::nanoseconds{20});

    EXPECT_EQ(stats.min(), std::chrono::nanoseconds{10});
    EXPECT_EQ(stats.max(), std::chrono::nanoseconds{30});
    EXPECT_EQ(stats.mean(), std::chrono::nanoseconds{20});
}
```

```cpp
TEST(LatencyStatsTest, ComputesMedianForOddNumberOfSamples) {
    llp::LatencyStats stats;
    stats.add_sample(std::chrono::nanoseconds{30});
    stats.add_sample(std::chrono::nanoseconds{10});
    stats.add_sample(std::chrono::nanoseconds{20});

    EXPECT_EQ(stats.median(), std::chrono::nanoseconds{20});
}
```

```cpp
TEST(LatencyStatsTest, ThrowsForEmptyStats) {
    llp::LatencyStats stats;

    EXPECT_THROW(stats.min(), std::runtime_error);
    EXPECT_THROW(stats.percentile(99.0), std::runtime_error);
}
```

```cpp
TEST(BenchmarkTimerTest, RecordsOnlyMeasuredIterations) {
    std::size_t calls = 0;
    llp::BenchmarkTimer timer({.warmup_iterations = 3,
                               .measured_iterations = 5});

    auto stats = timer.run([&] { ++calls; });

    EXPECT_EQ(calls, 8u);
    EXPECT_EQ(stats.count(), 5u);
}
```

## Критерии Готовности

- Код собирается через CMake.
- Unit tests покрывают:
  - поведение empty stats,
  - min/max/mean,
  - median,
  - хотя бы один percentile,
  - warm-up не записывается в stats,
  - количество measured iterations.
- Ни одна benchmark helper function не печатает во время тестов.
- Public API использует `std::chrono::nanoseconds` для stored samples.
- Реализация достаточно простая, чтобы мы могли разобрать ее построчно.

## Подсказки

### Подсказка 1

Храни samples в `std::vector<std::chrono::nanoseconds>`. Для первой версии
нормально копировать и сортировать samples при вычислении median или
percentile.

### Подсказка 2

Для percentiles отсортируй samples и отобрази `p` в индекс. Простая первая
версия может использовать nearest-rank method:

```text
index = ceil((p / 100.0) * count) - 1
```

Зажми финальный индекс в диапазон `[0, count - 1]`.

### Подсказка 3

В `BenchmarkTimer::run` измеряй один вызов за раз:

```text
start = clock::now()
func()
end = clock::now()
add end - start
```

У этого есть overhead, но так мы получаем per-iteration samples. Timer overhead
обсудим позже.

## Что Прислать На Review

Пришли содержимое implementation files и tests или просто внеси их в repo и
скажи мне сделать review. Я буду смотреть на correctness, unnecessary
allocations, percentile semantics, chrono usage и benchmark methodology.
