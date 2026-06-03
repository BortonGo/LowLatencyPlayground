# Задача 1. Binary Message Parser

## Цель

Сделать простой binary parser для market data message без allocation в hot path.

Нужно научиться аккуратно читать bytes и валидировать размер buffer.

## Нужные Файлы

Рекомендуемые файлы:

```text
include/llp/market_data_message.hpp
include/llp/binary_feed_parser.hpp
tests/test_binary_feed_parser.cpp
benchmarks/benchmark_binary_feed_parser.cpp
```

## CMake

Добавь test file в `llp_tests`:

```cmake
tests/test_binary_feed_parser.cpp
```

Добавь benchmark executable:

```cmake
add_executable(benchmark_binary_feed_parser
        benchmarks/benchmark_binary_feed_parser.cpp
)

target_include_directories(benchmark_binary_feed_parser PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

## Message Layout

Binary layout:

```text
offset  size  field
0       1     type
1       4     symbol_id
5       8     price
13      4     quantity
17      1     side
```

Total size:

```text
18 bytes
```

## Interface

Используй namespace `llp`.

```cpp
enum class MessageType : std::uint8_t {
    Add = 1,
    Cancel = 2,
    Trade = 3
};

enum class Side : std::uint8_t {
    Bid = 1,
    Ask = 2
};

struct MarketDataMessage {
    MessageType type;
    std::uint32_t symbol_id;
    std::uint64_t price;
    std::uint32_t quantity;
    Side side;
};

class BinaryFeedParser {
public:
    static constexpr std::size_t message_size = 18;

    bool parse(const std::byte* data,
               std::size_t size,
               MarketDataMessage& out) const noexcept;
};
```

## Requirements

- Если `size < message_size`, вернуть `false`.
- Если `type` неизвестный, вернуть `false`.
- Если `side` неизвестный, вернуть `false`.
- Все integer поля читать как little-endian.
- Не делать allocation внутри `parse`.
- Не бросать exceptions из `parse`.
- Не использовать `reinterpret_cast` на всю структуру.

## Unit Tests

Покрой минимум:

- valid add message parses correctly;
- valid cancel message parses correctly;
- too small buffer returns false;
- invalid type returns false;
- invalid side returns false;
- parser не меняет `out`, если parse failed.

## Benchmark

Сценарий:

- заранее создай `std::vector<std::byte>` с `1'000'000` сообщений подряд;
- в hot loop парси каждое сообщение;
- считай checksum по `symbol_id`, `price`, `quantity`;
- печатай elapsed и messages/sec.

## Критерии Готовности

- Tests проходят.
- Benchmark собирается и запускается в Release.
- Parser не делает allocation в `parse`.
- Ты можешь объяснить, почему не используем `reinterpret_cast` всей структуры.
- Ты можешь объяснить, почему parser возвращает `bool`, а не кидает exception.

## Подсказка 1

Little-endian helper для `uint32_t`:

```cpp
std::uint32_t read_u32_le(const std::byte* p);
```

Собирай число через `std::to_integer<std::uint32_t>(p[i])`.

## Подсказка 2

Сначала проверь все raw поля во временные переменные, и только потом записывай в
`out`. Так failed parse не испортит output.

## Подсказка 3

В benchmark allocation при подготовке input buffer разрешен. В hot parse loop -
нет.

## Что Прислать На Review

Пришли:

- `include/llp/market_data_message.hpp`;
- `include/llp/binary_feed_parser.hpp`;
- `tests/test_binary_feed_parser.cpp`;
- `benchmarks/benchmark_binary_feed_parser.cpp`;
- изменения в `CMakeLists.txt`;
- вывод `ctest`;
- вывод Release benchmark.

