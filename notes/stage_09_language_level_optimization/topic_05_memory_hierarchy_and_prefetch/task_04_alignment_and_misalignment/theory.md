# Теория. Alignment

Alignment означает, что адрес значения кратен нужной границе.

Для `uint64_t` естественный alignment обычно 8 bytes. Для cache/SIMD часто
интересны 16, 32 или 64 bytes.

Unaligned access на современных CPU часто работает, но может быть дороже,
особенно если чтение пересекает cache line boundary. На некоторых архитектурах
или для некоторых инструкций unaligned access может быть проблемой.

Важно: в C++ нельзя просто взять произвольный byte offset и читать его как
`uint64_t*`, если pointer не выровнен для `uint64_t`. Это может быть undefined
behavior. Для deliberately byte-misaligned чтения используй `std::memcpy`.
