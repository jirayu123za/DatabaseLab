SELECT c.CustomerID, 
CONCAT(c.Title, ' ', c.FirstName, ' ', c.MiddleName, ' ', c.LastName) as customerName,
		a.AddressLine1, a.AddressLine2, a.City, a.StateProvince, a.CountryRegion 
FROM Customer c 
JOIN CustomerAddress ca ON c.CustomerID = ca.CustomerID
JOIN Address a ON ca.AddressID = a.AddressID 
ORDER BY a.CountryRegion, c.LastName, c.FirstName
;