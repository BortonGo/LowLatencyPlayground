# Задача 1. Winsock Socket Options And Nonblocking Mode

## Цель

Собрать маленький Windows-first helper layer для настройки sockets под low latency experiments. Это подготовка к TCP/UDP задачам, не production network library.

## Файлы

Создай:

```text
include/llp/net/windows/winsock_runtime.hpp
include/llp/net/windows/socket_utils.hpp
```

И маленький demo benchmark/program:

```text
benchmarks/stage_10_low_latency_networking_windows/benchmark_winsock_socket_options.cpp
```

Добавь target:

```text
benchmark_winsock_socket_options
```

На Windows target должен линковаться с:

```text
ws2_32
```

## API

Сделай namespace:

```cpp
namespace llp::net::win {
}
```

Минимальные функции:

```cpp
bool set_nonblocking(SOCKET socket);
bool set_reuse_addr(SOCKET socket);
bool set_tcp_no_delay(SOCKET socket);
bool set_recv_buffer(SOCKET socket, int bytes);
bool set_send_buffer(SOCKET socket, int bytes);
std::string last_socket_error();
```

Сделай RAII helper для Winsock runtime:

```cpp
class WinsockRuntime {
public:
    WinsockRuntime();
    ~WinsockRuntime();

    WinsockRuntime(const WinsockRuntime&) = delete;
    WinsockRuntime& operator=(const WinsockRuntime&) = delete;

    [[nodiscard]] bool ok() const;
};
```

## Demo

В `benchmark_winsock_socket_options.cpp`:

1. Создай `WinsockRuntime`.
2. Создай TCP socket через `::socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)`.
3. Примени helpers.
4. Через `getsockopt` проверь хотя бы:
   - `SO_RCVBUF`;
   - `SO_SNDBUF`;
   - `TCP_NODELAY`.
5. Для nonblocking mode достаточно проверить, что `ioctlsocket` вернул success.
6. Закрой socket через `closesocket`.

## Report

В `profiling_notes.md` запиши:

- OS version;
- compiler;
- какие options включились;
- что отличается от Linux API;
- почему `TCP_NODELAY` важен для low latency TCP;
- почему `SO_REUSEPORT` из Linux-главы здесь не является прямым аналогом.

## Не Нужно

- делать TCP server;
- делать `WSAPoll`;
- делать IOCP;
- подключать networking к matching engine.
