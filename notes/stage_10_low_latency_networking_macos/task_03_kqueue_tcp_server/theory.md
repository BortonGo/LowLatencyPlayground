# Теория. Kqueue TCP Server

На Linux используется `epoll`. На macOS его нет. Ближайший системный API для event loop - `kqueue`.

Идея похожа:

```text
kqueue -> kevent registration -> kevent wait -> events -> accept/read/write
```

Основные элементы:

- `kqueue()` создает queue descriptor;
- `EV_SET` готовит registration/change;
- `kevent()` регистрирует изменения и ожидает события;
- `EVFILT_READ` сообщает, что можно читать или accept;
- sockets должны быть nonblocking;
- event loop обслуживает много connections в одном thread.

`kqueue` не является drop-in replacement для `epoll`: структура events другая, flags другие, edge/level-trigger behavior настраивается иначе. Но учебная цель та же - уйти от blocking thread-per-connection model.
