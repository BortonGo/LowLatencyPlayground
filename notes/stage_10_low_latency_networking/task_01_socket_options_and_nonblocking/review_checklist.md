# Review Checklist

- Есть `include/llp/net/socket_utils.hpp`.
- Helpers возвращают success/failure.
- Demo создает socket и закрывает fd.
- `O_NONBLOCK` проверяется через `fcntl`.
- `TCP_NODELAY` проверяется через `getsockopt`.
- Notes объясняют Linux/Mac differences.
