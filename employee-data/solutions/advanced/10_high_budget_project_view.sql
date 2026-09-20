-- Challenge:
-- Create high_budget_project containing projects whose budgets are above
-- the company-wide average, then count the projects in the view.

-- Concepts:
-- CREATE VIEW, subquery, AVG, COUNT

CREATE OR REPLACE VIEW high_budget_project AS
SELECT *
FROM project
WHERE budget > (
    SELECT AVG(budget)
    FROM project
);

SELECT COUNT(*) AS project_count
FROM high_budget_project;
