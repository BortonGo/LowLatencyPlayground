# Теория. WSAPoll TCP Server

На Linux в этой главе используется `epoll`. На Windows прямого `epoll` нет.

Варианты ожидания событий:

- `select` - старый и простой API, но плохо масштабируется;
- `WSAPoll` - ближе по форме к POSIX `poll`;
- `WSAEventSelect` - event objects plus wait functions;
- IOCP - completion-based модель, основной production-путь для масштабируемого Windows networking.

Для учебного аналога `epoll` проще взять `WSAPoll`: он позволяет держать один server thread и обслуживать несколько TCP connections без thread per connection.

Это не production replacement для IOCP. Цель задачи - понять event loop, nonblocking sockets, accept/read/write cycle и стоимость syscall/event polling.
