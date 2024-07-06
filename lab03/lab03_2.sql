SELECT DISTINCT CONCAT(c.FirstName, ' ', c.LastName) as listName
FROM Customer c, SalesOrderHeader soh, SalesOrderDetail sod, Product p
WHERE c.CustomerID  = soh.CustomerID 
AND soh.SalesOrderID = sod.SalesOrderID 
AND sod.ProductID = p.ProductID
AND p.StandardCost  > 800
;
