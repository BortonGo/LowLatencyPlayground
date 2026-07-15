# Теория. macOS BSD Socket Options

macOS socket API основан на BSD sockets. Он ближе к Linux, чем Windows Winsock:

- socket handle - это обычный file descriptor типа `int`;
- закрытие делается через `close`;
- nonblocking mode включается через `fcntl`;
- ошибки читаются через `errno`;
- `select`, `poll` и `kqueue` работают с file descriptors.

Полезные options для low latency experiments:

- `O_NONBLOCK` - операции не блокируют thread;
- `TCP_NODELAY` - отключает Nagle algorithm для TCP;
- `SO_REUSEADDR` - разрешает повторное использование address;
- `SO_REUSEPORT` - есть на macOS, но семантика отличается от Linux;
- `SO_RCVBUF` / `SO_SNDBUF` - размеры kernel socket buffers.

Важно: socket option не гарантирует низкую задержку. Это только настройка поведения socket/kernel stack. Реальная latency зависит от syscall path, scheduling, copy cost, TCP/IP stack, NIC, interrupt behavior и workload.

Главная практическая мысль: задания 1, 2 и 4 очень похожи на Linux, а задание 3 нужно делать через `kqueue`, потому что `epoll` на macOS нет.
