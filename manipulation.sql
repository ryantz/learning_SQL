--creating a new table with table name.
CREATE TABLE db_name (

--variable name -> var type
    para1 INTEGER, 
    para2 TEXT,
    para3 INTEGER;

);

--inserting values into db. call it like a function.
INSERT INTO db_name (para1, para2, para3);
VALUES (1, 'hello', 3),
VALUES (2, 'world', 3);

--selecting a specific column
SELECT para1 FROM db_name;

--selecting all the columns 
SELECT * FROM db_name;

--adding a column into an existing table
ALTER TABLE db_name
ADD COLUMN para4 TEXT;

--adding a value to an existing column
--SET selects column to be updated
--WHERE selects which row 
UPDATE db_name
SET para4 = 'hellomynameis'
WHERE para1 = 1;

--deleting rows containing null values
DELETE FROM db_name 
WHERE para4 IS NULL;

--creating a table with constraints to be met 
CREATE TABLE db_name_2 (

    id INTEGER PRIMARY KEY,
    name TEXT UNIQUE,
    date_of_birth TEXT NOT NULL,
    date_of_death TEXT DEFAULT 'Not applicable'
    --statement after DEFAULT is what will be entered if 
    --field is empty
);

