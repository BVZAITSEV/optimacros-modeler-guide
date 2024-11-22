---
uid: 'boyear'
title: 'BOYEAR'
pdf: true
time_period: 'первый день года'
fname: 'BOYEAR'
---
# BOYEAR
{% include 'time-begin-end.txt' %}

## Синтаксис

BOYEAR()  

BOYEAR(Х) 

## Аргументы 

- X: Выражение, возвращающее элемент измерения времени (time item), или выражение, возвращающее дату (Date) 

{% include 'bo-eo-time-period-arguments.txt' %} 

## Возвращаемое значение 

формат Date 

## Эквивалент в Excel

 нет 

## Примеры

Используйте `BOYEAR` для получения значения предыдущего года:

```
PARENT(PARENT(DAY(BOYEAR('Дата') - 1)))
```
Формат куба-приемника - измерения годов. В модели не активированы измерения кварталов и полугодий в настройках времени, как указано в статье [Настройки календаря](time-calendar-settings.md).

![Пример функции BOYEAR](f-boyear-result-001.png)