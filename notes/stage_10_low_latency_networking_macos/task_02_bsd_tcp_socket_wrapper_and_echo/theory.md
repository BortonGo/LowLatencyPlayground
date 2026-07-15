# Теория. macOS TCP Socket Wrapper

Raw socket fd легко забыть закрыть или случайно скопировать. Поэтому даже в учебном networking-коде полезна минимальная RAII-обертка.

На macOS TCP socket - это обычный file descriptor:

- invalid fd обычно `-1`;
- `send` и `recv` возвращают `ssize_t`;
- закрытие выполняется через `close`;
- `TCP_NODELAY` включается через `setsockopt` с level `IPPROTO_TCP`;
- nonblocking mode включается через `fcntl`.

Echo benchmark на localhost полезен как первый end-to-end тест. Он показывает стоимость локального TCP пути: syscall overhead, kernel TCP stack, context switching, scheduling и копирование данных.

Это не измерение real network latency. Это controlled experiment, чтобы увидеть порядок величин и шумность localhost.
