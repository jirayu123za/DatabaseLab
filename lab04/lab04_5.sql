SELECT Name, Color, ListPrice, CategoryName
FROM (
	SELECT p.Name, p.Color, p.ListPrice, pc.Name AS CategoryName
	FROM Product p
	INNER JOIN ProductCategory pc ON p.ProductCategoryID = pc.ProductCategoryID
	WHERE p.Color = 'Black' 
	AND pc.Name LIKE '%Bikes%'
UNION
	SELECT p.Name, p.Color, p.ListPrice, pc.Name AS CategoryName
	FROM Product p
	INNER JOIN ProductCategory pc ON p.ProductCategoryID = pc.ProductCategoryID
	WHERE p.Color = 'Blue' 
	AND pc.Name LIKE '%Bikes%'
)
ORDER BY ListPrice
;