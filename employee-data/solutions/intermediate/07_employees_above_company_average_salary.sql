-- Challenge:
-- Find employees whose salary is higher than the company average salary.

-- Concepts:
-- AVG, subquery, JOIN, comparison operator

SELECT
    e.eno,
    e.ename,
    s.amount AS salary
FROM employee e
JOIN salary s
    ON e.eno = s.eno
WHERE s.amount > (
    SELECT AVG(amount)
    FROM salary
);
