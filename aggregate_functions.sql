--aggregate functions
--performed after the SELECT argument

--COUNT
--returns the number of rows in the table
--COUNT(*) returns all the count of all the rows (entries)
SELECT COUNT(*) FROM db_name;

SELECT COUNT(*) FROM db_name WHERE col_num = somevalue;

--SUM
--returns the total sum of all the values in the rows
--eg total number of downloads of an app
SELECT SUM(col_num) FROM db_name;

--MAX,MIN
--returns the highest, lowest value of a column
SELECT MAX(col_num) FROM db_name;

SELECT MIN(col_num) FROM db_name;

--AVG
--returns the average value of the whole column
SELECT AVG(col_num) FROM db_name;

--ROUND
--returns a rounded up value in the table for easier reading
--ROUND(column name, decimal places)
SELECT col_num, ROUND(second_col_num, 2) FROM db_name;

SELECT ROUND(col_num, 0) FROM db_name;

--GROUP BY
--group the query in terms of the argument
--GROUP BY 1 means the col reference according to SELECT declaration
SELECT col_num, another_col num FROM db_name GROUP BY col_num;

SELECT col_num, SUM(another_col_num) FROM db_name 
WHERE col_num_parameter = a_value GROUP BY col_num

SELECT col_num, col_num2, col_num3 FROM db_name GROUP BY 1,2; --group by col_num first, then col_num2

--HAVING
--similar to WHERE but is used with aggregate functions like SUM,AVG, etc
--every WHERE declaration can be used with HAVING
--sort of cross matches the columns
--to compare each row of a table with a list of values
SELECT col_num, col_num2, COUNT(*), FROM db_name
GROUP BY col_num HAVING COUNT(*) > some_value;

--UNION
--stacking one dataset on top of another dataset
--usually with the same columns
SELECT * FROM db_name UNION SELECT * FROM db_name_2;

--WITH
--sort of assigning a variable to a value
--int i = 5;
--char name = ray;

WITH new_db_name AS (
    SELECT para1 , para2 AS 'something'
    FROM db_name GROUP BY some_para
)
SELECT * FROM new_db_name JOIN some_db_name 
ON new_db_name.col_num = some_db_name.col_num;
