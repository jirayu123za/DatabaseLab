SELECT
	AVG(soh.TotalDue) AS "Average Due",
	CONCAT(c.FirstName, ' ', c.LastName) AS "Name"
FROM Customer c
JOIN SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
GROUP BY c.CustomerID
ORDER BY "Average Due" DESC
;