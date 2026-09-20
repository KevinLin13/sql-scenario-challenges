-- 題目：
-- 使用視窗函數（Window Function），找出各部門中薪資最高的員工，以及他的薪資。

-- grain：部門中的員工

-- STEP1：取得部門、員工與薪資資料。

-- STEP2：使用 window function，
-- 依 dept_id 分組計算每個部門的最高薪資。

-- STEP3：篩選薪資等於該部門最高薪資的員工。
-- 若多人並列最高薪，會全部保留。

-- 解法一：
WITH max_amount_data AS (
    SELECT
        d.dept_id,
        d.dname,
        e.eno,
        e.ename,
        s.amount,
        MAX(s.amount) OVER (
            PARTITION BY d.dept_id
        ) AS max_amount
    FROM department d
    JOIN employee e
        ON d.dept_id = e.dept_id
    JOIN salary s
        ON e.eno = s.eno
)

SELECT
    dname,
    ename,
    amount
FROM max_amount_data
WHERE amount = max_amount;

-- 解法二
SELECT
    dname,
    ename,
    amount
FROM (
    SELECT
        d.dept_id,
        d.dname,
        e.eno,
        e.ename,
        s.amount,
        RANK() OVER (
            PARTITION BY d.dept_id
            ORDER BY s.amount DESC
        ) AS salary_rank
    FROM department d
    JOIN employee e
        ON d.dept_id = e.dept_id
    JOIN salary s
        ON e.eno = s.eno
) ranked_salary
WHERE salary_rank = 1;