-- 題目：
-- 查詢 assignment 中，每位員工最新一次參與的專案（依插入順序視為最新），並只顯示員工編號、專案編號、工時。

-- grain：員工

-- 1. 使用 ROW_NUMBER()，針對每位員工（PARTITION BY eno）分組編號。
-- 2. 依插入順序由新到舊排序（ORDER BY ctid DESC）。
-- 3. 每位員工最新的一筆會得到 row_num = 1。
-- 4. 篩選 row_num = 1。

SELECT
    eno,
    pno,
    hours
FROM (
    SELECT
        eno,
        pno,
        hours,
        ROW_NUMBER() OVER (
            PARTITION BY eno
            ORDER BY ctid DESC
        ) AS row_num
    FROM assignment
) t
WHERE row_num = 1;
