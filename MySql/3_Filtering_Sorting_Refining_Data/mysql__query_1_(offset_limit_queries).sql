use;
use test;

-- create a table named customers
create table customers (
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(5),
    phone_number INT
);

DESCRIBE customers;

-- insert 10 rows into the customers table
INSERT INTO customers (id, first_name, last_name, gender, phone_number) VALUES (1, 'Abhay', 'Bindal', 'M', 987654321);
INSERT INTO customers (id, first_name, last_name, gender, phone_number) VALUES (2, 'Priya', 'Sharma', 'F', 987123456);
INSERT INTO customers (id, first_name, last_name, gender, phone_number) VALUES (3, 'Rahul', 'Verma', 'M', 912345678);
INSERT INTO customers (id, first_name, last_name, gender, phone_number) VALUES (4, 'Ananya', 'Singh', 'F', 976543210);
INSERT INTO customers (id, first_name, last_name, gender, phone_number) VALUES (5, 'Rohan', 'Kapoor', 'M', 965432178);
INSERT INTO customers (id, first_name, last_name, gender, phone_number) VALUES (6, 'Simran', 'Kaur', 'F', 998877665);
INSERT INTO customers (id, first_name, last_name, gender, phone_number) VALUES (7, 'Amit', 'Mishra', 'M', 987612345);
INSERT INTO customers (id, first_name, last_name, gender, phone_number) VALUES (8, 'Meera', 'Joshi', 'F', 912398765);
INSERT INTO customers (id, first_name, last_name, gender, phone_number) VALUES (9, 'Vikram', 'Chopra', 'M', 987645321);
INSERT INTO customers (id, first_name, last_name, gender, phone_number) VALUES (10, 'Neha', 'Gupta', 'F', 976541239);


SELECT * FROM customers order by id desc 
LIMIT 1 
OFFSET 3;