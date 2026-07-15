# Теория. macOS UDP Multicast

UDP multicast часто используется в market data, потому что один sender может раздавать один поток многим receivers. UDP не гарантирует доставку, порядок и отсутствие gaps, поэтому reliability строится отдельно: sequence numbers, gap detection, recovery channel, snapshots.

На macOS multicast делается через BSD sockets:

- receiver создает UDP socket;
- socket bind делается на local port;
- join group делается через `IP_ADD_MEMBERSHIP`;
- buffer size настраивается через `SO_RCVBUF`;
- sender включает loopback через `IP_MULTICAST_LOOP`, если receiver на той же машине;
- TTL задается через `IP_MULTICAST_TTL`.

На localhost результат может зависеть от interface selection, firewall/network permissions и multicast loopback settings. Для учебной задачи достаточно local admin multicast group и понятного gap counter.
