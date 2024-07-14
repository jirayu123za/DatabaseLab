SELECT ca.CustomerID, ca.AddressType, a.AddressLine1
FROM CustomerAddress ca
JOIN Address a ON ca.AddressID = a.AddressID
WHERE ca.CustomerID IN (
	SELECT CustomerID
	FROM CustomerAddress
	GROUP BY CustomerID
	HAVING COUNT(AddressID) > 1 
);