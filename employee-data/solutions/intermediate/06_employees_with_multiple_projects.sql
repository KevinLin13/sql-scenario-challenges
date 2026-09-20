-- Challenge:
-- Find employees who participate in two or more projects.

-- Concepts:
-- LEFT JOIN, GROUP BY, HAVING, COUNT

SELECT
    e.eno,
    e.ename,
    COUNT(a.eno) AS project_count
FROM employee e
LEFT JOIN assignment a
    ON e.eno = a.eno
GROUP BY
    e.eno,
    e.ename
HAVING COUNT(a.eno) >= 2;
