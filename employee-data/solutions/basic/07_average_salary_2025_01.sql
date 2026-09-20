-- Challenge:
-- Calculate the average salary for 2025-01.

-- Concepts:
-- AVG, WHERE

SELECT AVG(amount) AS average_salary
FROM salary
WHERE month = '2025-01';
