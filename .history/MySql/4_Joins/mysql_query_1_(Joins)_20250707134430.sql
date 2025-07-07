USE;
USE coffee_store;
use test;

SELECT * FROM orders;

SELECT * FROM products;

CREATE TABLE customers (
    id` int NOT NULL,
    first_name` varchar(50) NOT NULL,
    last_name` varchar(50) NOT NULL,
    gender` ENUM('M', 'F'),
    phone_number varchar(11)
);
SELECT * FROM customers;

SELECT products.name, orders.order_time
FROM orders
    INNER JOIN products ON orders.product_id = products.id;

SELECT p.name, o.order_time
FROM orders AS o
    JOIN products p ON o.product_id = p.id;

SELECT p.name, o.order_time
FROM orders AS o
    JOIN products p ON o.product_id = p.id
WHERE
    o.product_id = 5
ORDER BY o.order_time;

-- Inner join syntax
-- SELECT <table name>.<column name>, ... FROM <table 1>
-- JOIN <table 2> ON <table 1>.<column name> = <table 2>.<column name>
-- WHERE clause, if needed
-- ORDER BY clause, if needed;


