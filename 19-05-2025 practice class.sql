CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (order_id, customer_name, email, order_date, total_amount) VALUES
(101, 'John Doe', 'john.doe@gmail.com', '2024-12-10', 250.00),
(102, 'Alice Smith', 'alice@yahoo.com', '2024-12-15', 300.00),
(103, 'John Doe', 'john.doe@gmail.com', '2025-01-20', 450.00),
(104, 'Bob Lee', 'bob.lee@hotmail.com', '2025-02-01', 150.00),
(105, 'Alice Smith', 'alice@yahoo.com', '2025-02-10', 200.00),
(106, 'Jane Miller', 'jane.miller@gmail.com', '2025-03-05', 400.00),
(107, 'Sam Wilson', 'sam.wilson@gmail.com', '2025-01-15', 180.00),
(108, 'Emily Davis', 'emily_davis@yahoo.com', '2025-02-18', 220.00),
(109, 'Michael Chen', 'michael.chen@outlook.com', '2025-03-22', 340.00),
(110, 'Rachel Green', 'rachel.green@gmail.com', '2025-03-28', 190.00),
(111, 'John Doe', 'john.doe@gmail.com', '2025-04-05', 310.00),
(112, 'Alice Smith', 'alice@yahoo.com', '2025-04-12', 270.00),
(113, 'Jane Miller', 'jane.miller@gmail.com', '2025-05-03', 380.00),
(114, 'Sam Wilson', 'sam.wilson@gmail.com', '2025-06-14', 500.00),
(115, 'Bob Lee', 'bob.lee@hotmail.com', '2025-07-01', 420.00),
(116, 'Michael Chen', 'michael.chen@outlook.com', '2025-08-19', 610.00),
(117, 'Emily Davis', 'emily_davis@yahoo.com', '2025-09-10', 275.00),
(118, 'Rachel Green', 'rachel.green@gmail.com', '2025-10-05', 195.00),
(119, 'John Doe', 'john.doe@gmail.com', '2025-11-21', 330.00),
(120, 'Jane Miller', 'jane.miller@gmail.com', '2025-12-25', 490.00);

select * from orders;


-- How many orders has each customer placed?
select customer_name,count(order_id) from orders group by customer_name;

-- Show each customer's name and the username part of their email (before the @).
select customer_name, substr(email, 1 , instr(email, "@")-1 ) from orders;    
-- instr() data ko table se nikalne ka kaam krta h 
-- How many orders were placed in each month of 2025?
select month(order_date) , count(order_id) from orders where year(order_date) = 2025
group by month(order_date);

-- Count how many orders come from each email domain (e.g., gmail.com, yahoo.com).
select substr(email, 1 , instr(email, "@")-1 ) as email_domain, count(*) as total_orders from orders group by email_domain;

-- For each customer, show the total amount spent per year.
select customer_name, year(order_date),month(order_date), count(order_id), sum(total_amount) from orders group by customer_name, 
year(order_date), month(order_date);

-- What is the most recent order date for each customer?
select max(order_date) from orders;

-- Winter (Dec-Feb), Spring (Mar-May), Summer (Jun-Aug), Autumn (Sep-Nov)

SELECT 
    CASE
        WHEN EXTRACT(MONTH FROM order_date) IN (12, 1, 2) THEN 'Winter'
        WHEN EXTRACT(MONTH FROM order_date) IN (3, 4, 5) THEN 'Spring'
        WHEN EXTRACT(MONTH FROM order_date) IN (6, 7, 8) THEN 'Summer'
        WHEN EXTRACT(MONTH FROM order_date) IN (9, 10, 11) THEN 'Autumn'
    END AS season,
    COUNT(*) AS total_orders
FROM 
    orders
WHERE 
    EXTRACT(YEAR FROM order_date) = 2025
GROUP BY 
    season
ORDER BY 
    season;

