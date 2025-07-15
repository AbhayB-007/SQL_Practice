-- Constraints in MySQL

-- Types of Constraints (both in MySQL & SQL Server)

--1). PRIMARY KEY --> Uniquely identifies each record in a table. Only one per table.
    -- Example
    --1). 
    CREATE TABLE customers ( 
        id INT PRIMARY KEY, 
        name VARCHAR(50) 
    );
    --2).
    CREATE TABLE orders (
    order_id INT,
    product_id INT,
    PRIMARY KEY (order_id, product_id)
    );

--2). UNIQUE --> Ensures all values in a column (or group of columns) are unique.
    -- Example
    --1).
    CREATE TABLE users (
    id INT PRIMARY KEY,
    email VARCHAR(50) UNIQUE
    );

    --2). Add later
    ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);

--3). FOREIGN KEY --> Ensures the value in a column exists in another table (referential integrity).
--4). CHECK (from MySQL 8.0v onwards) --> Ensures values in a column meet a specific condition.
--5). NOT NULL --> Ensures a column cannot have a NULL value.
--6). DEFAULT --> Assigns a default value to a column when no value is provided.

















