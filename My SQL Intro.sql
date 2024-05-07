-- Using the bestbuy database:
USE bestbuy;
-- find all products
SELECT * FROM Products;

-- find all products that cost $1400
SELECT * FROM Products WHERE Price = 1400;

-- find all products that cost $11.99 or $13.99
SELECT * FROM Products WHERE Price IN (11.99, 13.99);

-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM Products WHERE NOT Price = 11.99;

-- find all products and sort them by price from greatest to least
SELECT * FROM Products ORDER BY Price DESC;

-- find all employees who don't have a middle initial
SELECT * FROM employees WHERE MiddleInitial IS NULL OR MiddleInitial=''; 

-- find distinct product prices
SELECT DISTINCT price FROM products;

-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM employees WHERE FirstName LIKE 'j%';

-- find all Macbooks
Select * FROM products where Name Like '%Macbook%';

-- find all products that are on sale
SELECT * FROM products WHERE OnSale = TRUE;

-- find the average price of all products
SELECT Avg(price) FROM products;

-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM employees WHERE (MiddleInitial IS NULL OR MiddleInitial ='') AND Title = 'Geek Squad';

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * FROM products WHERE StockLevel BETWEEN 500 AND 1200 ORDER BY price ASC;