-- Challenge:
-- Find employees who participate in both p001 and p005.

-- Concepts:
-- WHERE, GROUP BY, HAVING, COUNT, DISTINCT

SELECT
    e.eno,
    e.ename
FROM employee e
JOIN assignment a
    ON e.eno = a.eno
WHERE a.pno IN ('p001', 'p005')
GROUP BY
    e.eno,
    e.ename
HAVING COUNT(DISTINCT a.pno) = 2;
