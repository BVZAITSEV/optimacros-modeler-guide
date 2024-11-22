---
uid: 'eoquarter'
title: 'EOQUARTER'
pdf: true
time_period: 'последний день квартала'
fname: 'EOQUARTER'
---
# EOQUARTER
{% include 'time-begin-end.txt' %}

## Синтаксис

EOQUARTER()  

EOQUARTER(Х) 

## Аргументы

- X: Выражение, возвращающее элемент измерения времени (time item), или выражение, возвращающее дату (Date). 

{% include 'bo-eo-time-period-arguments.txt' %} 

## Возвращаемое значение 

формат Date 

## Эквивалент в Excel

нет 

## Примеры

Используйте `EOQUARTER` для получения значения следующего элемента измерения кварталов:

```
PARENT(PARENT(DAY(EOQUARTER('Дата') + 1)))
```
Формат куба-приемника - измерения кварталов. Чтобы использовать измерение кварталов, необходимо отметить **Отображать итоги кварталов** в настройках времени, как указано в статье [Настройки календаря](time-calendar-settings.md).


![Пример функции EOQUARTER](f-eoquarter-result-001.png)