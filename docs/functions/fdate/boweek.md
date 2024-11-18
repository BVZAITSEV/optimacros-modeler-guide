---
uid: 'boweek'
title: 'BOWEEK'
pdf: true
time_period: 'первый день недели'
fname: 'BOWEEK'
---
# BOWEEK
{% include 'time-begin-end.txt' %} 

## Синтаксис

BOWEEK()  

BOWEEK(Х) 

## Аргументы 

- X: Выражение, возвращающее элемент измерения времени (time item), или выражение, возвращающее дату (Date).

{% include 'bo-eo-time-period-arguments.txt' %} 

## Возвращаемое значение 

формат Date 

## Эквивалент в Excel

 нет 

## Примеры

Используйте `BOWEEK` для получения значения предыдущей недели:

```
PARENT(DAY(BOWEEK()-1))
```

Формат куба-приемника - измерения недель. Чтобы использовать измерение недель, необходимо переключить тип календаря в настройках времени на недели (Calendar Weeks), как указано в статье [Настройки календаря](time-calendar-settings.md).

![Пример функции BOWEEK](f-boweek-result-001.png)