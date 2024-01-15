--querying in SQL

--SELECT
SELECT * FROM db_name;

SELECT col1, col2 FROM db_name;

--AS
--renames column with name in quotes
SELECT col_name AS new_col_name FROM db_name;

--DISTINCT
--returns unique values (removes duplicates)
SELECT DISTINCT col_name FROM db_name;


--WHERE
--helps to narrow down with a condition (exact)
-- where used with operaters 
-- =, !=, >, <, >=, <=
SELECT * FROM db_name WHERE col_name > a_value;

--LIKE
--narrow down with condition (similar)
--underscore _ is a wildcard char which matches to anything
--percentage % is a wilcard helps search starting, ending or containing.
-- 's_t' can match with sat, sit..
SELECT * FROM db_name WHERE col_name LIKE 's_t';

SELECT * FROM db_name WHERE col_name LIKE '%man';
SELECT * FROM db_name WHERE col_name LIKE 'bat%';
SELECT * FROM db_name WHERE col_name LIKE 'The %';

--IS NULL
--NULL values cannot be searched with = and != operators
SELECT col_name FROM db_name WHERE another_col_name IS NULL;
SELECT col_name FROM db_name WHERE another_col_name IS NOT NULL;

--BETWEEN
--to query values in a range
--numbers, texts or dates
--for texts, it will not include the second value unless it matches exactly
--BETWEEN 'A' and 'D' return values that start with A to C and if the value is exactly 'D'
SELECT * FROM db_name WHERE col_name BETWEEN 19 AND 440;
SELECT * FROM db_name WHERE col_name BETWEEN 1990 AND 2000;
SELECT * FROM db_name WHERE col_name BETWEEN 'A' AND 'D'

--AND
--executes if all conditions are true (&&)
-- if(i = 0 && i = 2)
--adding a second condition
--second AND specifies the second condition in the query
SELECT * FROM db_name WHERE col_name BETWEEN para1 AND para2 AND second_col_num = a_int;
SELECT * FROM db_name WHERE col_name < a_value AND second_col_name = 'a_text';

--OR
--executes if any condition is true (||)
-- if(i = 0 || i = 2)
SELECT * FROM db_name WHERE col_name = para 1 OR col_name = para 2;

--ORDER BY
--ASC ascending
--DESC descending
SELECT * FROM db_name ORDER BY para1 ASC;
SELECT * FROM db_name ORDER BY para1 DESC;
SElect * FROM db_name ORDER BY para1 ASC, para2 DESC;

--LIMIT
--LIMITS the number of rows displayed
--similar to df.head(10)
SELECT * FROM db_name ORDER BY DESC LIMIT 3;

--CASE
--simiar to if else or switch cases
--in the SELECT statement, before FROM statement
--WHEN(if) THEN(else) END(break) END AS(rename column)
SELECT * ,
CASE
WHEN col_num = 'some_text' THEN 'something'
WHEN colnum = some_val THEN new_val
ELSE something_value
END AS 'new col name'
FROM db_name;

SELECT *,
CASE
WHEN col_num = 'some_text' THEN 'other_text'
WHEN col_num = 'some_text' THEN some_other_value
ELSE somethingsomething
END --remains as the same col name
FROM db_name;

