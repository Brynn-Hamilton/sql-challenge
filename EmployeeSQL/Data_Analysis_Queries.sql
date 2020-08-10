SELECT * FROM Departments;
SELECT * FROM Titles;
SELECT * FROM Employees;
SELECT * FROM Department_Employees;
SELECT * FROM Department_Manager;
SELECT * FROM Salaries;

SELECT 
Employees.emp_no, 
Employees.last_name, 
Employees.first_name, 
Employees.gender, 
Salaries.salary

FROM Employees
JOIN Salaries on Salaries.emp_no = Employees.emp_no;

SELECT
first_name,
last_name,
hire_date

FROM Employees WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT 
Departments.dept_no,
Departments.dept_name,
Department_Manager.emp_no,
Employees.last_name,
Employees.first_name

FROM Departments
JOIN Department_Manager ON Departments.dept_no = Department_Manager.dept_no
Join Employees ON Department_Manager.emp_no = Employees.emp_no;

SELECT
Department_Employees.emp_no,
Employees.last_name,
Employees.first_name,
Departments.dept_name

FROM Department_Employees
JOIN Employees ON Department_Employees.emp_no = Employees.emp_no
JOIN Departments ON Department_Employees.dept_no = Departments.dept_no;

SELECT
first_name,
last_name,
gender

FROM Employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT 
Department_Employees.emp_no,
Employees.last_name,
Employees.first_name,
Departments.dept_name

FROM Department_Employees 
JOIN Employees ON Department_Employees.emp_no = Employees.emp_no
JOIN Departments ON Department_Employees.dept_no = Departments.dept_no
WHERE dept_name = 'Sales';

SELECT 
Department_Employees.emp_no,
Employees.last_name,
Employees.first_name,
Departments.dept_name

FROM Department_Employees 
JOIN Employees ON Department_Employees.emp_no = Employees.emp_no
JOIN Departments ON Department_Employees.dept_no = Departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT last_name,
COUNT(last_name) AS "Frequency_of_shared_last_names"
FROM Employees
GROUP BY last_name
ORDER BY last_name DESC;





