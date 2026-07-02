# Теория. Socket Options

Low latency networking начинается не с сложного server, а с правильных socket
settings.

Полезные options:

- `O_NONBLOCK` - операции не блокируют thread;
- `TCP_NODELAY` - отключает Nagle algorithm для TCP;
- `SO_REUSEADDR` - позволяет быстрее переиспользовать address;
- `SO_REUSEPORT` - полезно для некоторых server/multicast scenarios;
- `SO_RCVBUF` / `SO_SNDBUF` - размеры kernel buffers.

Важно понимать: socket option не гарантирует низкую задержку. Это только
настройка среды. Реальная latency зависит от syscall path, kernel scheduling,
copying, NIC, interrupt coalescing, CPU affinity и workload.

Mac и Linux отличаются. В этой главе Linux считается основной платформой.
