---
uid: 'select-by-cubes-nonblank'
title: 'SELECT по кубам с параметрами FIRSTNONBLANK и LASTNONBLANK'
pdf: true
---
# SELECT по кубам с параметрами FIRSTNONBLANK и LASTNONBLANK 

Возвращает в куб по всем измерениям мультикуба первое непустое (FIRSTNONBLANK) или последнее непустое (LASTNONBLANK) значение из куба X по измерению Y. 

## Синтаксис

SELECT(X, Y: FIRSTNONBLANK()) 

SELECT(X, Y: LASTNONBLANK ()) 

## Аргументы 

- X: куб в формате Number, Date, Time Period, Boolean, List, Text, Versions, Cube Subset
- Y: измерение, используемое в мультикубе (формат List, Time Period, Versions, Cube Subset и их выборки) с параметром FIRSTNONBLANK/ LASTNONBLANK. 

## Возвращаемое значение 

Соответствует формату данных, используемых аргументом Х 

## Пример

![Примеры функции SELECT по кубам с параметрами FIRSTNONBLANK и LASTNONBLANK ](f-select-by-cubes-nonblank.png)

