---
uid: 'eomonth'
title: 'EOMONTH'
pdf: true
time_period: 'конец месяца'
fname: 'EOMONTH'
---
# EOMONTH
{% include 'time-begin-end.txt' %} 

## Синтаксис

EOMONTH()  

EOMONTH(Х) 

## Аргументы
- X: выражение, возвращающее элемент измерения времени (time item) или выражение, возвращающее дату (Date). 

{% include 'bo-eo-time-period-arguments.txt' %} 

## Возвращаемое значение 

формат Date 

## Эквивалент в Excel

КОНМЕСЯЦА/EOMONTH 

## Примеры 

Найти следующий месяц:

```
PARENT(DAY(EOMONTH()+1))
```

![Пример функции EOMONTH](f-eomonth-result-001.png)

 