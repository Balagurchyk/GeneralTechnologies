// 1. Приведите десять типовых бизнес-процессов для предметной области ВИДЕО-ХОСТИНГ (Youtube),
// а также их соответствие по CRUD.

//Загрузка видео:                         Create.
//Просмотр видео:                         Read.
//Комментирование видео:                  Create.
//Оценка видео:                           Create.
//Добавление в плейлист:                  Create & Update.
//Редактирование видеоинформации:         Update.
//Удаление видео:                         Delete.
//Управление каналом:                     Create/Read/Update/Delete.
//Монетизация контента:                   Update.
//Анализ статистики просмотров:           Read.


//2. Вывести название и стоимость товаров от 20 до 150 EUR 

SELECT ProductName, Price
FROM Products
WHERE   Price >= 20
	AND
	Price <= 150


//3. Вывести страны поставщиков, кроме тех, что из USA

SELECT DISTINCT Country
FROM Suppliers
WHERE Country != 'USA'


//4. Вывести перевозчика с ID 1

SELECT * 
FROM Shippers
WHERE ShipperID =1


//5. Вывести контактные имена клиентов, кроме тех, что из France и USA

SELECT ContactName
FROM Customers
WHERE Country != 'France'
AND Country != 'USA'


//6. Вывести страну, город и адрес всех поставщиков, кроме тех, что из Japan и Brazil

SELECT Country, City, Address
FROM Suppliers
WHERE Country != 'Japan'
AND Country != 'Brasil'
 