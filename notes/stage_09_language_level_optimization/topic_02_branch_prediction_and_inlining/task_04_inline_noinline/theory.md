# Теория. Inlining

Inlining убирает function call и открывает компилятору больше context.

Но forced inline не всегда полезен:

- code size растет;
- instruction cache может страдать;
- debugging/profile становятся шумнее.

`noinline` полезен как контрольный вариант, чтобы увидеть цену call boundary.
