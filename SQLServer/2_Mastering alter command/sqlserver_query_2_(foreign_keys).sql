use;
use test;


-- Add a Foreign Key While Creating a Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(50),
    DepartmentID INT,
    CONSTRAINT FK_Employees_Departments FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID)
);


-- Add a Foreign Key After Table Creation
ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Departments 
FOREIGN KEY (DepartmentID) 
REFERENCES Departments(DepartmentID);


-- Remove (Drop) a Foreign Key

--1). First, find the constraint name if you don't know it:
SELECT name
FROM sys.foreign_keys
WHERE parent_object_id = OBJECT_ID('Employees');

--2). Then drop it:
ALTER TABLE Employees
DROP CONSTRAINT FK_Employees_Departments;




