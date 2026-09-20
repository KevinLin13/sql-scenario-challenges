-- 題目：
-- 列出工時高於部門平均工時的員工編號、姓名與工時。

-- grain：員工

-- STEP1：先將 assignment 聚合至員工層級，
-- 計算每位員工的總工時。

-- STEP2：在員工層級使用 window function，
-- 計算各部門員工總工時的平均值。

-- STEP3：篩選總工時高於所屬部門平均工時的員工。

WITH employee_hours AS (
    SELECT
        e.eno,
        e.ename,
        e.dept_id,
        SUM(a.hours) AS total_hours
    FROM employee e
    JOIN assignment a
        ON e.eno = a.eno
    GROUP BY
        e.eno,
        e.ename,
        e.dept_id
),

dept_avg_hours AS (
    SELECT
        *,
        AVG(total_hours) OVER (
            PARTITION BY dept_id
        ) AS dept_avg_hours
    FROM employee_hours
)

SELECT
    eno,
    ename,
    total_hours,
    dept_avg_hours
FROM dept_avg_hours
WHERE total_hours > dept_avg_hours;