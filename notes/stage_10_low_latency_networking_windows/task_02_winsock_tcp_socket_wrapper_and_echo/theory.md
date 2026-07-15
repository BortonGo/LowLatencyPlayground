# Теория. Winsock TCP Socket Wrapper

Raw `SOCKET` легко закрыть дважды, забыть закрыть или случайно скопировать. Поэтому даже в учебном low latency коде полезен минимальный RAII wrapper.

Windows-особенности:

- invalid socket value - это `INVALID_SOCKET`, а не `-1`;
- многие функции возвращают `SOCKET_ERROR`;
- `send` и `recv` возвращают `int`;
- закрытие выполняется через `closesocket`;
- для `TCP_NODELAY` нужен `setsockopt` с level `IPPROTO_TCP`.

Echo benchmark на localhost полезен как первый end-to-end тест. Он показывает не "реальную сетевую задержку", а стоимость локального TCP пути: syscalls, kernel TCP stack, context switching, scheduling и копирование между user/kernel space.
