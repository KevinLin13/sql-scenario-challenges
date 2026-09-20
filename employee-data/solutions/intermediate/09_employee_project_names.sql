-- Challenge:
-- Concatenate the project names for each employee with commas.

-- Concepts:
-- LEFT JOIN, STRING_AGG, GROUP BY

SELECT
    e.eno,
    e.ename,
    COALESCE(
        STRING_AGG(p.pname, ', ' ORDER BY p.pname),
        ''
    ) AS project_names
FROM employee e
LEFT JOIN assignment a
    ON e.eno = a.eno
LEFT JOIN project p
    ON a.pno = p.pno
GROUP BY
    e.eno,
    e.ename
ORDER BY e.eno;
