USE;
USE test;
/* 
-- How to add a foreign key to a table
ALTER TABLE <table name>
ADD CONSTRAINT <constraint name> (or this can be removed in case if u want to auto generate foreign key constraint)
FOREIGN KEY (<column name>) REFERENCES <table name>(<column name>);
 
-- How to remove a foreign key from a table
ALTER TABLE <table name>
DROP FOREIGN KEY <constraint name>,
DROP INDEX <constraint name>;
-- OR 
ALTER TABLE <table name>
DROP FOREIGN KEY <constraint name>;
----------------------------------------------------------------------------------------------------

--1). Adding Foreign Key While Creating a Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    CONSTRAINT fk_employees_departments 
        FOREIGN KEY (department_id) 
        REFERENCES departments(department_id)
        ON DELETE CASCADE --> if a department is deleted, its related employees are deleted too.
        ON UPDATE CASCADE --> if a department_id changes, it propagates to employees.
);

--2). Without Naming the Constraint (auto-generated name)
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) 
        REFERENCES departments(department_id)
);
*/

DESCRIBE addresses;
DESCRIBE people;

-- Add fk key with predefined constraint
ALTER TABLE people
ADD CONSTRAINT FK_PeopleAddress 
FOREIGN KEY (address_id) 
REFERENCES addresses(id);

-- Add fk key with auto defined constraint
ALTER TABLE people
ADD FOREIGN KEY (address_id) 
REFERENCES addresses(id);

-- Drop fk key from table
ALTER TABLE people
DROP FOREIGN KEY FK_PeopleAddress;

-- Drop index from table
ALTER TABLE people 
DROP INDEX FK_PeopleAddress;

-- get foreign key constraint if auto generated
SHOW CREATE TABLE people;
-- OR
SELECT CONSTRAINT_NAME FROM information_schema.TABLE_CONSTRAINTS WHERE 
TABLE_NAME = 'people' AND CONSTRAINT_TYPE = 'FOREIGN KEY';

-- to get indexes in tables
SHOW INDEX FROM people;
SHOW INDEX FROM addresses;









