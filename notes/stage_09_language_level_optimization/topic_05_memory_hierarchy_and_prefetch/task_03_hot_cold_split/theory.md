# Теория. Hot Cold Split

Hot data - поля, которые нужны в частом hot loop.

Cold data - поля, которые нужны редко: debug info, payload, metadata, notes,
slow-path details.

Если cold data лежит рядом с hot fields в одной большой структуре, CPU тащит в
cache лишние bytes. Cache line занята данными, которые hot loop не использует.

Hot/cold split выносит редко используемые поля отдельно. Это может ускорить
частый scan, но может ухудшить сценарий, где cold data нужна постоянно.

Поэтому split проверяют минимум двумя сценариями:

- hot-only;
- hot + cold touch.
