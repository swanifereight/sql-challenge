
create table titles(
	title_id VARCHAR(30),
	title VARCHAR(30),
	PRIMARY KEY (title_id)
);


create table departments(
	dept_no VARCHAR (30),
	dept_name VARCHAR (30)
	PRIMARY KEY (dept_no)
);

create table dept_emp(
	emp_no int,
	dept_no VARCHAR (30),
	FOREIGN KEY (emp_title_id)
);

create table dept_manager(
	dept_no VARCHAR (30),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (dept_no, emp_no)
	);

create table employees(
	emp_no INT,
	emp_title_id VARCHAR(30),
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date VARCHAR(30),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
	PRIMARY KEY (emp_no)

	);
	
create table salaries(
	emp_no INT,
	salary INT,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
	);
	

