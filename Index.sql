

select d.Title AS Department, dt.Short_vers AS Homepage_description
FROM Department d
JOIN Description_text dt ON d.Description_ID = dt.Description_ID
WHERE d.Top_list = 1;

EXPLAIN SELECT d.Title AS Department, dt.Short_vers AS Homepage_description
FROM Department d USE INDEX (Dep_index)
JOIN Description_text dt ON d.Description_ID = dt.Description_ID
WHERE d.Top_list = 1 and Title = "TV and Sound";

EXPLAIN SELECT P.Product_title AS Product, CONCAT(pt.Price_after_tax, " kr") AS Price, dt.Short_vers AS Product_description
FROM Product P
JOIN Price_tax pt ON P.Price_ID = pt.Price_ID
JOIN Description_text dt ON P.Description_ID = dt.Description_ID
WHERE P.Featured_product = 0 ;

EXPLAIN SELECT P.Product_title AS Product, CONCAT(pt.Price_after_tax, " kr") AS Price, dt.Short_vers AS Product_description
FROM Product P
JOIN Price_tax pt ON P.Price_ID = pt.Price_ID
JOIN Description_text dt ON P.Description_ID = dt.Description_ID
WHERE P.Featured_product = 1 ;