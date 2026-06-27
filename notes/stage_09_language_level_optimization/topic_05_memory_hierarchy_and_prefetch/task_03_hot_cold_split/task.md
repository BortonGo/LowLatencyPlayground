# Задача 3. Hot Cold Split

## Цель

Проверить, когда разделение hot и cold данных ускоряет batch scan.
Это не переписывание matching engine, а отдельный experiment про cache lines.

## Файл

Создай benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_hot_cold_split.cpp
```

Добавь target:

```text
benchmark_hot_cold_split
```

## Данные

Сделай тяжелую AoS структуру:

```cpp
struct FatOrderRecord {
    std::uint64_t id;
    std::uint64_t price;
    std::uint32_t quantity;
    llp::OrderSide side;
    std::array<std::uint8_t, 64> cold_payload;
};
```

И split вариант:

```cpp
struct HotOrders {
    std::vector<std::uint64_t> ids;
    std::vector<std::uint64_t> prices;
    std::vector<std::uint32_t> quantities;
    std::vector<llp::OrderSide> sides;
};

struct ColdOrders {
    std::vector<std::array<std::uint8_t, 64>> payloads;
};
```

Генератор сначала создает `std::vector<FatOrderRecord>`, потом отдельный helper
конвертирует в `HotOrders + ColdOrders`. Conversion не входит в замер.

## Функции

Hot-only scan:

```cpp
ValidationResult validate_fat_aos(const std::vector<FatOrderRecord>& orders);

ValidationResult validate_hot_split(const HotOrders& hot);
```

Cold-read scan:

```cpp
std::uint64_t validate_and_touch_cold_aos(
    const std::vector<FatOrderRecord>& orders);

std::uint64_t validate_and_touch_cold_split(
    const HotOrders& hot,
    const ColdOrders& cold);
```

Во втором сценарии при invalid order дополнительно прочитай один byte из
`cold_payload`, чтобы cold data стала реально нужна.

## Что Мерить

Два сценария:

```text
hot-only validation
validation + cold touch on invalid
```

Distributions:

```text
99% valid
90% valid
50% valid
```

## Report

Таблица:

```text
distribution | fat AoS hot-only | split hot-only | fat AoS cold-touch | split cold-touch
```

Ответь:

- где hot/cold split помог;
- где split не помог или стал хуже;
- почему cold payload внутри AoS портит cache для hot scan;
- почему cold touch меняет картину.

## Не Нужно

- менять `llp::Order`;
- переносить split в production engine;
- делать вывод без сценария, где cold data реально читается.
