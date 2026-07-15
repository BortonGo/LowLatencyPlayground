# Review Checklist

- Есть `include/llp/net/macos/socket_utils.hpp`.
- Helpers принимают file descriptor типа `int`.
- Nonblocking mode включается через `fcntl`.
- Ошибки читаются через `errno`.
- Demo создает socket и закрывает fd через `close`.
- Demo проверяет `SO_RCVBUF`, `SO_SNDBUF`, `TCP_NODELAY`, `O_NONBLOCK`.
- В report есть сравнение macOS и Linux socket options.
