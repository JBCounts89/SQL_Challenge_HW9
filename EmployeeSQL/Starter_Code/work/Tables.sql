--making a table for the departments
CREATE TABLE departments(
	dept_no char(4) not null primary key,
	dept_name varchar(30) not null
);

--making a table for titles
CREATE TABLE titles(
	title_id char(5) NOT NULL primary key,
	title varchar(30)
);

--making a table for the employees
CREATE TABLE employees(
	emp_no int NOT NULL primary key,
	emp_title char(5),
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex varchar(30),
	hire_date DATE,
	foreign key (emp_title) references titles(title_id)
);

--making a table for the department employees
CREATE TABLE dept_emp(
	emp_no int,
	dept_no char(4),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--making a table for the department managers
CREATE TABLE dept_manager(
	dept_no char(4),
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);	

--making a table for salaries
CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--table check
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;	