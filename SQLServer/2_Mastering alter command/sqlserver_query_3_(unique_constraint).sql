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
 
SELECT * from sys.tables;
SELECT * from pets;

-- Adding unique constraint
ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE (species);
-- OR
ALTER TABLE pets
ADD UNIQUE (species);

-- Droping unique constraint
ALTER TABLE pets
DROP INDEX u_species;

-- Trying & testing by inserting duplicate values
insert into pets (id,name,species,owner_id) values 
(3,'dog','Husky',300);
