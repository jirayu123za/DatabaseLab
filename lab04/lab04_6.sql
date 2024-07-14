SELECT soh.SalesOrderID, CONCAT(c.Title, c.FirstName, ' ', c.MiddleName, ' ', c.LastName) AS CustomerNames, soh.OrderDate
FROM SalesOrderHeader soh
JOIN Customer c ON soh.CustomerID = c.CustomerID
WHERE soh.SalesOrderID IN (
	SELECT SalesOrderID
	FROM SalesOrderDetail
	GROUP BY SalesOrderID
	HAVING COUNT(ProductID) < 4 
)
EXCEPT
SELECT soh.SalesOrderID, CONCAT(c.Title, c.FirstName, ' ', c.MiddleName, ' ', c.LastName) AS CustomerNames, soh.OrderDate
FROM SalesOrderHeader soh
JOIN Customer c ON soh.CustomerID = c.CustomerID
JOIN SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Product p ON sod.ProductID = p.ProductID
WHERE p.Name = 'ML Road Frame-W - Yellow, 48'
;