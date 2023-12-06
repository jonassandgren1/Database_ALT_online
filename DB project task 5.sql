-- Welcome text for the homepage
SELECT Long_vers AS Welcome_text 
FROM Description_text
WHERE Description_ID = 1;

-- List of the top level departments with fields needed for the homepage
SELECT d.Title AS Department, dt.Short_vers AS Homepage_description
FROM Department d
JOIN Description_text dt ON d.Description_ID = dt.Description_ID
WHERE d.Top_list = 1;

-- List of the featured products with fields needed for the homepage
SELECT * from Product
WHERE Featured_product = 1;

SELECT P.Product_title AS Product, CONCAT(pt.Price_after_tax, " kr") AS Price, dt.Short_vers AS Product_description
FROM Product P
JOIN Price_tax pt ON P.Price_ID = pt.Price_ID
JOIN Description_text dt ON P.Description_ID = dt.Description_ID
WHERE P.Featured_product = 1;

-- Given a product, list all keyword-related products
WITH Common_keywords AS (
SELECT p.Product_ID, p.Product_title AS Product, kw.Keyword_title AS Keyword
FROM Product p
JOIN Keyword kw ON p.Product_ID = kw.Product_ID
WHERE kw.Keyword_title = "LG")
SELECT c1.Product, c1.Keyword AS Common_keyword, c2.Product AS Related_products
FROM Common_keywords c1
JOIN Common_keywords c2 ON c1.Keyword = c2.Keyword AND c1.Product != c2.Product
WHERE c1.Product_ID = 1
ORDER BY c1.Product;

-- Given an department, list of all its products with their average rating
SELECT d.Title AS Department, P.Product_title AS Product, CONCAT(pt.Price_after_tax, " kr") AS Price, dt.Short_vers AS Product_description, avg(R.Rating) as Average_rating
FROM Product P
LEFT JOIN Department d ON P.Department_ID = d.Department_ID
LEFT JOIN Price_tax pt ON P.Price_ID = pt.Price_ID
LEFT JOIN Description_text dt ON P.Description_ID = dt.Description_ID
LEFT join Review R on P.Product_ID = R.Product_ID
WHERE P.Department_ID = 4
GROUP BY d.Title, P.Product_title, pt.Price_after_tax, dt.Short_vers;

-- List of all products on sale sorted by the discount percentage
SELECT P.Product_title AS Product, CONCAT(pt.Price_after_tax, " kr") AS Price, CONCAT(pt.Discount_percent, "%") AS Discount_percent, 
CONCAT((pt.Price_after_tax/((100 - pt.Discount_percent)/100) - pt.Price_after_tax), " kr") AS Total_discount
FROM Product P
JOIN Price_tax pt ON P.Price_ID = pt.Price_ID
WHERE pt.Discount_percent != 0
ORDER BY pt.Discount_percent DESC;

-- ALTER TABLE Product DROP INDEX Dep_index;
-- CREATE INDEX Dep_index
-- ON Department(Title);
-- ALTER TABLE Product DROP INDEX Product_index;

CREATE INDEX Product_index
ON Product(Featured_product, Product_ID);

-- CREATE INDEX Descr_index
-- ON Description_text(Description_ID, Short_vers);

-- CREATE INDEX Price_index
-- ON Price_tax(Price_ID, Price_after_tax);
