# Теория 4. Branch Prediction Basics

## Что Такое Branch Prediction

CPU выполняет инструкции конвейером. Когда в коде есть branch:

```cpp
if (condition) {
    // path A
} else {
    // path B
}
```

CPU не хочет ждать, пока точно станет известно значение `condition`. Он пытается
угадать, какой путь будет выполнен, и начинает выполнять его заранее.

Если угадал - хорошо, pipeline продолжает работать. Если не угадал - часть
работы выбрасывается, pipeline очищается, и выполнение теряет время. Это branch
misprediction.

## Предсказуемые И Непредсказуемые Ветки

Предсказуемая ветка:

```cpp
if (i % 2 == 0) { ... }
```

Непредсказуемая ветка:

```cpp
if (random_flags[i]) { ... }
```

Если pattern почти случайный, branch predictor чаще ошибается.

## Почему Это Важно

В hot path branch может быть дороже, чем кажется. Особенно если:

- branch стоит внутри tight loop;
- данных много;
- branch outcome плохо предсказывается;
- в обеих ветках мало работы, поэтому misprediction становится заметным.

В market data / matching engine коде branches встречаются везде:

- message type;
- side buy/sell;
- active/inactive;
- price level exists / not exists;
- order fully filled / partially filled;
- queue empty / not empty.

## Важная Осторожность

Branch prediction benchmark легко испортить:

- compiler может оптимизировать loop;
- random generation внутри measured loop измеряет random, а не branch;
- разные branches могут делать разную работу;
- branchless версия может быть быстрее или медленнее в зависимости от данных.

Поэтому random flags надо подготовить заранее, а в measured loop только читать
flags и считать checksum.
