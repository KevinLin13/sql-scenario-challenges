-- Challenge:
-- Count the number of projects in which employee e002 participates.

-- Concepts:
-- COUNT, WHERE

SELECT COUNT(*) AS project_count
FROM assignment
WHERE eno = 'e002';
