# Задача 1. macOS Socket Options And Nonblocking Mode

## Цель

Собрать маленький macOS/BSD helper layer для настройки sockets под low latency experiments. Это подготовка к TCP/UDP задачам, не production network library.

## Файл

Создай:

```text
include/llp/net/macos/socket_utils.hpp
```

И маленький demo benchmark/program:

```text
benchmarks/stage_10_low_latency_networking_macos/benchmark_macos_socket_options.cpp
```

Добавь target:

```text
benchmark_macos_socket_options
```

## API

Сделай namespace:

```cpp
namespace llp::net::mac {
}
```

Минимальные функции:

```cpp
bool set_nonblocking(int fd);
bool set_reuse_addr(int fd);
bool set_reuse_port(int fd);
bool set_tcp_no_delay(int fd);
bool set_recv_buffer(int fd, int bytes);
bool set_send_buffer(int fd, int bytes);
std::string last_socket_error();
```

## Demo

В `benchmark_macos_socket_options.cpp`:

1. Создай TCP socket через `::socket(AF_INET, SOCK_STREAM, 0)`.
2. Примени helpers.
3. Через `getsockopt` проверь хотя бы:
   - `SO_RCVBUF`;
   - `SO_SNDBUF`;
   - `TCP_NODELAY`;
   - `O_NONBLOCK` через `fcntl`.
4. Закрой fd через `close`.

## Report

В `profiling_notes.md` запиши:

- macOS version;
- compiler;
- какие options включились;
- какие options отличаются от Linux;
- почему `TCP_NODELAY` важен для low latency TCP;
- чем macOS `SO_REUSEPORT` может отличаться от Linux `SO_REUSEPORT`.

## Не Нужно

- делать TCP server;
- делать `kqueue`;
- делать production error handling;
- подключать networking к matching engine.
