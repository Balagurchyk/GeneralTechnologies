// Вывести сред/стоимость товаров из категорий 1, 2, 5, у которых название начинается с буквы t

SELECT AVG(Price) AS avg_price FROM Products WHERE CategoryID IN (1,2,5) AND ProductName LIKE 't%'




// Посчитать стоимость заказа 10248

SELECT SUM(Price * Quantity) FROM OrderDetails
JOIN Products ON Products.ProductID = OrderDetails.ProductID
WHERE OrderID = 10248




// Вывести ко-во товаров с ценой от 10 до 250 EUR

SELECT COUNT(*) FROM Products WHERE Price BETWEEN 10 AND 250



// Вывести сумму, на которую было отправлено товаров клиентам в Germany

Не понял как соединить одновременно Orders и с Customers, и с OrderDetails, и с Products


