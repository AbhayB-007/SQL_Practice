Use;
Use test;

-- Using sp_rename System Stored Procedure
EXEC sp_rename 'table_name.old_column_name', 'new_column_name', 'COLUMN';
   
exec sp_help pets;

exec sp_rename 'pets.species','animal_type','column';
