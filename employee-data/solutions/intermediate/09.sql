-- 題目：
-- 將每位員工參與的專案名稱用逗號串聯之後顯示出來。

-- grain：員工
-- 1. 需要先得到員工對應專案的表格後，再串接專案的名稱，進而得到員工對應專案名稱的表。
-- 2. 接著GROUP BY e.eno 將grain聚合回員工後，並結合STRING_AGG()把pname做串接。
-- 3. 並非全部的eno皆有project，故結合COALESCE()處理STRING_AGG()為NULL的情況。


SELECT
    e.eno,
    e.ename,
    COALESCE(
        STRING_AGG(p.pname, ', ' ORDER BY p.pname),
        '無參與專案'
    )  AS project_name
FROM employee e
LEFT JOIN assignment a
ON e.eno = a.eno
LEFT JOIN project p
ON p.pno = a.pno
GROUP BY e.eno;