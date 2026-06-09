-- ===========================================================
-- Select Statement are used to select data or retrieve data from tables
-- we can use slecet statement to fetch data from database 
-- =========================================================

-- =======================================
-- Retrieve all student data 

SELECT * FROM student;

-- ===========================================

-- ================================================
-- Pick only the columns you need

SELECT sname,marks FROM student;

-- ===============================================

-- =================================================
/* 
where clause: used to filter row/data based on a condition
*/

SELECT *
FROM student
WHERE marks>=70;

SELECT *
FROM student
WHERE sname="Ravi";

SELECT 
  sname,
  marks
FROM student
WHERE sname="Ravi";
-- ==========================================================

-- ========================================================
/* 
Order By clause: used to Arrange data in ascending order or descending order
*/

SELECT *
FROM student
ORDER BY sid DESC;

/* 
Nested Order By: used to Arrange data in ascending order or descending order But one more this in this it refines more data in accurate way . for example if i am gonna to sort on basis of name and name is duplicate . but i want to sort it than i can use another column to refine it more.for accurate result.
*/

SELECT *
FROM student
ORDER BY 
  sname ASC,
  sid DESC;

-- ===========================================================

-- ==========================================================
/*
GROUP BY: 
combines rows with the same value.
Aggregates a column By another column.

Example:
table:
 1. Maria   Germany   350
 2. John    USA       900
 3. Gaury   UK        750
 4. Martin  Germany   500
 5. Peter   USA       0

 The result of this like germany and usa appears two time so combines individually and store aggregate sum of both

 Result:
 Germany   850
 USA       900
 UK        750
*/


SELECT
  sname,
  SUM(marks) AS total_marks,
  COUNT(sid) AS total_customers
FROM student
GROUP BY sname;

-- =============================================

-- ==================================================
/*
Having Clause: Filter Aggregated data
- filter data After Aggregation
- can be used only with group by

- Having are use to check condition if it is available or not 

like: in this if we are using having sum(score)>800 it return only first row.
Table:
 Germany   850
 USA       900
 UK        750
*/

SELECT
  sname,
  SUM(marks) AS total_marks,
  COUNT(sid) AS total_customers
FROM student
GROUP BY sname
HAVING total_marks>100;


-- Having and where 
/*
The main Difference Between Having and where.
- Where are used to filter data before aggregation
- Having are Used to FIlter Data after aggregation. 
*/

SELECT
  sname,
  SUM(marks) AS total_marks,
  COUNT(sid) AS total_customers
FROM student
WHERE marks>70
GROUP BY sname
HAVING SUM(marks)>100;

-- ====================================================
/*
Distinct: Removes Duplicate (Repeated Values)
- Each Value Appears only once
*/

SELECT DISTINCT
  sname as name
FROM student;

-- =======================================================
/*
Top: Limit your data
- restrict the number of rows returned
- Top Keyword are used only in Microsoft SQL Server (SSMS)
- In MySQL use limit
*/

-- For Microsoft SQL Server (SSMS)
SELECT TOP 3 *
FROM student;

-- For MySQL
SELECT *
FROM student
LIMIT 3;

SELECT *
FROM student
ORDER BY sid DESC
LIMIT 3;

-- ======================================
-- Exexution order VS Coding Order