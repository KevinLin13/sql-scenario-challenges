-- 題目：
-- 找出與員工 e001 一起參與過至少 1 個專案的其他員工姓名，
-- 並顯示共同專案數量。

-- grain：員工

-- STEP1：找出 e001 參與的所有專案。

-- STEP2：從 assignment 找出參與這些專案的其他員工。

-- STEP3：依員工分組，使用 COUNT(*) 計算與 e001 的共同專案數。

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
GROUP BY e.eno
ORDER BY common_project_count DESC;