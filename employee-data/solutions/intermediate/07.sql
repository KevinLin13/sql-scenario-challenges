-- 題目：

-- 查詢薪資高於公司平均薪資的員工編號、姓名與薪資。

-- grain：員工

-- STEP1：取得員工及其薪資
-- 使用 JOIN，依 eno 串接 employee 與 salary。

-- STEP2：計算公司平均薪資
-- 使用子查詢搭配 AVG(amount)。

-- STEP3：篩選高於平均薪資的員工
-- 使用 WHERE 比較每位員工薪資與公司平均薪資。

SELECT
    e.eno,
    e.ename,
    s.amount
FROM employee e
JOIN salary s
ON e.eno = s.eno
WHERE s.amount > (
    SELECT AVG(amount)
    FROM salary
);