SELECT pc.Name as CategoryName, 
	MAX(p.ListPrice) as MostExpensivePrice
FROM ProductCategory pc
INNER JOIN Product p 
ON pc.ProductCategoryID = p.ProductCategoryID
GROUP BY pc.Name
;