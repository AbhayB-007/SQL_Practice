-- creating a database
create database test_db;

-- using the created database
use test_db;

-- to get all databases names
select name from sys.databases;


-- to get all tables names
select name from sys.tables;

-- delete a database
drop database test_db;

-- DDL commands
-- create -> create a database, and its tables, columns and indexes.
-- alter -> alter the structure of the database objects :- add or remove columns, indexes, etc.
-- drop -> delete tables, indexes and even the entire database.
-- rename -> rename a table.
-- truncate -> clear out the contents of a table. effectively the same as deleting and re-creating the table.

-- DML commands
-- select - Query the database to reterive rows of data.
-- insert - insert data into a table.
-- update - change the data in columns of a table (or tables).
-- delete - delete rows in a table (or tables).


-- Datatypes in MySQL and SQL Server
-- | **Category**            | **MySQL Data Types**                                                                                                      | **SQL Server Data Types**                                                                                   |
-- | :---------------------- | :------------------------------------------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------- |
-- | **Integer Types**       | `TINYINT` (1 byte),`SMALLINT` (2 bytes),`MEDIUMINT` (3 bytes),`INT` or `INTEGER` (4 bytes),`BIGINT` (8 bytes)             | `TINYINT` (1 byte),`SMALLINT` (2 bytes),`INT` or `INTEGER` (4 bytes),`BIGINT` (8 bytes)                     |
-- | **Decimal/Fixed-Point** | `DECIMAL(M,D)`,`NUMERIC(M,D)`                                                                                             |`DECIMAL(p,s)`,`NUMERIC(p,s)`                                                                                |
-- | **Floating-Point**      | `FLOAT(M,D)`,`DOUBLE(M,D)` or `REAL`                                                                                      | `FLOAT` (Approx. 7 decimal digits for `FLOAT(24)`, 15 for `FLOAT(53)`),`REAL`                               |
-- | **Date/Time**           | `DATE`,`DATETIME`,`TIMESTAMP`,`TIME`,`YEAR`                                                                               | `DATE`,`DATETIME`,`SMALLDATETIME`,`TIME`,`DATETIME2`,`DATETIMEOFFSET`                                       |
-- | **Character/String**    | `CHAR(n)`,`VARCHAR(n)`,`TEXT`,`TINYTEXT`,`MEDIUMTEXT`,`LONGTEXT`                                                          | `CHAR(n)`,`VARCHAR(n)`,`TEXT` *(deprecated)*,`NCHAR(n)`,`NVARCHAR(n)`,`NTEXT` *(deprecated)*                |
-- | **Binary Data**         | `BINARY(n)`,`VARBINARY(n)`,`TINYBLOB`,`BLOB`,`MEDIUMBLOB`,`LONGBLOB`                                                      | `BINARY(n)`,`VARBINARY(n)`,`IMAGE` *(deprecated)*                                                           |
-- | **Boolean**             | `BOOLEAN` (alias for `TINYINT(1)`)                                                                                        | `BIT` (can be 0, 1, or NULL)                                                                                |
-- | **JSON**                | `JSON`                                                                                                                    | `NVARCHAR(MAX)` (with JSON validation functions)                                                            |
-- | **UUID / GUID**         | `CHAR(36)` or `BINARY(16)`                                                                                                | `UNIQUEIDENTIFIER`                                                                                          |
-- | :---------------------- | :------------------------------------------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------- |

--------------------------------------------------------------------------------------------------------
-- creating a coffee store database
--------------------------------------------------------------------------------------------------------

-- 1st creating a database for coffee store
create database coffee_store;
use coffee_store;

-- now creating required tables
create table products (
id int identity primary key,
name varchar(30),
price decimal(3,2)
);

-- get all tables in a database
select * from sys.tables;

-- to delete all rows of products table
truncate table products

-- alter table to add new row with auto increment & primary key
 ALTER TABLE users
ADD new_id INT IDENTITY(1,1);

ALTER TABLE users
ADD CONSTRAINT pk_users PRIMARY KEY (new_id);

-- inserting data in table
insert into products (name,price,coffee_origin) values ('abhay', 9.08, 'abc'),('abha', 9.99, '123'),('aman', 9.99, '-'),('rohit', 9.99, '$');
insert into products (name,price) values ('abhay', 9.08),('abha', 9.99);

-- get all rows in products table
select * from products;

-- get all info about the table (or select the table name and press Alt + F1)
--1). 
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'products';

--2). 
exec sp_help products;

-- adding new column in products table
alter table products
add coffee_origin varchar(30);

-- Always check for non-numeric data before converting
SELECT * FROM products WHERE TRY_CAST(coffee_origin AS INT) IS NOT NULL; -- OR

-- delete column from products table
alter table products
drop column coffee_origin;

-- change datatype of a new added column
alter table products
alter column coffee_origin int;
