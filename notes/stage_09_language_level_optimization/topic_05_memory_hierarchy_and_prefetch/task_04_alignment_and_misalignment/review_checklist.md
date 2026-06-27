# Review Checklist

- Есть aligned baseline.
- Offsets, кратные 8, не нарушают alignment `uint64_t`.
- Byte-misaligned case сделан через `std::memcpy`.
- Генерация buffer не входит в measured interval.
- Есть минимум два размера данных.
- Notes не делают общий вывод "alignment всегда важен" без измерений.
