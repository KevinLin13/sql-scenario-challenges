-- 題目：
-- 查詢所有部門平均薪資與公司平均薪資的差額，可以是負值。

-- grain：部門

-- 1. 分別計算部門平均薪資以及公司平均薪資的差額。

SELECT
    e.dept_id,
    ROUND(AVG(s.amount), 2) AS dept_avg_salary,
    ROUND(
        AVG(s.amount) - (
            SELECT
                AVG(amount) AS avg_salary
            FROM salary
        ), 2
    ) AS diff_avg_salary
FROM salary s
JOIN employee e
    ON s.eno = e.eno
GROUP BY e.dept_id
;