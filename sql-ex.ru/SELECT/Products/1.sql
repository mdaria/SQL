--Задание: 1 (Serge I: 2002-09-30)
--Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd

SELECT DISTINCT model, speed, hd
FROM PC
WHERE price < 500;
