-- Challenge:
-- Calculate the total assigned hours for each project.

-- Concepts:
-- SUM, GROUP BY

SELECT
    pno,
    SUM(hours) AS total_hours
FROM assignment
GROUP BY pno;
