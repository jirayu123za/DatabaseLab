SELECT c.CustomerID , c.FirstName, c.LastName
FROM Customer c
WHERE EXISTS (
	SELECT 1
	FROM SalesOrderHeader soh
	JOIN SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
	WHERE soh.CustomerID = c.CustomerID
	AND sod.OrderQty > 17
);