-- employees table
CREATE TABLE employees (
    emp_no INTEGER,
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(1),
    hire_date DATE,
    PRIMARY KEY (emp_no)
);

-- departments table
CREATE TABLE departments (
    dept_no VARCHAR(4),
    dept_name VARCHAR (50),
    PRIMARY KEY (dept_no)
);

-- dept_emp table
CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR(4),
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no,) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- dept_manager table
CREATE TABLE dept_manager (
    dept_no VARCHAR(4),
    emp_no INTEGER,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- titles table
CREATE TABLE titles (
    emp_no INTEGER,
    title VARCHAR (50),
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- salaries 
CREATE TABLE salaries (
    emp_no INTEGER,
    salary INTEGER,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);