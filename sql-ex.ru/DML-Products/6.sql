--Задание: 6 (Serge I: 2004-09-08)
--Удалить все блокноты, выпускаемые производителями, которые не выпускают принтеры.

DELETE FROM Laptop
FROM Laptop l INNER JOIN 
 Product pr ON l.model = pr.model 
WHERE maker NOT IN (SELECT maker FROM Product WHERE type = 'Printer')

--Комментарий: Используется дополнительное предложение FROM
