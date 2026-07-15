# Review Checklist

- `TcpSocket` закрывает fd в destructor.
- Copy запрещен, move поддержан.
- Invalid state использует `-1`.
- `send_some` / `recv_some` корректно возвращают `ssize_t`.
- Echo benchmark проверяет содержимое ответа.
- Есть измерения для 32, 128 и 512 bytes.
- В report есть median, p95 и p99.
- В report есть сравнение с Linux localhost TCP.
