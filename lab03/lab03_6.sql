SELECT p.Name, p.Color, p.ListPrice, pc.Name as CategoryName
FROM Product p
JOIN ProductCategory pc ON p.ProductCategoryID = pc.ProductCategoryID
WHERE p.Color IN('Black', 'Blue')
	AND pc.Name LIKE '%Bike%'
ORDER BY p.ListPrice
;