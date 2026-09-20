-- Challenge:
-- Calculate the average age of employees in each department.

-- Concepts:
-- AVG, GROUP BY

SELECT
    dept_id,
    AVG(age) AS average_age
FROM employee
GROUP BY dept_id;
