-- Challenge:
-- Find employees whose total assigned hours are above their department's
-- average total assigned hours.

-- Concepts:
-- SUM, AVG, GROUP BY, window function, CTE

WITH employee_total_hours AS (
    SELECT
        e.eno,
        e.ename,
        e.dept_id,
        SUM(a.hours) AS total_hours
    FROM employee e
    JOIN assignment a
        ON e.eno = a.eno
    GROUP BY
        e.eno,
        e.ename,
        e.dept_id
),
dept_avg_hours AS (
    SELECT
        eno,
        ename,
        dept_id,
        total_hours,
        AVG(total_hours) OVER (
            PARTITION BY dept_id
        ) AS dept_avg_hours
    FROM employee_total_hours
)
SELECT
    eno,
    ename,
    total_hours,
    dept_avg_hours
FROM dept_avg_hours
WHERE total_hours > dept_avg_hours
ORDER BY dept_id, total_hours DESC, eno;
