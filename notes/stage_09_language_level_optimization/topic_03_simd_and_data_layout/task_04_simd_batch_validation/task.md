# Задача 4. SIMD Batch Validation

## Цель

Собрать из предыдущих задач реалистичный batch pre-validation experiment.
Это не live order-book path: мы проверяем большой независимый batch orders до отправки дальше.

## Файл И Result Type

Создай:

```text
benchmarks/stage_09_language_level_optimization/benchmark_simd_batch_validation.cpp
```

Добавь target `benchmark_simd_batch_validation`.

Каждая реализация возвращает один и тот же result:

```cpp
struct ValidationResult {
    std::size_t invalid_count;
    std::uint64_t checksum;
};
```

Checksum должен учитывать index/id invalid order, чтобы compiler не выбросил работу.

## Правила Validation

Order valid, только если одновременно:

```text
id != 0
quantity != 0
min_price <= price <= max_price
side is Buy or Sell
```

Подготовь три batch:

```text
99% valid
90% valid
50% valid
```

До измерений проверь, что все реализации возвращают одинаковый `ValidationResult`.

## Четыре Варианта

1. `validate_aos_scalar(const vector<Order>&)`.
2. `validate_soa_scalar(const OrderSoA&)` с vectorization disabled pragma только для этой функции.
3. `validate_soa_auto(const OrderSoA&)` с обычным индексным loop.
4. `validate_soa_manual_neon(const OrderSoA&)` - optional, только если task 3 дала корректный manual SIMD filter.

Сначала сделай первые три. Manual вариант не должен блокировать задачу.

## Что Именно Мерить

Для каждого distribution измерь elapsed/throughput всех вариантов.
Не включай в измерение:

```text
generation
AoS -> SoA conversion
allocation
result comparison
```

Сделай минимум 5 запусков, в report используй медианы.

## Tests

Добавь маленький test или debug assertion на наборе из 5-10 orders:

```text
valid order
zero id
zero quantity
price below range
price above range
invalid side
```

Все scalar/auto/manual implementations должны дать один result.

## Report

Таблица:

```text
distribution | AoS scalar | SoA scalar | SoA auto | manual optional | result equal
```

Ответь:

- где SoA дал выигрыш сам по себе;
- где compiler vectorized SoA loop;
- какой condition мешает vectorization;
- имеет ли batch pre-validation смысл до pipeline;
- почему это не аргумент переносить live matching на SIMD.

## Не Нужно

- менять `llp::Order` или live matching path;
- смешивать этот experiment с CUDA;
- делать manual SIMD обязательным.
