-- 題目：
-- 建立一個名為 high_budget_project 的 View，包含所有 budget 高於公司專案平均預算的專案，
-- 再查詢這個 View 中的專案總數。

-- grain：專案

-- 1. 計算公司專案的平均預算
-- 2. 篩選出高於公司平均預算的專案
-- 3. 計算此view的專案總數

CREATE VIEW high_budget_project AS (
    SELECT *
    FROM project p
    WHERE p.budget > (
        SELECT
            AVG(budget) AS avg_budget
        FROM project
    )
);

SELECT COUNT(*) AS project_count
FROM high_budget_project;
