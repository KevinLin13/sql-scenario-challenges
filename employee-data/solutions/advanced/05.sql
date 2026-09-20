-- 題目：
-- 以 2025-01-01 為基準，計算每位員工距離入職滿 5 年還差多少天。

-- grain：員工

-- 1. 計算每位員工入職滿五年的日期。
-- 2. 將滿五年的日期減去基準日 2025-01-01，取得距離滿五年還差的天數。

SELECT
    eno,
    hire_date,
    (hire_date + INTERVAL '5 year')::DATE AS hire_five_year,
    GREATEST(
        (hire_date + INTERVAL '5 year')::DATE - DATE '2025-01-01',
        0
    ) AS diff_days
FROM employee e