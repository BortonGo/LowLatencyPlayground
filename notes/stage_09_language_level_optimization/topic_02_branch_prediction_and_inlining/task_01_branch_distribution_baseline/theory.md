# Теория. Branch Distribution

Branch predictor учится на pattern.

Если почти все orders valid, branch обычно предсказуем.

Если valid/invalid около 50/50 и pattern случайный, mispredict становится дороже.

Перед hints нужно понять baseline:

```text
какое распределение данных у нас реально дорогое?
```
