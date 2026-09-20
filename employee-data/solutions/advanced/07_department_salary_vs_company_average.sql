-- Challenge:
-- Calculate the difference between each department's average salary and
-- the company-wide average salary. The difference may be negative.

-- Concepts:
-- AVG, subquery, LEFT JOIN, GROUP BY, arithmetic

SELECT
    d.dept_id,
    ROUND(AVG(s.amount), 2) AS dept_avg_salary,
    ROUND(
        AVG(s.amount) - (
            SELECT AVG(amount)
            FROM salary
        ),
        2
    ) AS diff_avg_salary
FROM department d
LEFT JOIN employee e
    ON d.dept_id = e.dept_id
LEFT JOIN salary s
    ON e.eno = s.eno
GROUP BY d.dept_id
ORDER BY d.dept_id;
