# Employee Data SQL Challenges

30 PostgreSQL challenges based on an employee, department, project, assignment, and salary dataset.

## Tables

- `department`
- `employee`
- `project`
- `assignment`
- `salary`

## Challenge Progress

| Level | Progress |
| --- | ---: |
| Basic | 0 / 10 |
| Intermediate | 1 / 10 |
| Advanced | 0 / 10 |

## Topics

- SELECT / WHERE / ORDER BY
- Aggregate functions
- GROUP BY / HAVING
- INNER JOIN / LEFT JOIN
- Subqueries
- EXISTS / NOT EXISTS
- Common Table Expressions (CTEs)
- Window functions
- Views

## Run This Scenario

Create the schema:

```powershell
psql -U postgres -h localhost -p 5433 -d sql_scenario_challenges -f employee-data/database/01_schema.sql
````

Insert the sample data:

```powershell
psql -U postgres -h localhost -p 5433 -d sql_scenario_challenges -f employee-data/database/02_seed.sql
```

## Solutions

Solutions are organized by difficulty:

```text
solutions/
├── basic/
├── intermediate/
└── advanced/
```

## Source

Exercises adapted from:

[SQL 練習 30 題：員工資料篇](https://www.bonnie-chou.com/posts/sql-challenges-30-employee-data)

The original exercises use SQLite. This repository implements the exercises using PostgreSQL.