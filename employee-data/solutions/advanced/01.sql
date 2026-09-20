-- 題目：
-- 找出同時參與 p001 與 p005 這兩個專案的員工編號與姓名。

-- grain：員工

-- 1. 先將assignment的表格用WHERE篩選pno只留下p001及p005的資料。
-- 2. 接著GROUP BY eno 聚合為 員工 再使用COUNT(*)計算個數後，再用HAVING篩選出=2。
-- 3. 接著將employee表格使用WHERE篩選有包含其組合的員工。

SELECT
    eno,
    ename
FROM employee
WHERE eno IN (
    SELECT eno
    FROM assignment a
    WHERE pno IN ('p001', 'p005')
    GROUP BY eno
    HAVING COUNT(*) = 2
);