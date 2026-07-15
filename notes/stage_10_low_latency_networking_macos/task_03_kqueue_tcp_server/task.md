# Задача 3. Kqueue TCP Server

## Цель

Сделать macOS-only TCP echo server на `kqueue`, который может обслуживать несколько соединений без thread per connection.

## Файлы

Создай:

```text
include/llp/net/macos/kqueue_loop.hpp
benchmarks/stage_10_low_latency_networking_macos/benchmark_kqueue_tcp_server.cpp
```

Добавь target:

```text
benchmark_kqueue_tcp_server
```

На Linux/Windows target можно не собирать или guarded через platform checks.

## Kqueue Loop

Минимальный wrapper:

```cpp
namespace llp::net::mac {

class KqueueLoop {
public:
    KqueueLoop();
    ~KqueueLoop();

    KqueueLoop(const KqueueLoop&) = delete;
    KqueueLoop& operator=(const KqueueLoop&) = delete;

    bool add_read(int fd, void* user_data = nullptr);
    bool remove_read(int fd);
    int wait(struct kevent* events, int max_events, int timeout_ms);

    [[nodiscard]] int fd() const;
    [[nodiscard]] bool valid() const;
};

}
```

## Server

Server должен:

1. Создать nonblocking listening socket.
2. Добавить listen fd в `kqueue` через `EVFILT_READ`.
3. При read event на listen fd делать `accept`.
4. Accepted client fd переводить в nonblocking mode.
5. Добавлять client fd в `kqueue`.
6. При read event читать message.
7. Отправлять echo назад.
8. Закрывать connection при EOF/error.

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

- чем `kqueue` отличается от blocking accept/read loop;
- чем `kqueue` отличается от Linux `epoll`;
- где появляются syscall costs;
- что становится bottleneck на localhost;
- почему эта часть macOS-specific.

## Не Нужно

- делать TLS;
- делать production protocol;
- делать lock-free queue между network и engine.
