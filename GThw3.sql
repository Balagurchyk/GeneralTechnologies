// 1.Вывести данные о товарах (название товара, ценасоскидкой_0.5%)

SELECT
	ProductName,
	Price * .995 AS Price_down
FROM Products



// 2.Вывести заказы клиентов не из France  (номерзаказа, имяклиента, страна_клиента)

SELECT Orders.OrderID, Customers.CustomerName, Customers.Country
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.Country != 'France'



// 3.Вывести название и стоимость в USD одного самого дорогого проданного товара (не используя агрегацию)

SELECT 	ProductName,
Price * 1.08 AS Price_usd
FROM Products
ORDER BY Price DESC 
LIMIT 1



// 4.Вывести список стран, которые поставляют морепродукты

SELECT DISTINCT Suppliers.Country
FROM Suppliers
JOIN Products ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE CategoryName = 'Seafood'



// 5.Вывести два самых дорогих товара из категории Beverages из USA

SELECT *
FROM Products
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
JOIN Categories ON Categories.CategoryID = Products.CategoryID
WHERE CategoryName = 'Beverages' AND Country = 'USA'
ORDER BY Price DESC 
LIMIT 2