# Теория. Epoll

`epoll` - Linux API для ожидания событий на множестве file descriptors.

Вместо thread per connection server может держать один event loop:

```text
epoll_wait -> events -> read/write/accept
```

Для low latency server важно:

- sockets должны быть nonblocking;
- нужно читать до `EAGAIN` или аккуратно управлять readiness;
- ошибки и EOF надо обрабатывать явно;
- event loop не должен делать лишних allocations в hot path.

`epoll` Linux-only. На macOS похожая роль у `kqueue`, но API другой.
