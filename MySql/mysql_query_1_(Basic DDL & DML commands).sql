-- creating a database
create database test_db;

-- using the created database
use test_db;

-- to get all databases names
show databases;

-- to get all tables names
show tables;

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

-- key & index
-- key -> identifier for a row in a table.
-- index -> ordered collection of keys. used to allow fast searching and when sorting the rows.
-- unique -> every row has a different key, or every entry in an index only appears once.
-- synonyms -> in mysql, the keywords INDEX and KEY are used interchangebly.

-- primary key
-- primary key -> a column (or set of columns) that uniquely identifies a row within a table.
-- unique -> a primary key must be unique. No two rows can share the same primary key values.
-- not null -> null primary keys are not allowed.
-- one per table -> tables can have several keys, but there can only be one primary key for each table.

-- foreign key
-- foreign key -> a key column (or set of columns) that matches the primary key in the parent table.
-- purpose --> links 2 tables together the fk in the child table links to PK in the parent table.
-- null allowed --> null foreign keys are fine. The child table can be linked to the parent table later.

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
id int auto_increment primary key,
name varchar(30),
price decimal(3,2)
);

-- get all tables in a database
show tables;

-- to delete all rows of products table
truncate table products;

-- alter table to add new row with auto increment & primary key
ALTER TABLE products
add column new_id INT auto_increment primary key;

-- inserting data in table
insert into products (name,price) values ('abha', 9.99);

-- get all rows in products table
select * from products;

-- get all info about the table
describe products;

-- adding new column in products table
alter table products
add column coffee_origin varchar(30);

-- delete column from products table
alter table products
drop column coffee_origin;























