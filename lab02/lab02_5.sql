SELECT p.Name, pc.Name
FROM Product p
JOIN ProductCategory pc ON p.ProductCategoryID = pc.ProductCategoryID
WHERE p.Name LIKE '%' || pc.Name || '%'
;