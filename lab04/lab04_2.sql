-- Alternative ones are
SELECT pc1.ProductCategoryID, pc1.Name, COUNT(pc2.ProductCategoryID) AS NumberOfSubCategories
FROM ProductCategory pc1
LEFT JOIN ProductCategory pc2 ON pc1.ProductCategoryID = pc2.ParentProductCategoryID
GROUP BY pc1.ProductCategoryID, pc1.Name
ORDER BY pc1.ProductCategoryID
LIMIT 4
;

-- Alternative twos are
SELECT ProductCategoryID, Name, NumberOfSubCategories
FROM (
    SELECT 
        pc1.ProductCategoryID, 
        pc1.Name, 
        COUNT(pc2.ProductCategoryID) AS NumberOfSubCategories
    FROM
        ProductCategory pc1
    LEFT JOIN 
        ProductCategory pc2 ON pc1.ProductCategoryID = pc2.ParentProductCategoryID
    GROUP BY 
        pc1.ProductCategoryID, pc1.Name
        LIMIT 4
);