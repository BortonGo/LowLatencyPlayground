# Задача 2. Winsock TCP Socket Wrapper And Echo

## Цель

Сделать минимальную RAII-обертку над Windows TCP socket и проверить round-trip echo на localhost.

## Файлы

Создай:

```text
include/llp/net/windows/tcp_socket.hpp
benchmarks/stage_10_low_latency_networking_windows/benchmark_winsock_tcp_echo_roundtrip.cpp
```

Добавь target:

```text
benchmark_winsock_tcp_echo_roundtrip
```

Target должен линковаться с:

```text
ws2_32
```

## TCP Socket Class

Минимальный класс:

```cpp
namespace llp::net::win {

class TcpSocket {
public:
    TcpSocket();
    explicit TcpSocket(SOCKET socket);
    ~TcpSocket();

    TcpSocket(const TcpSocket&) = delete;
    TcpSocket& operator=(const TcpSocket&) = delete;

    TcpSocket(TcpSocket&& other) noexcept;
    TcpSocket& operator=(TcpSocket&& other) noexcept;

    [[nodiscard]] SOCKET native() const;
    [[nodiscard]] bool valid() const;

    bool set_nonblocking();
    bool set_no_delay();
    int send_some(const void* data, int size);
    int recv_some(void* data, int size);
    void close();
};

}
```

## Echo Experiment

В одном process подними server thread:

1. `WSAStartup` через `WinsockRuntime`.
2. Server bind/listen на `127.0.0.1:port`.
3. Client connect.
4. Server accept.
5. Client отправляет fixed-size message.
6. Server читает и отправляет обратно.
7. Client меряет round-trip time.

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

- насколько шумный localhost TCP RTT на Windows;
- помог ли `TCP_NODELAY`;
- где виден syscall cost;
- почему это не равно real network latency;
- чем Windows socket wrapper отличается от Linux fd wrapper.

## Не Нужно

- делать `WSAPoll`;
- делать много клиентов;
- делать IOCP;
- делать matching engine over TCP.
