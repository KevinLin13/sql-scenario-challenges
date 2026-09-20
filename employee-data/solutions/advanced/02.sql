-- 題目：
-- 找出沒有參與任何 Research 部門專案的員工姓名。

-- 解法一
-- grain：員工。
-- 1. 使用NOT EXISTS，逐一比對eno。
-- 2. 取得assignment表中pno對應的dept_id和其dname。
-- 3. 篩選出'Research'的eno名單，並逐一查看是否等於目前檢查的eno。

SELECT ename
FROM employee e
WHERE NOT EXISTS (
    SELECT 1
    FROM assignment a
    JOIN project p
    ON a.pno = p.pno
    JOIN department d
    ON p.dept_id = d.dept_id
    WHERE d.dname = 'Research' AND a.eno = e.eno
)


-- 解法二
-- 1. 先確認 Research 部門參與的專案有哪些。
-- 2. 先取得該部門的dept_id後，將表格project篩選出該部門的pno。
-- 3. 接著使用assignment去篩選出有對應pno的eno後，再使用DISTINCT取得未重複的eno名單。
-- 4. 篩選掉該名單後得到未參與該部門專案的員工

SELECT ename
FROM employee
WHERE eno NOT IN (
    SELECT eno
    FROM assignment a
    WHERE pno IN(
        SELECT pno
        FROM project
        WHERE dept_id = (
            SELECT dept_id
            FROM department
            WHERE dname = 'Research'
        )
    )
);


