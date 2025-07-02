USE;

USE test;

-- 1. Add a primary key to the id field in the pets table.
ALTER TABLE pets ADD PRIMARY KEY (id);

DESCRIBE pets;

-- 2. Check the people table, and add a primary key to the id field
--    if it doesn't already have one.
DESCRIBE people;

ALTER TABLE people ADD PRIMARY KEY (id);

-- 3. Add a foreign key to the owner_id field in the pets table,
-- referencing the id field in the people table.
ALTER TABLE pets ADD FOREIGN KEY (owner_id) REFERENCES people (id);

-- 4. Add a column named email to the people table.
ALTER TABLE people ADD COLUMN email VARCHAR(20);

DESCRIBE people;

-- 5. Add a unique constraint to the email column in the people table.
ALTER TABLE people ADD UNIQUE (email);

-- 6. Rename the name column in the pets table to 'first_name'.
ALTER TABLE pets RENAME COLUMN name TO first_name;

DESCRIBE pets;

-- alternatively
ALTER TABLE pets CHANGE first_name name VARCHAR(20);

-- 7. Change the postcode data type to CHAR(7) in the addresses table.
ALTER TABLE addresses MODIFY COLUMN postcode CHAR(7);

DESCRIBE addresses;

-- alternatively
ALTER TABLE addresses CHANGE COLUMN postcode postcode VARCHAR(7);


-- 8. Create a table users with guid as the primary key
CREATE TABLE users (
    pk_id CHAR(36) PRIMARY KEY,
    name VARCHAR(50)
);

alter Table users
add column id BINARY(16) NOT NULL;

DESCRIBE users;

SHOW CREATE TABLE users;

INSERT INTO users (pk_id, name, id) VALUES (UUID(), 'abha', UNHEX(REPLACE(UUID(), '-', '')));

SELECT LOWER(CONCAT(
    HEX(SUBSTRING(id, 1, 4)), '-',
    HEX(SUBSTRING(id, 5, 2)), '-',
    HEX(SUBSTRING(id, 7, 2)), '-',
    HEX(SUBSTRING(id, 9, 2)), '-',
    HEX(SUBSTRING(id, 11))
  )), pk_id, name FROM users;

TRUNCATE TABLE users;
