# Задача 1. Socket Options And Nonblocking Mode

## Цель

Собрать маленький Linux-first helper layer для настройки sockets под low latency
experiments. Это подготовка к TCP/UDP задачам, не production network library.

## Файл

Создай:

```text
include/llp/net/socket_utils.hpp
```

И маленький demo benchmark/program:

```text
benchmarks/stage_10_low_latency_networking/benchmark_socket_options.cpp
```

Добавь target:

```text
benchmark_socket_options
```

Если собираешь на Mac, код может быть guarded через platform checks. Основная
цель этой главы - Linux machine.

## API

Сделай namespace:

```cpp
namespace llp::net {
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
```

Для ошибок сделай простой helper:

```cpp
std::string last_socket_error();
```

Можно возвращать `bool` и печатать ошибку в demo. Не надо пока строить большой
exception framework.

## Demo

В `benchmark_socket_options.cpp`:

1. Создай TCP socket через `::socket(AF_INET, SOCK_STREAM, 0)`.
2. Примени helpers.
3. Через `getsockopt` проверь хотя бы:
   - `SO_RCVBUF`;
   - `SO_SNDBUF`;
   - `TCP_NODELAY`;
   - `O_NONBLOCK` через `fcntl`.
4. Закрой fd.

## Report

В `profiling_notes.md` запиши:

- OS;
- compiler;
- какие options включились;
- какие options отличаются на Mac/Linux;
- почему `TCP_NODELAY` важен для low latency TCP.

## Не Нужно

- делать TCP server;
- делать epoll;
- делать production error handling;
- подключать networking к matching engine.
