-- Challenge:
-- Find employee numbers and names whose names start with 'A'.

-- Concepts:
-- LIKE, wildcard

SELECT
    eno,
    ename
FROM employee
WHERE ename LIKE 'A%';
