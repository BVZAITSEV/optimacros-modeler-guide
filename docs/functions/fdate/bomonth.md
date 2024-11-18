---
uid: 'bomonth'
title: 'BOMONTH'
pdf: true
time_period: 'начало месяца'
fname: 'BOMONTH'
---
# BOMONTH
{% include 'time-begin-end.txt' %} 

## Синтаксис

BOMONTH()  

BOMONTH(Х) 

## Аргументы
- X: Выражение, возвращающее элемент измерения времени (time item) или выражение, возвращающее дату (Date). 

{% include 'bo-eo-time-period-arguments.txt' %} 

## Возвращаемое значение 

формат Date 

## Эквивалент в Excel

нет 

## Примеры 

Найти предыдущий месяц:

```
PARENT(DAY(BOMONTH()-1))
```

![Пример функции BOMONTH](f-bomonth-result-001.png)
 