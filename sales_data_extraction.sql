-- SQL Retail sales analysis
-- CREATE DATABASE data_cleaning;

-- Create Table|
CREATE TABLE retail_sales(
	transactions_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(15),
    age INT,
    category VARCHAR (15),
    quantity INT,
    price_per_unit FLOAT,
    cogs FLOAT,
    total_sale FLOAT
    
)
-- return row in case null value is found
SELECT * FROM retail_sales
WHERE
	transactions_id IS NULL
    or
    sale_date IS NULL
    or
    sale_time IS NULL
    or
    customer_id IS NULL
    or
    gender IS NULL
    or
    age IS NULL
    or
    category IS NULL
    or
    quantity IS NULL
    or
    price_per_unit IS NULL
    or
    cogs IS NULL
    or
    total_sale IS NULL
    ;
    
    
    -- delete any null values in the table.
    DELETE FROM retail_sales
    WHERE
	transactions_id IS NULL
    or
    sale_date IS NULL
    or
    sale_time IS NULL
    or
    customer_id IS NULL
    or
    gender IS NULL
    or
    age IS NULL
    or
    category IS NULL
    or
    quantity IS NULL
    or
    price_per_unit IS NULL
    or
    cogs IS NULL
    or
    total_sale IS NULL
    ;
    
    -- data exploration
    
    -- how many sales have we got
    SELECT COUNT(*) as total_sale
    FROM retail_sales
    ;
    
    -- writing a sql query to find the total number of transactions made by each gender in each category.
    SELECT category, gender, count(*) AS total_trans
    FROM retail_sales
    GROUP BY category, gender
    order by total_trans DESC
    ;
    
    -- write an SQL query to claculate the average sale for each month. Find out the best selling month in each year
WITH cte AS (
SELECT 
    Year(sale_date) AS `year`,
    MONTH(sale_date) AS `month`,
    AVG(total_sale) AS total_sale,
    RANK() OVER(PARTITION BY Year(sale_date) ORDER BY AVG(total_sale) DESC) AS rnk
FROM retail_sales
GROUP BY  1, 2 
) SELECT *
FROM cte
WHERE rnk = 1
;

-- query to find the top 5 customers based on the highest total sales.
SELECT customer_id, SUM(total_sale)
FROM retail_sales
group by customer_id
ORDER BY 2 DESC
LIMIT 5
;

-- create shifts based on the date and number of orders on each shift.
SELECT 
	CASE WHEN HOUR(sale_time) < 12 THEN 'Morning'
    WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
    ELSE 'Evening'
    END AS shift,  COUNT(total_sale) 
FROM retail_sales
GROUP BY shift
;

SELECT *
FROM retail_sales
;
    
