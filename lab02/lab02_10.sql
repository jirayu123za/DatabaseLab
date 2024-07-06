SELECT P.ListPrice, P.ListPrice * 1.10 AS Updated_Price, C.Name AS Category_Name, P.ProductNumber, P.Color
FROM Product P, ProductCategory C
WHERE P.ProductCategoryID = C.ProductCategoryID
AND C.Name LIKE '%Bikes%'
;