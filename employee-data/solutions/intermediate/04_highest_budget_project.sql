-- Challenge:
-- Find the name and department name of the project with the highest budget.

-- Concepts:
-- LEFT JOIN, subquery, MAX

SELECT
    p.pname,
    d.dname
FROM project p
LEFT JOIN department d
    ON p.dept_id = d.dept_id
WHERE p.budget = (
    SELECT MAX(budget)
    FROM project
);
