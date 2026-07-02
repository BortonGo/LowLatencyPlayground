# Review Checklist

- Есть target `benchmark_ring_index_update`.
- Есть modulo, branch reset и mask variants.
- Mask запускается только для power-of-two capacity.
- Capacity передается runtime value.
- Есть checksum, чтобы loop не выкинуло.
- Notes объясняют корректность mask.
