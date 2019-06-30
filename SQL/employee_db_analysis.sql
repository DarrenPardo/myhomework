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

-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name.

SELECT department_employee.emp_no, employees.llast_name, employees.first_name, deparments.dept_name
FROM department_employee
LEFT JOIN Employees ON department_employee.emp_no = employees.emp_no
LEFT JOIN deparments ON department_employee.dept_no = deparments.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."

SELECT emp_no, first_name, llast_name
FROM employees
WHERE first_name = 'Hercules' AND llast_name Like 'B%';

-- 6. List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.llast_name, employees.first_name, deparments.dept_name
FROM deparments, employees 
WHERE deparments.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT department_employee.emp_no, employees.llast_name, employees.first_name, deparments.dept_name
FROM department_employee department_employee
LEFT JOIN employees employees ON department_employee.emp_no = employees.emp_no
LEFT JOIN deparments deparments ON department_employee.dept_no = deparments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- 8. In descending order, list the frequency count of 
-- employee last names, i.e., how many employees share each last name.

SELECT llast_name, COUNT(*)
FROM employees
GROUP BY llast_name
ORDER BY count(*) DESC;