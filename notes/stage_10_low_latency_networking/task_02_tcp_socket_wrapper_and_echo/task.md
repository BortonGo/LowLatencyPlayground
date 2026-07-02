# Задача 2. TCP Socket Wrapper And Echo

## Цель

Сделать минимальную RAII-обертку над TCP socket и проверить round-trip echo на
localhost. Это мост от raw fd helpers к нормальному C++ коду.

## Файлы

Создай:

```text
include/llp/net/tcp_socket.hpp
benchmarks/stage_10_low_latency_networking/benchmark_tcp_echo_roundtrip.cpp
```

Добавь target:

```text
benchmark_tcp_echo_roundtrip
```

## TCP Socket Class

Минимальный класс:

```cpp
namespace llp::net {

class TcpSocket {
public:
    TcpSocket();
    explicit TcpSocket(int fd);
    ~TcpSocket();

    TcpSocket(const TcpSocket&) = delete;
    TcpSocket& operator=(const TcpSocket&) = delete;

    TcpSocket(TcpSocket&& other) noexcept;
    TcpSocket& operator=(TcpSocket&& other) noexcept;

    [[nodiscard]] int fd() const;
    [[nodiscard]] bool valid() const;

    bool set_nonblocking();
    bool set_no_delay();
    ssize_t send_some(const void* data, std::size_t size);
    ssize_t recv_some(void* data, std::size_t size);
    void close();
};

}
```

## Echo Experiment

В одном process можно поднять server thread:

1. Server bind/listen на `127.0.0.1:port`.
2. Client connect.
3. Server accept.
4. Client отправляет fixed-size message.
5. Server читает и отправляет обратно.
6. Client меряет round-trip time.

Размеры сообщений:

```text
32 bytes
128 bytes
512 bytes
```

Iterations:

```text
10'000
```

## Report

Таблица:

```text
message_size | median RTT | p95 | p99
```

Ответь:

- насколько шумный localhost TCP RTT;
- помог ли `TCP_NODELAY`;
- почему это не равно real network latency;
- где syscall cost становится виден.

## Не Нужно

- делать epoll;
- делать много клиентов;
- делать matching engine over TCP.
