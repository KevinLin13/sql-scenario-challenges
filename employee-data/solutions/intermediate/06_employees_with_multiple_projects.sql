-- Challenge:
-- Find employees who participate in two or more projects.

-- Concepts:
-- JOIN, GROUP BY, HAVING, COUNT

SELECT
    e.eno,
    e.ename,
    COUNT(a.pno) AS project_count
FROM employee e
JOIN assignment a
    ON e.eno = a.eno
GROUP BY
    e.eno,
    e.ename
HAVING COUNT(a.pno) >= 2;