SELECT c.CustomerID, c.FirstName, c.LastName
FROM Customer c
JOIN CustomerAddress ca on c.CustomerID = ca.CustomerID
JOIN Address a ON ca.AddressID = a.AddressID 
WHERE a.AddressLine2 is NOT NULL 
;