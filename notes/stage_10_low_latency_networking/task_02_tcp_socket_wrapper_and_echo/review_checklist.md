# Review Checklist

- `TcpSocket` закрывает fd в destructor.
- Copy запрещен, move работает.
- Есть localhost echo benchmark.
- Есть проверка checksum/message echo.
- RTT измеряется вне setup/connect.
- Notes не путают localhost TCP с real network.
