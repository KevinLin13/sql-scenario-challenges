-- Challenge:
-- Find the highest-paid employee in each department.

-- Concepts:
-- RANK, PARTITION BY, JOIN, subquery

WITH ranked_salary AS (
    SELECT
        e.dept_id,
        e.eno,
        e.ename,
        s.amount AS salary,
        RANK() OVER (
            PARTITION BY e.dept_id
            ORDER BY s.amount DESC
        ) AS salary_rank
    FROM employee e
    JOIN salary s
        ON e.eno = s.eno
)
SELECT
    dept_id,
    eno,
    ename,
    salary
FROM ranked_salary
WHERE salary_rank = 1
ORDER BY dept_id, eno;
