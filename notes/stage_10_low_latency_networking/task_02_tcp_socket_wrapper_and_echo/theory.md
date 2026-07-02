# Теория. TCP Socket Wrapper

Raw socket fd легко забыть закрыть или скопировать неправильно. Поэтому даже в
low latency C++ полезен маленький RAII wrapper.

RAII wrapper должен:

- владеть fd;
- закрывать fd в destructor;
- запрещать copy;
- поддерживать move;
- давать тонкие wrappers над `send`/`recv`.

Echo benchmark на localhost полезен для изучения syscall overhead и TCP behavior,
но это не модель настоящей биржевой сети. Localhost не имеет NIC latency,
switching, packet loss и real wire effects.
