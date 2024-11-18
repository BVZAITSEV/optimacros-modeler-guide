---
uid: 'boquarter'
title: 'BOQUARTER'
pdf: true
time_period: 'первый день квартала'
fname: 'BOQUARTER'
---
# BOQUARTER
{% include 'time-begin-end.txt' %}

## Синтаксис

BOQUARTER()  

BOQUARTER(Х) 

## Аргументы
- X: Выражение, возвращающее элемент измерения времени (time item), или выражение, возвращающее дату (Date). 

{% include 'bo-eo-time-period-arguments.txt' %} 

## Возвращаемое значение 

формат Date 

## Эквивалент в Excel

нет 

## Примеры

Используйте `BOQUARTER` для получения значения предыдущего элемента измерения кварталов:

```
PARENT(PARENT(DAY(BOQUARTER('Дата') - 1)))
```
Формат куба-приемника - измерения кварталов. Чтобы использовать измерение кварталов, необходимо отметить **Отображать итоги кварталов** в настройках времени, как указано в статье [Настройки календаря](time-calendar-settings.md).


![Пример функции BOQUARTER](f-boquarter-result-001.png)