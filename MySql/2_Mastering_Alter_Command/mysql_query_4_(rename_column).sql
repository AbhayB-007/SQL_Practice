Use;
Use test;

-- How to change a column name in a table
-- ALTER Table <table_name>
-- CHANGE <old_column_name> <new_column_name> <datatype>;   

-- ALTER Table <table_name>
-- RENAME COLUMN <old_column_name> TO <new_column_name>;   

DESCRIBE pets;

ALTER TABLE pets
CHANGE COLUMN species animal_type VARCHAR(20);

ALTER TABLE pets
RENAME COLUMN animal_type To species;

ALTER TABLE pets
RENAME COLUMN species To  `animal type`;
