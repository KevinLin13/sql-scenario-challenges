-- Challenge:
-- List project numbers and names for projects with a budget greater than 100000.

-- Concepts:
-- SELECT, WHERE, comparison operator

SELECT
    pno,
    pname
FROM project
WHERE budget > 100000;
