SELECT DISTINCT CONCAT(c.Title, c.FirstName, ' ', c.MiddleName, ' ', c.LastName) AS CustomerNames
FROM Customer c
JOIN SalesOrderHeader soh_bottom ON c.CustomerID = soh_bottom.CustomerID
JOIN SalesOrderDetail sod_bottom ON soh_bottom.SalesOrderID = sod_bottom.SalesOrderID
JOIN Product p_bottom ON sod_bottom.ProductID = p_bottom.ProductID
JOIN SalesOrderHeader soh_sleeve ON c.CustomerID = soh_sleeve.CustomerID
JOIN SalesOrderDetail sod_sleeve ON soh_sleeve.SalesOrderID = sod_sleeve.SalesOrderID
JOIN Product p_sleeve ON sod_sleeve.ProductID = p_sleeve.ProductID
WHERE p_bottom.Name LIKE '%bottom%'
AND p_sleeve.Name LIKE '%sleeve%'
;