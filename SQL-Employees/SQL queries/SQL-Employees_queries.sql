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

