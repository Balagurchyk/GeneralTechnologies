// 1.Вывести предпоследний заказ

SELECT * FROM Orders ORDER BY OrderID DESC LIMIT 1 OFFSET 1



// 2.Вывести пять самых старых заказов

SELECT * FROM Orders ORDER BY OrderID LIMIT 5       //ORDER BY OrderID - можно было и не писать?)



// 3.Вывести номера телефонов поставщиков, кроме тех, что из UK и Brazil

SELECT Phone FROM Suppliers WHERE NOT Country IN ('UK','Brazil')



// 4.Вывести товары из категорий 4 и 5 с ценой до 250 EUR (вкл.)

SELECT * FROM Products WHERE CategoryID IN (4, 5) AND Price <=250



// 5.Дайте ответ на вопрос, зачем нужна проекция в БД

Проекция позволяет оптимизировать работу с данными, улучшая производительность, 
уменьшая использование ресурсов и обеспечивая более эффективную обработку данных