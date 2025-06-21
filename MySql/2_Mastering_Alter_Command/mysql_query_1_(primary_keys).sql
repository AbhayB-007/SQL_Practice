CREATE DATABASE test;
USE test;

CREATE TABLE addresses (
	id INT,
    house_number INT,
    city VARCHAR(20),
    postcode VARCHAR(7)
);

CREATE TABLE people (
	id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    address_id INT
);

CREATE TABLE pets (
	id INT,
    name VARCHAR(20),
    species VARCHAR(20),
    owner_id INT
);

show tables;

DESCRIBE addresses;
DESCRIBE people;
DESCRIBE pets;

-- SQL to add a primary key to a table.
-- also it automatically make the column not null if its nullable
ALTER TABLE addresses
ADD PRIMARY KEY (id);

-- SQL to remove a primary key from a table.
ALTER TABLE addresses
DROP PRIMARY KEY;

-- make id column nullable
ALTER TABLE addresses
MODIFY id int null;















