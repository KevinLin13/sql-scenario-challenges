-- Challenge:
-- Calculate each employee's percentage of the total hours for their project,
-- then order the results by percentage descending.

-- Concepts:
-- CTE, SUM, JOIN, arithmetic, ORDER BY DESC

WITH project_total_hours AS (
    SELECT
        pno,
        SUM(hours) AS project_total_hours
    FROM assignment
    GROUP BY pno
)
SELECT
    a.eno,
    a.pno,
    ROUND(
        a.hours * 100.0 / p.project_total_hours,
        2
    ) AS hour_percentage
FROM assignment a
JOIN project_total_hours p
    ON a.pno = p.pno
ORDER BY hour_percentage DESC, a.eno, a.pno;
