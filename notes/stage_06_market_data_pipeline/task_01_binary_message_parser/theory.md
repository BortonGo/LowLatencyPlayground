# Теория 1. Binary Message Parser

## Почему Binary

Market data feed часто приходит в бинарном формате.

Причины:

- меньше bytes на wire;
- быстрее парсинг;
- фиксированные layouts;
- проще zero-allocation hot path.

## Опасность Reinterpret Cast

Самый заманчивый путь:

```cpp
auto* msg = reinterpret_cast<const Message*>(buffer);
```

Но это может быть опасно:

- alignment;
- strict aliasing;
- padding;
- endianness;
- неполный buffer.

Для учебной задачи лучше явно читать bytes в поля через helper functions.

## Fixed Layout

Мы начнем с простого формата:

```text
type      : uint8_t
symbol_id : uint32_t
price     : uint64_t
quantity  : uint32_t
side      : uint8_t
```

Все поля в little-endian.

## Hot Path Thinking

Parser в hot path не должен:

- выделять память;
- бросать исключения на нормальном fast path;
- создавать `std::string`;
- делать лишние copies.

Лучше вернуть `bool`:

```cpp
bool parse(std::span<const std::byte> data, MarketDataMessage& out);
```

## HFT-Мышление

Parser - один из первых этапов pipeline. Если он медленный или делает allocation,
весь downstream уже получает задержку.

