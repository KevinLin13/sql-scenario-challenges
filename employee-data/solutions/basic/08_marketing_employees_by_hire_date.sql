-- Challenge:
-- List all Marketing employees and their hire dates, ordered from oldest hire to newest hire.

-- Concepts:
-- WHERE, ORDER BY

SELECT
    ename,
    hire_date
FROM employee
WHERE dept_id = 'd002'
ORDER BY hire_date;
