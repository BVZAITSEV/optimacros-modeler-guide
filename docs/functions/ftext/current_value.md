---
uid: 'current_value'
title: 'CURRENT_VALUE'
pdf: true
---
# CURRENT_VALUE
Возвращает значение текущей ячейки куба. 

## Синтаксис

CURRENT_VALUE 

## Возвращаемое значение 

совпадает с форматом значения куба, в контексте которого используется формула. 

## Использование 

- в функциях [TEXTSUM](textsum.md) и [TEXTSUMIF](textsumif.md)
- в CSV экспорте 

## Пример

```
TEXTSUM('Источник'.'Продукт', LIMIT=16, DISTINCT, VALUE=`CURRENT_VALUE & "oooooo"`)
```

!Пример функции CURRENT_VALUE](f-current_value-result-001.png)