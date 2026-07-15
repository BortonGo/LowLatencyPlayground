# Review Checklist

- Есть RAII wrapper для `WSAStartup` / `WSACleanup`.
- Есть `include/llp/net/windows/socket_utils.hpp`.
- Helpers принимают `SOCKET`, а не `int`.
- Nonblocking mode включается через `ioctlsocket`.
- Ошибки читаются через `WSAGetLastError`.
- Demo создает socket и закрывает его через `closesocket`.
- Target линкуется с `ws2_32` на Windows.
- В report есть сравнение с Linux socket API.
