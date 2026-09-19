/* Department */
CREATE TABLE department (
    dept_id TEXT PRIMARY KEY,
    dname TEXT
);

/* Employee */
CREATE TABLE employee (
    eno TEXT PRIMARY KEY,
    ename TEXT,
    gender TEXT,
    age INTEGER,
    dept_id TEXT,
    hire_date DATE,
    FOREIGN KEY (dept_id)
        REFERENCES department(dept_id)
);

/* Project */
CREATE TABLE project (
    pno TEXT PRIMARY KEY,
    pname TEXT,
    dept_id TEXT,
    budget NUMERIC(12, 2),
    FOREIGN KEY (dept_id)
        REFERENCES department(dept_id)
);

/* Employee project assignment */
CREATE TABLE assignment (
    eno TEXT,
    pno TEXT,
    hours INTEGER,
    PRIMARY KEY (eno, pno),
    FOREIGN KEY (eno)
        REFERENCES employee(eno),
    FOREIGN KEY (pno)
        REFERENCES project(pno)
);

/* Monthly salary */
CREATE TABLE salary (
    eno TEXT,
    month TEXT,
    amount NUMERIC(10, 2),
    PRIMARY KEY (eno, month),
    FOREIGN KEY (eno)
        REFERENCES employee(eno)
);