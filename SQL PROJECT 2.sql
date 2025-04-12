CREATE DATABASE PROJECT;
USE PROJECT;
SELECT 
    *
FROM
    customers;

select customer_name,orders.amount from customers left join orders on customers.customer_id=orders.customer_id where amount =626;
SELECT 
    c.customer_name, 
    SUM(o.amount) AS total_spent
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_name
ORDER BY 
    total_spent DESC;
SELECT 
    c.customer_name
FROM 
    customers c
LEFT JOIN 
    orders o ON c.customer_id = o.customer_id
WHERE 
    o.order_id IS NULL;
SELECT 
    c.customer_name, 
    COUNT(o.order_id) AS order_count
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_name
ORDER BY 
    order_count DESC
LIMIT 5;
