SELECT CONCAT(c.Title, c.FirstName, ' ', c.MiddleName, ' ', c.LastName) AS CustomerNames
FROM Customer c
WHERE c.CustomerID IN (
	SELECT soh.CustomerID
	FROM SalesOrderHeader soh
	JOIN SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
	JOIN Product p ON sod.ProductID = p.ProductID
	WHERE p.Name LIKE '%bottom%'
)
INTERSECT
SELECT CONCAT(c.Title, c.FirstName, ' ', c.MiddleName, ' ', c.LastName) AS CustomerNames
FROM Customer c
WHERE c.CustomerID IN (
	SELECT soh.CustomerID
	FROM SalesOrderHeader soh
	JOIN SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
	JOIN Product p ON sod.ProductID = p.ProductID
	WHERE p.Name LIKE '%sleeve%'
);