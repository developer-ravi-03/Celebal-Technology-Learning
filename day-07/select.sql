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

