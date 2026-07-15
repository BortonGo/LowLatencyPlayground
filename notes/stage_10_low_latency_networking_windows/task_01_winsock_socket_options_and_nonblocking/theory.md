# Теория. Winsock Socket Options

На Windows сетевой API называется Winsock. Он похож на BSD sockets по идее, но отличается деталями:

- перед работой нужно вызвать `WSAStartup`;
- socket handle имеет тип `SOCKET`, а не `int`;
- закрытие делается через `closesocket`, а не `close`;
- nonblocking mode включается через `ioctlsocket`, а не `fcntl`;
- ошибки читаются через `WSAGetLastError`, а не `errno`.

Для low latency экспериментов полезны те же базовые настройки:

- `TCP_NODELAY` - отключает Nagle algorithm для TCP;
- `SO_REUSEADDR` - разрешает повторное использование address;
- `SO_RCVBUF` / `SO_SNDBUF` - размеры kernel socket buffers;
- nonblocking mode - операции возвращаются сразу, если сейчас нечего читать или писать.

Важно: socket option не делает сеть быстрой сам по себе. Это только настройка поведения kernel/network stack. На localhost задержка будет зависеть от syscall overhead, планировщика Windows, копирования данных, TCP stack и текущей нагрузки машины.

Отличие от Linux-главы: здесь цель не повторить `epoll`, а научиться аккуратно работать с Windows socket API и понимать, какие части networking-кода являются platform-specific.
