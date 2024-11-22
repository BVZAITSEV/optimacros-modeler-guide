---
uid: 'eoyear'
title: 'EOYEAR'
pdf: true
time_period: 'последний день года'
fname: 'EOYEAR'
---
# EOYEAR
{% include 'time-begin-end.txt' %} 

## Синтаксис

EOYEAR()  

EOYEAR(Х) 

## Аргументы 

- X: Выражение, возвращающее элемент измерения времени (time item), или выражение, возвращающее дату (Date)

{% include 'bo-eo-time-period-arguments.txt' %} 

## Возвращаемое значение 

формат Date 

## Эквивалент в Excel

нет 

## Примеры

Используйте `EOYEAR` для получения значения следующего года:

```
PARENT(PARENT(DAY(EOYEAR('Дата') + 1)))
```
Формат куба-приемника - измерения годов. В модели не активированы измерения кварталов и полугодий в настройках времени, как указано в статье [Настройки календаря](time-calendar-settings.md).

![Пример функции EOYEAR](f-eoyear-result-001.png)