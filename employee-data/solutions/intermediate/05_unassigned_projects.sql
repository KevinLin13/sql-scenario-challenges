-- Challenge:
-- List projects that have not been assigned to any employee.

-- Concepts:
-- LEFT JOIN, anti-join, IS NULL

SELECT
    p.pno,
    p.pname
FROM project p
LEFT JOIN assignment a
    ON p.pno = a.pno
WHERE a.pno IS NULL;
