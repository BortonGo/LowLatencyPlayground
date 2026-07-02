# Задача 3. Epoll TCP Server

## Цель

Сделать Linux-only TCP server на `epoll`, который может обслуживать несколько
соединений без thread per connection.

## Файлы

Создай:

```text
include/llp/net/epoll_loop.hpp
benchmarks/stage_10_low_latency_networking/benchmark_epoll_tcp_server.cpp
```

Добавь target:

```text
benchmark_epoll_tcp_server
```

На Mac target можно не собирать или guarded через `#ifdef __linux__`.

## Epoll Loop

Минимальный wrapper:

```cpp
class EpollLoop {
public:
    EpollLoop();
    ~EpollLoop();

    bool add(int fd, std::uint32_t events);
    bool modify(int fd, std::uint32_t events);
    bool remove(int fd);
    int wait(epoll_event* events, int max_events, int timeout_ms);
};
```

## Server

Server должен:

1. Создать nonblocking listening socket.
2. Добавить listen fd в epoll.
3. При accept добавлять client fd в epoll.
4. При read event читать message.
5. Отправлять echo назад.
6. Закрывать connection при EOF/error.

## Benchmark

Запусти server thread и несколько client threads:

```text
clients = 1, 4, 16
message_size = 64 bytes
messages_per_client = 10'000
```

Каждый client проверяет echo checksum.

## Report

Таблица:

```text
clients | total messages | elapsed | throughput msg/sec | errors
```

Ответь:

- чем epoll отличается от blocking accept/read loop;
- где появляются syscall costs;
- что будет bottleneck на localhost;
- почему это Linux-only часть.

## Не Нужно

- делать TLS;
- делать production protocol;
- делать lock-free queue между network и engine.
