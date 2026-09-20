-- Challenge:
-- List assignment records with more than 300 hours, ordered from highest to lowest hours.

-- Concepts:
-- WHERE, ORDER BY DESC

SELECT *
FROM assignment
WHERE hours > 300
ORDER BY hours DESC;
