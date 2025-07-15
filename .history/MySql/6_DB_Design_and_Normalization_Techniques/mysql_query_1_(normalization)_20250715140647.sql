--1). what is normalization?
-- normalization is the process of efficiently organizing data in a database to reduce redundancy and improve data integrity.

--2). why is normalization?
    --a). to eliminate redundant data.
    --b). to only store related data in the same table.

--3). Benefits of normalization:
    --a). reduces storage space.
    --b). reduce insert, update, and delete anomalies.
    --c). improve query performance by organizing data logically.

--4). Normalization forms:
    --a). 1NF (First Normal Form): 
        --i). There are no repeated rows of data.
        --ii). columns only contain single value.
        --iii). The table has a primary key.
    --b). 2NF (Second Normal Form):
        --i). meet all requirements of 1NF.
        --ii). every column that is not a primary key must be fully functionally dependent on the primary key.
        --ii). remove subsets of data that apply to multiple rows and place them in separate tables.
        --iii). create relationships between these new tables and their predecessors through foreign keys.
    --c). 3NF (Third Normal Form):
        --i). meet all requirements of 2NF.
        --ii). remove columns that are not dependent on the primary key.
    --#). Boyce/Codd Normal Form (BCNF) also called 3.5NF:
        --i). meet all requirements of 3NF.
        --ii). every determinant is a candidate key.










