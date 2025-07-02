USE;
USE test;
 
-- Change a Column’s Data Type in SQL Server 
ALTER TABLE table_name
ALTER COLUMN column_name new_data_type [NULL | NOT NULL];
 
exec sp_help addresses;

-- examples
Alter table addresses
alter column city varchar(30) null;

Alter table addresses
alter column city char(30);

Alter table addresses
alter column city int not null;











