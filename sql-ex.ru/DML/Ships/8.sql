--Задание: 8 (Serge I: 2004-09-08)
--Удалите из таблицы Ships все корабли, потопленные в сражениях.

DELETE FROM Ships
FROM Ships INNER JOIN Outcomes ON Ships.name = Outcomes.ship
WHERE result = 'sunk';
