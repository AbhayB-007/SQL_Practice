USE;
USE test;
 
-- How to add a unique constraint to a column 
-- ALTER TABLE <table name>
-- ADD CONSTRAINT <constraint name> UNIQUE (<column name>);
-- OR
-- ALTER TABLE <table name>
-- ADD UNIQUE (<column name>);

-- -- How to remove a unique constraint from a column 
-- ALTER TABLE <table name>
-- DROP INDEX <constraint name>;
 
DESCRIBE pets;

-- Example
ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE (species);
-- OR
ALTER TABLE pets
ADD UNIQUE (species);

-- get the constraint name if auto-generated
SELECT CONSTRAINT_NAME
FROM information_schema.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'pets' AND CONSTRAINT_TYPE = 'UNIQUE';

ALTER TABLE pets
DROP INDEX u_species;

