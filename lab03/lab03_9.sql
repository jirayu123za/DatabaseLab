SELECT p.ProductID, p.Name
FROM Product p
WHERE EXISTS (
	SELECT 1
	FROM SalesOrderDetail od
	WHERE od.ProductID = p.ProductID
);