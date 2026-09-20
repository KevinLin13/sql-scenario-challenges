-- 題目：
-- 列出每個部門的員工總數，並依人數由多到少排序。

-- grain：部門

-- STEP1：保留所有部門
-- 使用 LEFT JOIN，依 dept_id 串接 department 與 employee。
-- 即使某部門沒有員工，也要保留該部門。

-- STEP2：計算各部門員工數
-- GROUP BY 部門後，使用 COUNT(e.eno) 計算員工數。
-- 不使用 COUNT(d.dept_id)，因為 LEFT JOIN 下沒有員工的部門仍會有 d.dept_id。

-- STEP3：依員工數由多到少排序
-- 使用 ORDER BY ... DESC。

SELECT
    d.dname,
    COUNT(e.eno) AS employee_count
FROM department d
LEFT JOIN employee e
ON e.dept_id = d.dept_id
GROUP BY d.dept_id
ORDER BY employee_count DESC;