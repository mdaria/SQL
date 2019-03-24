--Задание: 32 (Serge I: 2003-02-17)
--Одной из характеристик корабля является половина куба калибра его главных орудий (mw). 
--С точностью до 2 десятичных знаков определите среднее значение mw для кораблей каждой страны, 
--у которой есть корабли в базе данных.

SELECT country, cast (avg(1.0 *power(bore,3)/2) AS DECIMAL(6,2)) mw
FROM
(
SELECT  country, name, bore
FROM Ships
JOIN Classes ON Classes.class=Ships.class
UNION 
SELECT country, ship, bore
FROM Outcomes
JOIN Classes ON Classes.class=Outcomes.ship
) AS tab
GROUP BY country
--Используется: join; group by; union; переименование столбцов (mw); преобразование типов   
--Комментарий: везде используется внутреннее соединение, поэтому всё ОК
