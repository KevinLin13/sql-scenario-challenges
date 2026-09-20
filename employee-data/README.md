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
| Basic | 10 / 10 |
| Intermediate | 10 / 10 |
| Advanced | 10 / 10 |

## Topics

- SELECT / WHERE / ORDER BY
- Aggregate functions
- GROUP BY / HAVING
- INNER JOIN / LEFT JOIN
- Subqueries
- EXISTS / NOT EXISTS
- Common Table Expressions (CTEs)
- Window functions
- STRING_AGG
- RANK
- Views

## Run This Scenario

Create the schema:

```powershell
psql -U postgres -h localhost -p 5433 -d sql_scenario_challenges -f employee-data/database/01_schema.sql
```

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

All 30 challenges have been completed and saved as independent PostgreSQL query files.

### PostgreSQL-specific notes

- Intermediate challenge 9 uses `STRING_AGG` as the PostgreSQL equivalent of SQLite's `GROUP_CONCAT`.
- Advanced challenge 9 uses `ctid DESC` to model the latest physical row order for this static exercise dataset. `ctid` is not a durable business timestamp or ordering key in production systems.
- Advanced challenge 10 uses `CREATE OR REPLACE VIEW` and then queries the created view.

## Source

Exercises adapted from:

[SQL 練習 30 題：員工資料篇](https://www.bonnie-chou.com/posts/sql-challenges-30-employee-data)

The original exercises use SQLite. This repository implements the exercises using PostgreSQL.
