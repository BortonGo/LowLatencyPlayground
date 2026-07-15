# Review Checklist

- Listening socket nonblocking.
- Client sockets nonblocking.
- `kqueue` / `kevent` используются для accept/read events.
- Нет thread per connection.
- Connections закрываются через `close`.
- Clients проверяют echo correctness.
- Benchmark запускается для 1, 4 и 16 clients.
- В report есть throughput и errors.
- В report есть сравнение с Linux `epoll`.
