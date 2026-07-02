# Задача 4. UDP Multicast Market Data Skeleton

## Цель

Сделать UDP multicast receiver skeleton для market-data-like packets.
Это подготовка к будущему feed handler, не полноценный exchange protocol.

## Файлы

Создай:

```text
include/llp/net/udp_multicast_socket.hpp
benchmarks/stage_10_low_latency_networking/benchmark_udp_multicast_receive.cpp
```

Добавь target:

```text
benchmark_udp_multicast_receive
```

## Packet

Сделай простой packet:

```cpp
struct MarketDataPacket {
    std::uint64_t seq;
    std::uint64_t timestamp_ns;
    std::uint32_t instrument_id;
    std::uint64_t price;
    std::uint32_t quantity;
};
```

## Sender/Receiver

В одном process:

1. Receiver joins multicast group.
2. Sender отправляет packets на multicast address.
3. Receiver читает packets.
4. Проверяет sequence gaps.
5. Считает received count и checksum.

Адрес можно взять из local admin multicast range:

```text
239.255.0.1
```

Port:

```text
30001
```

## Socket Options

Receiver:

```text
SO_REUSEADDR
IP_ADD_MEMBERSHIP
SO_RCVBUF
nonblocking optional
```

Sender:

```text
IP_MULTICAST_TTL
IP_MULTICAST_LOOP
```

## Benchmark

Packets:

```text
100'000
1'000'000
```

Report:

```text
packets | received | gaps | elapsed | packets/sec
```

## Report

Ответь:

- были ли gaps на localhost;
- сколько packets/sec получилось;
- где kernel buffer size влияет на loss;
- почему UDP multicast подходит для market data;
- почему reliability надо строить отдельно.

## Не Нужно

- делать real exchange parser;
- делать retransmission protocol;
- подключать matching engine.
