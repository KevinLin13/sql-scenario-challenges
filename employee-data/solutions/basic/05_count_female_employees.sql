-- Challenge:
-- Count the employees whose gender is 'F'.

-- Concepts:
-- COUNT, WHERE

SELECT COUNT(*) AS female_employee_count
FROM employee
WHERE gender = 'F';
