-- Challenge:
-- Find each employee's latest project assignment, treating the physical row
-- order as insertion order for this static exercise dataset.

-- Concepts:
-- ROW_NUMBER, PARTITION BY, ctid

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
) AS ranked_assignment
WHERE row_num = 1
ORDER BY eno;

-- Note:
-- ctid is used only to model the row order required by this exercise.
-- It is not a stable ordering key for production data.
