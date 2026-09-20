-- Challenge:
-- As of 2025-01-01, calculate how many days remain until each employee
-- reaches five years of employment. Negative values mean the anniversary
-- has already passed.

-- Concepts:
-- DATE arithmetic, INTERVAL, type cast

SELECT
    eno,
    hire_date,
    (hire_date + INTERVAL '5 years')::date AS five_year_anniversary,
    (hire_date + INTERVAL '5 years')::date
        - DATE '2025-01-01' AS days_until_five_year_anniversary
FROM employee
ORDER BY eno;
