-- Create the titles table
CREATE TABLE titles (
    title_id VARCHAR(15) NOT NULL,
    title VARCHAR(30) NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (title_id),
    CONSTRAINT uc_titles_title UNIQUE (title)
);

-- Create the departments table
CREATE TABLE departments (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (dept_no),
    CONSTRAINT uc_departments_dept_name UNIQUE (dept_name)
);

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

-- Create the salaries table
CREATE TABLE salaries (
    emp_no VARCHAR NOT NULL,
    salary VARCHAR NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (emp_no)
);

-- Create the dept_emp table
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    CONSTRAINT pk_dept_emp PRIMARY KEY (emp_no, dept_no)
);

-- Create the dept_manager table
CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
	dept_emp INT NOT NULL,
    CONSTRAINT pk_dept_no PRIMARY KEY (dept_no)
);


