-- Challenge:
-- Count employees in each department and order by the count descending.

-- Concepts:
-- LEFT JOIN, COUNT, GROUP BY, ORDER BY DESC

SELECT
    d.dept_id,
    d.dname,
    COUNT(e.eno) AS employee_count
FROM department d
LEFT JOIN employee e
    ON d.dept_id = e.dept_id
GROUP BY
    d.dept_id,
    d.dname
ORDER BY employee_count DESC, d.dept_id;
