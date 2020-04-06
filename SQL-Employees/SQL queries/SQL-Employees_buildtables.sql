DROP TABLE IF EXISTS "employees";
CREATE TABLE "employees" 
(
"emp_no" VARCHAR(10) ,
"birth_date" VARCHAR(10),
"first_name" VARCHAR(20),
"last_name" VARCHAR (20),
"gender" VARCHAR	NOT NULL,
"hire_date" VARCHAR	NOT NULL,
CONSTRAINT "employees_pkey"
PRIMARY KEY (
	"emp_no"
)

);

DROP TABLE IF EXISTS "dept_emp";
CREATE TABLE "dept_emp" 
(
	"emp_no" VARCHAR (6)	not null,
	"dept_no" VARCHAR (10)	Not null,
	"from_date" VARCHAR (10)	not null, 
	"to_date" VARCHAR (10)	not null

);

DROP TABLE IF EXISTS "departments";
CREATE TABLE "departments" 
(
	"dept_no" VARCHAR (10)	Not null,	
	"dept_name" VARCHAR (25)	not null
);

DROP TABLE IF EXISTS "dept_manager";
CREATE TABLE "dept_manager" 
(
	"dept_no" VARCHAR (10)	Not null,
	"emp_no" VARCHAR (6)	not null,
	"from_date" VARCHAR (10)	not null,
	"to_date" VARCHAR (10)	NOT NULL,
	PRIMARY KEY ("emp_no")

);

DROP TABLE IF EXISTS "salaries";
CREATE TABLE "salaries" 
(
	"emp_no" VARCHAR (6)	not null,
	"salary" FLOAT(10)		not null,
	"from_date" VARCHAR (10)	not null,
	"to_date" VARCHAR (10)	NOT NULL,
	PRIMARY KEY ("emp_no")

);

DROP TABLE IF EXISTS "titles";
CREATE TABLE "titles" 
(
	"emp_no" VARCHAR (6)	not null,
	"title" VARCHAR (20)	not null,
	"from_date" VARCHAR (10)	not null,
	"to_date" VARCHAR (10)	NOT NULL

);

