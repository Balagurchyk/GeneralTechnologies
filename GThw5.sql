
-- Вывести заказы со стоимостью от 5000 EUR (проекция: номер_заказа, стоимость_заказа)

SELECT OrderDetails.OrderID, SUM(OrderDetails.Quantity * Products.Price) AS OrderCost FROM OrderDetails
JOIN Products On Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductID
HAVING OrderCost >= 5000
ORDER BY OrderID


------------------------------------------------------------------------------------------------------------

-- Вывести страны, в которые было отправлено 3 и более заказов

SELECT DISTINCT Country FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Orders.CustomerID
HAVING CustomerID >= 3


------------------------------------------------------------------------------------------------------------

-- Вывести ТОП-10 самых продаваемых товаров (проекция: название_товара, ко_во_проданных_единиц)

SELECT ProductName, COUNT(Quantity) AS QuantitySold FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY ProductName
ORDER BY QuantitySold DESC
LIMIT 10


------------------------------------------------------------------------------------------------------------

-- Расчитать З/П менеджеров (ставка - 5% от суммы проданных заказов)

SELECT SUM((Price * Quantity)*0.05) AS SalaryEmployees FROM OrderDetails
JOIN Products ON Products.ProductID = OrderDetails.ProductID


------------------------------------------------------------------------------------------------------------

-- Дополните схему БД "онлайн-шахматы" функционалом групповых чатов

-- https://dbdiagram.io/d/online_chessmate_balagurchyk-65b3a076ac844320aec992e8