-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries ON (salaries.emp_no = employees.emp_no);

-- List employees who were hired in 1986.
SELECT *
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM dept_manager as m
JOIN departments as d
ON (d.dept_no= m.dept_no)
	JOIN employees as e
	ON (e.emp_no=m.emp_no);

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
ON (de.emp_no = e.emp_no)
	JOIN departments as d
	ON (d.dept_no = de.dept_no);

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT e.emp_no, e.first_name, e.last_name
FROM employees as e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
ON (de.emp_no = e.emp_no)
	JOIN departments as d
	ON (d.dept_no = de.dept_no)
	WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
ON (de.emp_no = e.emp_no)
	JOIN departments as d
	ON (d.dept_no = de.dept_no)
	WHERE dept_name = 'Sales' OR dept_name = 'Development'

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT e.last_name, COUNT(e.last_name) as frequency
FROM employees as e
GROUP BY e.last_name
ORDER BY frequency DESC;