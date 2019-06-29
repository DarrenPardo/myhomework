--1. List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employees.emp_no, employees.llast_name, employees.first_name, employees.gender, salaries.salary
FROM employees, salaries
WHERE salaries.emp_no = employees.emp_no;

-- 2. List employees who were hired in 1986.

SELECT employees.llast_name, employees.first_name, employees.hire_date
FROM employees
WHERE hire_date between '1985-12-31' and '1987-01-01';

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number,
-- last name, first name, and start and end employment dates.

SELECT department_manager.dept_no, deparments.dept_name, 
department_manager.emp_no, employees.llast_name, employees.first_name,
department_manager.from_date, department_manager.to_date
FROM department_manager, deparments, employees
WHERE department_manager.dept_no = deparments.dept_no AND
department_manager.emp_no = employees.emp_no;

