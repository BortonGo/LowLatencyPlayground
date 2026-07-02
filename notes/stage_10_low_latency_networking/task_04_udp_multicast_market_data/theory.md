# Теория. UDP Multicast

Market data часто распространяется через UDP multicast: один sender может
отправлять поток многим receivers.

Плюсы:

- нет per-client TCP connection;
- низкий overhead;
- удобно для fanout;
- receiver сам следит за sequence gaps.

Минусы:

- UDP не гарантирует доставку;
- нет встроенного retransmission;
- receiver должен обрабатывать gaps;
- kernel buffers и NIC settings важны.

Для trading systems multicast feed обычно комбинируется с recovery channel:
основной поток быстрый, пропуски восстанавливаются отдельно.
