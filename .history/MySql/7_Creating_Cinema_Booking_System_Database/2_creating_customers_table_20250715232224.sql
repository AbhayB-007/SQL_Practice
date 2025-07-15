USE cinema_booking_system;

CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL UNIQUE
);
DROP TABLE customers;

SHOW TABLES;

SELECT * FROM customers;

DESCRIBE customers;
