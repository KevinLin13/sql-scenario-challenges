-- 題目：
-- 找出最早聘用的三位員工姓名及聘用日期。

-- grain：員工

-- STEP1：取得員工姓名與聘用日期。

-- STEP2：依 hire_date 由早到晚排序。
-- 若聘用日期相同，使用 eno 作為第二排序條件，使結果固定。

-- STEP3：使用 LIMIT 3 取得最早聘用的三位員工。

SELECT
    ename,
    hire_date
FROM employee
ORDER BY hire_date, eno
LIMIT 3;