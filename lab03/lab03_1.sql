SELECT DISTINCT CONCAT(c.FirstName, ' ', c.LastName) as listName
FROM Customer c
JOIN SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
JOIN SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Product p ON sod.ProductID = p.ProductID
WHERE p.StandardCost > 800;
;
