-- Challenge:
-- Find other employees who participated in at least one project with e001,
-- and show the number of common projects.

-- Concepts:
-- IN, subquery, JOIN, GROUP BY, COUNT

SELECT
    e.eno,
    e.ename,
    COUNT(*) AS common_project_count
FROM assignment a
JOIN employee e
    ON a.eno = e.eno
WHERE a.eno <> 'e001'
  AND a.pno IN (
      SELECT pno
      FROM assignment
      WHERE eno = 'e001'
  )
GROUP BY
    e.eno,
    e.ename
ORDER BY common_project_count DESC, e.eno;
