-- Create the titles table
CREATE TABLE titles (
    title_id VARCHAR(15) NOT NULL,
    title VARCHAR(30) NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (title_id),
    CONSTRAINT uc_titles_title UNIQUE (title)
);

-- View the titles table
Select * 
From titles

-- Create the departments table
CREATE TABLE departments (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (dept_no),
    CONSTRAINT uc_departments_dept_name UNIQUE (dept_name)
);

-- View the departments table
Select * 
From departments

-- Create the employees table
CREATE TABLE employees (
    emp_no VARCHAR NOT NULL, -- Cannot use SERIAL as there is a break between 299999 and 400000
    emp_title_id VARCHAR(15) NOT NULL,
    birth_date VARCHAR NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(4) NOT NULL,
    hire_date VARCHAR NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (emp_no)
);

-- View the employees table
Select * 
From employees

-- Create the salaries table
CREATE TABLE salaries (
    emp_no VARCHAR NOT NULL,
    salary VARCHAR NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (emp_no)
);

-- View the salaries table
Select * 
From salaries

-- Create the dept_emp table
CREATE TABLE dept_emp (
    emp_no VARCHAR NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    CONSTRAINT pk_dept_emp PRIMARY KEY (emp_no, dept_no)
);

-- View the dept_emp table
Select * 
From dept_emp

-- Create the dept_manager table
CREATE TABLE dept_manager (
    manager_id SERIAL PRIMARY KEY,
    dept_no VARCHAR(10) NOT NULL,
    emp_no VARCHAR NOT NULL
);

-- View the dept_manager table
Select * 
From dept_manager

