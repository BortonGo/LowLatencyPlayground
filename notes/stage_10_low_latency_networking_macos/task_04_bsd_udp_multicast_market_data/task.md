# Задача 4. macOS UDP Multicast Market Data Skeleton

## Цель

Сделать UDP multicast receiver skeleton на macOS/BSD sockets для market-data-like packets.

## Файлы

Создай:

```text
include/llp/net/macos/udp_multicast_socket.hpp
benchmarks/stage_10_low_latency_networking_macos/benchmark_macos_udp_multicast_receive.cpp
```

Добавь target:

```text
benchmark_macos_udp_multicast_receive
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

1. Receiver создает UDP socket.
2. Receiver bind на local port.
3. Receiver joins multicast group через `IP_ADD_MEMBERSHIP`.
4. Sender отправляет packets на multicast address.
5. Receiver читает packets.
6. Receiver проверяет sequence gaps.
7. Receiver считает received count и checksum.

Адрес:

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
SO_RCVBUF
IP_ADD_MEMBERSHIP
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
- влияет ли `SO_RCVBUF` на loss;
- почему UDP multicast подходит для market data;
- почему reliability надо строить отдельно;
- какие macOS-specific проблемы встретились.

## Не Нужно

- делать real exchange parser;
- делать retransmission protocol;
- подключать receiver к matching engine.
