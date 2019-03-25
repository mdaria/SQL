--Задание: 7 (Serge I: 2004-09-08)
--Производство принтеров производитель A передал производителю Z. Выполнить соответствующее изменение.

UPDATE Product
SET maker = 'Z'
WHERE maker = 'A' AND type = 'Printer';
