# Review Checklist

- Есть multicast socket wrapper.
- Receiver делает `bind` перед `IP_ADD_MEMBERSHIP`.
- Sender включает `IP_MULTICAST_LOOP` для local experiment.
- Packets содержат `seq`.
- Receiver считает gaps.
- Benchmark проверяет checksum или total received.
- Report содержит packets/sec и gaps.
- Target линкуется с `ws2_32`.
