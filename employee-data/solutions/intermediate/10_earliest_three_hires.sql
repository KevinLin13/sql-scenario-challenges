-- Challenge:
-- Find the names and hire dates of the three earliest-hired employees.

-- Concepts:
-- ORDER BY, LIMIT

SELECT
    ename,
    hire_date
FROM employee
ORDER BY hire_date, eno
LIMIT 3;
