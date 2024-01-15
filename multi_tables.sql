--combining tables
SELECT * FROM db_name JOIN db_name_2 
ON db_name.col_num = db_name_2.col_num;

SELECT * FROM db_name JOIN db_name_2 
ON db_name.col_num = db_name_2.col_num
WHERE another_col_num = a_certain_value;

--INNER JOIN
--used when the table is not correspondingly the same
SELECT * FROM db_name INNER JOIN db_name_2
ON db_name.col_num = db_name_2.col_num;

--LEFT JOIN
--join 2 tables but keeps everything from the first table
--even though there are no matching rows in the second
--removes second table row
SELECT * FROM db_name LEFT JOIN db_name_2
ON db_name.col_name = db_name_2.col_name;

--primary and foreign keys
--cannot have more than one primary key column in a table
--usually an id
--foreign key is a primary key from another table that appears
--foreign keys usually have more descriptive names
SELECT * FROM db_name INNER JOIN db_name_2
ON db_name.id = db_name_2.db_id

--CROSS JOIN
--joining tables with no common columns
--no need ON statement as there is nothing to join on
SELECT db_name.col_num , db_name_2.col_num_2 FROM db_name
CROSS JOIN db_name_2;

