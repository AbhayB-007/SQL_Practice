USE;
USE test;
 
-- 1. Add a primary key to the id field in the pets table.
ALTER TABLE pets
alter column id int not null;

ALTER TABLE pets
ADD constraint PK_pets_id PRIMARY KEY (id);
 
-- 2. Check the people table, and add a primary key to the id field if it doesn't already have one.
 
ALTER TABLE people
alter column id int not null;

alter table people
ADD constraint PK_people_id PRIMARY KEY (id);
 
-- 3. Add a foreign key to the owner_id field in the pets table,
--    referencing the id field in the people table.
ALTER TABLE pets
ADD CONSTRAINT FK_Pets_People
FOREIGN KEY (owner_id) 
REFERENCES people(id);

 
-- 4. Add a column named email to the people table.
ALTER TABLE people
ADD email VARCHAR(20);
 
-- 5. Add a unique constraint to the email column in the people table.
ALTER TABLE people
ADD UNIQUE (email);
 
-- 6. Rename the name column in the pets table to 'first_name'.
exec sp_rename 'pets.name','first_name','column';
exec sp_rename 'pets.first_name','name','column';
 
-- 7. Change the postcode data type to CHAR(7) in the addresses table.
ALTER TABLE addresses
alter COLUMN postcode CHAR(7);

ALTER TABLE addresses
alter COLUMN postcode VARCHAR(7);

