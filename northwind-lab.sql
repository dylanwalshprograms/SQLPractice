-- #1
SELECT * FROM customers;

-- #2
SELECT DISTINCT Country FROM customers;

-- #3
SELECT * FROM customers WHERE CustomerID LIKE 'BL%';

--#4
SELECT * FROM orders LIMIT 100;

-- #5
SELECT * FROM customers WHERE PostalCode IN (1010, 3012, 12209, 05023);

-- #6
SELECT * FROM orders WHERE ShipRegion IS NOT NULL;

-- #7
SELECT * FROM customers ORDER BY Country, City;

-- #8
UPDATE orders SET ShipRegion = 'EuroZone' WHERE ShipCountry = 'France'

-- #9
SELECT * FROM `order details` WHERE Quantity = 1;

-- #10
DELETE FROM `order details` WHERE Quantity = 1;

-- #11
SELECT MAX(Quantity) AS max, MIN(Quantity) AS min, AVG(Quantity) AS avg FROM `order details`; 

-- #12
SELECT OrderID, MAX(Quantity) AS max, MIN(Quantity) AS MIN, AVG(Quantity) as avg FROM `order details` GROUP BY OrderID;

-- #13
SELECT CustomerID FROM orders WHERE OrderID = 10290;

-- #14
SELECT * FROM orders
INNER JOIN customers ON customers.CustomerID = orders.CustomerID;
SELECT * FROM orders
RIGHT JOIN customers ON customers.CustomerID = orders.CustomerID;
SELECT * FROM orders
LEFT JOIN customers ON customers.CustomerID = orders.CustomerID;

-- #15
SELECT ShipCity, ShipCountry FROM orders
INNER JOIN employees ON orders.EmployeeID = employees.EmployeeID
WHERE employees.City = 'London';

-- # 16
SELECT ShipName FROM orders
INNER JOIN `order details` ON orders.OrderID = `order details`.OrderID
INNER JOIN products ON `order details`.ProductID = products.ProductID
WHERE products.Discontinued = 1;

--# 17
SELECT FirstName FROM northwind.employees
WHERE ReportsTo IS NULL;

-- #18
SELECT FirstName FROM northwind.employees
WHERE ReportsTo = 2;
