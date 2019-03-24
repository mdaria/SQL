--Задание: 46 (Serge I: 2003-02-14)
--Для каждого корабля, участвовавшего в сражении при Гвадалканале (Guadalcanal), вывести название, водоизмещение и число орудий.

--Моё решение:

WITH tab AS (SELECT Outcomes.ship, Classes.displacement, Classes.numGuns 
FROM Classes RIGHT JOIN
 Outcomes ON Classes.class = Outcomes.ship 
WHERE Outcomes.battle = 'Guadalcanal' AND Outcomes.ship IN (SELECT class FROM Classes)
UNION
SELECT s.name, c.displacement, c.numGuns
FROM Ships s LEFT JOIN 
 Classes c ON s.class=c.class)

SELECT Outcomes.ship, displacement, numGuns
FROM Outcomes LEFT JOIN tab
ON tab.ship = outcomes.ship
WHERE battle = 'Guadalcanal'
--Комментарий: проблема была в том, что я забыла 
--добавить условие Outcomes.ship IN (SELECT class FROM Classes) в первую часть таблицы tab, вследствие
--чего все корабли, не являющиеся головными, появлялись в первой части tab с параметрами NULL NULL

--Замечание: следует посмотреть другие решения на форуме.
