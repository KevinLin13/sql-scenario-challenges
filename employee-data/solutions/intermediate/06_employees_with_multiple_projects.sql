-- Challenge:
-- Find employees who participate in two or more projects.

-- Concepts:
-- JOIN, GROUP BY, HAVING, COUNT

-- grain：員工

-- STEP1：計算每位員工參與的專案數
-- (1) 使用 JOIN，依 eno 串接 employee 與 assignment。
-- (2) JOIN 後每筆資料代表一筆員工參與專案的紀錄。
-- (3) GROUP BY eno，將 grain 聚合回員工，並使用 COUNT(*) 計算參與專案數。

-- STEP2：篩選參與兩個以上專案的員工
-- 聚合後若要針對聚合結果進行篩選，需要使用 HAVING。

SELECT
    e.eno,
    e.ename,
    COUNT(*) AS project_count
FROM employee e
JOIN assignment a
    ON a.eno = e.eno
GROUP BY e.eno
HAVING COUNT(*) >= 2;