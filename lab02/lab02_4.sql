SELECT DISTINCT CONCAT(Title, ' ', FirstName, ' ', MiddleName, ' ', LastName) as names
FROM Customer c 
JOIN SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
WHERE c.FirstName LIKE 'J%'
AND soh.SubTotal > 3500
;