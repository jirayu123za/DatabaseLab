SELECT CONCAT(c.Title, c.FirstName, ' ', c.MiddleName, ' ', c.LastName) AS CustomerNames,
	(SELECT COUNT(*)
	 FROM SalesOrderHeader soh
	 WHERE soh.CustomerID = c.CustomerID) AS TotalOrders,
	(SELECT SUM(soh.TotalDue)
	 FROM SalesOrderHeader soh
	 WHERE soh.CustomerID = c.CustomerID) AS TotalAmountSpent
FROM Customer c
WHERE EXISTS (
	SELECT 1
	FROM SalesOrderHeader soh 
	WHERE soh.CustomerID = c.CustomerID
);