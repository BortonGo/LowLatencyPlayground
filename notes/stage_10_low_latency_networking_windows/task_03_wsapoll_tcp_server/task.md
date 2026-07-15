# Задача 3. WSAPoll TCP Server

## Цель

Сделать Windows-only TCP echo server на `WSAPoll`, который может обслуживать несколько соединений без thread per connection.

## Файлы

Создай:

```text
include/llp/net/windows/wsapoll_loop.hpp
benchmarks/stage_10_low_latency_networking_windows/benchmark_wsapoll_tcp_server.cpp
```

Добавь target:

```text
benchmark_wsapoll_tcp_server
```

Target должен линковаться с:

```text
ws2_32
```

## WSAPoll Loop

Минимальный wrapper:

```cpp
namespace llp::net::win {

class WsaPollLoop {
public:
    bool add(SOCKET socket, short events);
    bool modify(SOCKET socket, short events);
    bool remove(SOCKET socket);
    int wait(int timeout_ms);

    [[nodiscard]] const WSAPOLLFD* events() const;
    [[nodiscard]] int size() const;
};

}
```

Можно хранить `std::vector<WSAPOLLFD>`.

## Server

Server должен:

1. Создать nonblocking listening socket.
2. Добавить listen socket в poll list.
3. При `POLLRDNORM` на listen socket делать `accept`.
4. Accepted client sockets переводить в nonblocking mode.
5. Добавлять client sockets в poll list.
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

- чем `WSAPoll` отличается от blocking accept/read loop;
- чем `WSAPoll` отличается от Linux `epoll`;
- где появляются syscall/event polling costs;
- что становится bottleneck на localhost;
- почему IOCP считается более production-oriented Windows API.

## Не Нужно

- делать TLS;
- делать production protocol;
- делать IOCP;
- подключать server к matching engine.
