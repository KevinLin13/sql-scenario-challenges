-- Challenge:
-- Find employees who have not participated in any Research department project.

-- Concepts:
-- NOT EXISTS, correlated subquery, JOIN

SELECT
    e.eno,
    e.ename
FROM employee e
WHERE NOT EXISTS (
    SELECT 1
    FROM assignment a
    JOIN project p
        ON a.pno = p.pno
    JOIN department d
        ON p.dept_id = d.dept_id
    WHERE a.eno = e.eno
      AND d.dname = 'Research'
)
ORDER BY e.eno;
