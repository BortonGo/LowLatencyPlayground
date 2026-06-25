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

## Что Сначала Написать

Не начинай с SIMD и не начинай с pragma. Сначала собери одинаковые данные в двух
формах и сделай одну понятную scalar-проверку.

Используй существующий `llp::Order` для AoS. Рядом с бенчмарком добавь SoA:

```cpp
struct OrdersSoA {
    std::vector<std::uint64_t> ids;
    std::vector<std::uint64_t> prices;
    std::vector<std::uint32_t> quantities;
    std::vector<llp::OrderSide> sides;

    [[nodiscard]] std::size_t size() const { return ids.size(); }
};
```

Напиши генератор один раз: он создаёт `std::vector<llp::Order>`. После генерации
отдельный helper конвертирует этот вектор в `OrdersSoA`. Сделай это **до** timer.
Так AoS и SoA будут содержать ровно одни и те же orders.

Далее добавь маленький helper без SIMD:

```cpp
[[nodiscard]] bool is_valid_order(
    std::uint64_t id,
    std::uint64_t price,
    std::uint32_t quantity,
    llp::OrderSide side,
    std::uint64_t min_price,
    std::uint64_t max_price);
```

Внутри него верни одно булево выражение из правил validation. Для проверки side
явное условие выглядит так:

```cpp
side == llp::OrderSide::Buy || side == llp::OrderSide::Sell
```

## Три Базовые Функции

Напиши три функции с такими сигнатурами:

```cpp
ValidationResult validate_aos_scalar(
    const std::vector<llp::Order>& orders,
    std::uint64_t min_price,
    std::uint64_t max_price);

ValidationResult validate_soa_scalar(
    const OrdersSoA& orders,
    std::uint64_t min_price,
    std::uint64_t max_price);

ValidationResult validate_soa_auto(
    const OrdersSoA& orders,
    std::uint64_t min_price,
    std::uint64_t max_price);
```

У всех трёх одинаковая логика на каждой итерации:

```text
valid = is_valid_order(...)
if order is invalid:
    ++invalid_count
    checksum += id + index
```

`validate_aos_scalar` читает поля из `orders[i]`. Две SoA-функции читают
соответствующие поля из `ids[i]`, `prices[i]`, `quantities[i]`, `sides[i]`.
Не используй `push_back` или генерацию внутри этих функций.

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

## Три Варианта И Одна Опциональная Функция

1. `validate_aos_scalar(const vector<Order>&)`.
2. `validate_soa_scalar(const OrdersSoA&)` с отключённой векторизацией.
3. `validate_soa_auto(const OrdersSoA&)` с обычным индексным loop.
4. `validate_soa_manual_neon(const OrdersSoA&)` - optional, только если task 3 дала корректный manual SIMD filter.

Сначала сделай первые три. Manual вариант не должен блокировать задачу.

### Как Отключить Vectorization В Scalar SoA

Это нужно только чтобы получить честный scalar baseline для SoA. На твоём Mac с
Clang поставь pragma **не над функцией**, а прямо перед её единственным hot loop:

```cpp
ValidationResult validate_soa_scalar(/* ... */) {
    ValidationResult result{};

#pragma clang loop vectorize(disable)
    for (std::size_t i = 0; i < orders.size(); ++i) {
        // та же validation logic
    }

    return result;
}
```

Это директива clang: она запрещает auto-vectorization следующего `for` loop.
Она не является C++-синтаксисом и на GCC не переносима. В `validate_soa_auto`
такую строку не ставь: там должен быть тот же цикл, но без запрета.

После сборки с `-Rpass...` проверь, что remarks относятся к строкам обоих SoA
циклов. Для auto-варианта возможны два честных ответа: `vectorized loop` или
`vectorization is not beneficial` / `loop not vectorized` с причиной.

### Порядок Работы

1. Сделай `OrdersSoA`, генерацию и конвертацию.
2. Напиши `is_valid_order` и `validate_aos_scalar`.
3. На наборе из 6 orders вручную проверь `invalid_count` и `checksum`.
4. Скопируй логику в две SoA-функции.
5. Добавь `#pragma clang loop vectorize(disable)` только перед loop в `validate_soa_scalar`.
6. Через `assert` проверь, что все три `ValidationResult` равны для каждого batch.
7. Только теперь оберни вызовы validation-функций в `BenchmarkTimer`.

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

## Проверка Корректности

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

Для набора из шести orders ожидаемый `invalid_count` должен быть равен пяти:
один valid order и по одному order с `id == 0`, `quantity == 0`, price ниже
границы, price выше границы и invalid side. `checksum` не обязан быть красивым
числом, но обязан совпадать во всех трёх реализациях.

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
