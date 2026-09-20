-- 題目：
-- 使用 CTE 計算各專案中員工工時的百分比，
-- 列出員工編號、專案編號、百分比，並依百分比降序排序。

-- grain：專案中的員工

-- STEP1：計算各專案的總工時。

-- STEP2：將每位員工在該專案的工時
-- 除以該專案總工時，計算工時百分比。

-- STEP3：依工時百分比由高到低排序。

WITH project_hour AS (
    SELECT
        pno,
        SUM(hours) AS project_total_hours
    FROM assignment
    GROUP BY pno
)

SELECT
    a.eno,
    a.pno,
    ROUND(
        a.hours * 100.0 / ph.project_total_hours,
        2
    ) AS hour_percentage
FROM assignment a
JOIN project_hour ph
    ON a.pno = ph.pno
ORDER BY hour_percentage DESC;