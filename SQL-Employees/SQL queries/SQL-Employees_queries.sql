-- Question 1 List the following details of each employee: employee number, last name, first name, gender, and salary.
select a.emp_no, a.last_name, a.first_name, a.gender, b.salary
from "employees" a
join "salaries" b on (a.emp_no = b.emp_no);

-- Question 2 List employees who were hired in 1986.

select a.emp_no, a.first_name, a.last_name, a.hire_date
from "employees" a
where hire_date between '1986-01-01' and '1986-12-31'

-- Question 3 List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

select a.dept_no, b.dept_name, c.first_name, c.last_name, a.emp_no, a.from_date, a.to_date
from "dept_manager" a
join "departments" b on (a.dept_no = b.dept_no)
join "employees" c on (a.emp_no = c.emp_no);

-- question 4 List the department of each employee with the following information:
--  employee number, last name, first name, and department name.
select a.emp_no, a.first_name, a.last_name, c.dept_name
from "employees" a 
join "dept_emp" b on (a.emp_no = b.emp_no)
join "departments" c on (b.dept_no = c.dept_no);

-- question 5 List all employees whose first name is "Hercules" and last names begin with "B."
select a.first_name, a.last_name
from "employees" a 
where first_name = 'Hercules'
and last_name like ('B%');

-- question 6 List all employees in the Sales department, including 
-- their employee number, last name, first name, and department name.
select a.emp_no, a.first_name, a.last_name, c.dept_name
from "employees" a 
join "dept_emp" b on (a.emp_no = b.emp_no)
join "departments" c on (b.dept_no = c.dept_no)
where dept_name = 'Sales';

-- question 7 List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
select a.emp_no, a.first_name, a.last_name, c.dept_name
from "employees" a 
join "dept_emp" b on (a.emp_no = b.emp_no)
join "departments" c on (b.dept_no = c.dept_no)
where dept_name = 'Sales'
or dept_name = 'Development';

-- question 8 In descending order, list the frequency count of
-- employee last names, i.e., how many employees share each last name.
SELECT last_name, count(*)
FROM "employees"
group by last_name
order by count DESC;
