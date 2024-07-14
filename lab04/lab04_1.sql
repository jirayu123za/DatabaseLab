SELECT a.City, a.CountryRegion, COUNT(c.CustomerID) AS TotalCustomers
FROM Customer c
JOIN CustomerAddress ca ON c.CustomerID = ca.CustomerID
JOIN Address a ON ca.AddressID = a.AddressID
GROUP BY a.City, a.CountryRegion
ORDER BY TotalCustomers DESC
LIMIT 4
;