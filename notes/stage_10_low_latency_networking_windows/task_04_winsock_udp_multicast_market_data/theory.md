# Теория. Winsock UDP Multicast

UDP multicast часто используется в market data, потому что один sender может раздать поток многим receivers. UDP не гарантирует доставку, порядок и отсутствие gaps, поэтому reliability обычно строится отдельно: sequence numbers, gap detection, recovery channel, snapshots.

На Windows multicast делается через Winsock:

- receiver создает UDP socket;
- socket bind делается на local port;
- join group делается через `IP_ADD_MEMBERSHIP`;
- buffer size настраивается через `SO_RCVBUF`;
- sender включает loopback через `IP_MULTICAST_LOOP`, если receiver в том же process/machine;
- TTL задается через `IP_MULTICAST_TTL`.

На localhost результат может сильно зависеть от Windows firewall, adapter selection и multicast loopback settings. Для учебной задачи достаточно local admin multicast group и loopback-friendly setup.
