# Теория. Decision Before Rewrite

В low-latency проектах легко начать переписывать всё сразу.

Особенно когда profile показывает неприятные вещи:

```text
operator new
malloc
free
std::deque::erase
unordered_map internals
```

Но плохой profile не означает:

```text
надо немедленно писать свой allocator
```

Он означает:

```text
надо понять следующий самый маленький проверяемый шаг
```

## Почему Нужна Decision Task

До этого этапа было несколько разных направлений:

- `reserve()` для `unordered_map`;
- flat price levels;
- fast cancel index;
- tombstone cancel;
- возможный reuse/pool в будущем.

Каждое направление имеет цену.

Если прыгнуть сразу к сложной структуре, можно:

- сломать correctness;
- потерять понятность;
- улучшить не тот bottleneck;
- получить benchmark, который сложно объяснить.

## Хорошее Решение

Хорошее решение после profile должно отвечать:

```text
какой bottleneck подтвержден?
какое минимальное изменение бьет по нему?
как мы проверим, что стало лучше?
какой риск у изменения?
```

## Пример

Если `__do_rehash` был виден в profile, хороший следующий шаг:

```text
добавить reserve() -> повторить profile -> проверить __do_rehash
```

Если после этого остался `std::deque::erase`, хороший следующий шаг:

```text
сделать cancel benchmark -> проверить linear erase -> попробовать tombstone/index
```

Если остался `std::map` overhead на маленьком price range:

```text
сделать flat price level experiment -> сравнить с map
```

## Чего Избегать

Не надо выбирать решение только потому, что оно звучит HFT-like:

- custom allocator;
- intrusive list;
- memory pool;
- lock-free structure;
- compressed sparse book.

Все это может быть полезно.

Но только после того, как текущие данные говорят:

```text
да, именно это следующий bottleneck
```

## Цель Этого Этапа

Цель decision task:

```text
сохранить план маленьких измеримых шагов
```

Это скучнее, чем большой rewrite, но намного надежнее.
