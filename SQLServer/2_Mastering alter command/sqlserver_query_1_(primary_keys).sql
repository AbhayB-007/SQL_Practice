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

select * from sys.tables;

-- SQL  to add a primary key to a table.
-- primary should be of not null type
ALTER TABLE addresses
ALTER COLUMN id INT NOT NULL;

ALTER TABLE addresses
ADD CONSTRAINT PK_people_id PRIMARY KEY (id);

-- SQL to remove a primary key from a table.
ALTER TABLE addresses 
DROP CONSTRAINT PK_people_id;







