SELECT soh.SalesOrderNumber, COUNT(sod.ProductID) as NumberOfProducts
FROM SalesOrderHeader soh
JOIN SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY soh.SalesOrderID, soh.SalesOrderNumber
HAVING AVG(sod.UnitPrice) > 300
;