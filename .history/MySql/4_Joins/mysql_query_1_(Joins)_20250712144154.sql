USE;
USE coffee_store;
SHOW CREATE TABLE orders;

-- CREATE TABLE orders (
--     id INT,
--     product_id INT,
--     customer_id INT,
--     order_time DATETIME
-- );
SELECT * FROM orders;

SELECT * FROM products;

-- CREATE TABLE customers (
--     id INT,
--     first_name varchar(30),
--     last_name varchar(30),
--     gender ENUM('M', 'F'),
--     phone_number varchar(11)
-- );
SELECT * FROM customers;

SELECT products.name, orders.order_time FROM orders o
INNER JOIN products p ON o.product_id = p.id;

SELECT p.name, o.order_time FROM orders o
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


