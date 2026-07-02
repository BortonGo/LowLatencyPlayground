# Review Checklist

- Код guarded для Linux или target не ломает Mac build.
- Listening socket nonblocking.
- Client sockets nonblocking.
- `epoll_wait` используется для accept/read.
- Echo correctness проверяется.
- Notes объясняют Linux-only nature.
