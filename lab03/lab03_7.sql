SELECT a.AddressLine2 
FROM CustomerAddress ca 
JOIN Address a ON ca.AddressID = a.AddressID
WHERE a.AddressLine2 IS NOT NULL
;