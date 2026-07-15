# Review Checklist

- `TcpSocket` закрывает ресурс в destructor.
- Copy запрещен, move поддержан.
- Invalid state использует `INVALID_SOCKET`.
- `send_some` / `recv_some` корректно обрабатывают `SOCKET_ERROR`.
- Echo benchmark проверяет содержимое ответа.
- Есть измерения для 32, 128 и 512 bytes.
- В report есть median, p95 и p99.
- Target линкуется с `ws2_32`.
