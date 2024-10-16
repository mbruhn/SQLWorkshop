 
 /*Create tables*/
 /* drop table departments;
  drop table departments_row;
  drop TABLE dept_emp;
  drop TABLE dept_emp_row;
  drop TABLE dept_manager;
  drop TABLE dept_manager_row;
  drop table employees;
  drop table employees_row;
  drop table salaries;
  drop table salaries_row;
  drop table titles;
  drop table titles_row;
  */
  
  
  CREATE COLUMN TABLE departments 
  (  dept_no NVARCHAR(4) primary key,
    dept_name NVARCHAR(40));
  
  CREATE ROW TABLE departments_row 
  (  dept_no NVARCHAR(4) primary key,
    dept_name NVARCHAR(40));
  
  CREATE COLUMN TABLE dept_emp
  (      
    emp_no Integer,
    dept_no nvarchar(4),
    from_date date,
    to_date  date,
    primary key (emp_no , dept_no)
   );
    
  CREATE ROW TABLE dept_emp_row
  (      
    emp_no Integer,
    dept_no nvarchar(4),
    from_date date,
    to_date  date,
    primary key (emp_no , dept_no)
   );
  
    
  CREATE COLUMN TABLE dept_manager
  (      
    emp_no Integer,
    dept_no nvarchar(4),
    from_date date,
    to_date  date,
    primary key (emp_no , dept_no)
   ); 
  
  CREATE ROW TABLE dept_manager_row
  (      
    emp_no Integer,
    dept_no nvarchar(4),
    from_date date,
    to_date  date,
    primary key (emp_no , dept_no)
   ); 
   
    
  CREATE COLUMN TABLE employees
  (      
    emp_no Integer,
	birth_date date,
	first_name nvarchar(40),
	last_name nvarchar(40),
	gender nvarchar(1),
	hire_date date,
    primary key (emp_no)
   ); 
  
    
  CREATE ROW TABLE employees_row
  (      
    emp_no Integer,
	birth_date date,
	first_name nvarchar(40),
	last_name nvarchar(40),
	gender nvarchar(1),
	hire_date date,
    primary key (emp_no)
   ); 
    

  CREATE COLUMN TABLE salaries
  (      
    emp_no Integer,
	from_date date,
	
	salary decimal(17,3),
	to_date date,
	primary key (emp_no, from_date)
   );
    
  CREATE ROW TABLE salaries_row
  (      
    emp_no Integer,
	from_date date,
	
	salary decimal(17,3),
	to_date date,
	primary key (emp_no, from_date)
   );  
   
  
  CREATE COLUMN TABLE titles
  (      
    emp_no Integer,
    title  nvarchar(40),
	from_date date,
    to_date date,
	primary key (emp_no, title, from_date)
   );  
   

  CREATE ROW TABLE titles_row
  (      
    emp_no Integer,
    title  nvarchar(40),
	from_date date,
    to_date date,
	primary key (emp_no, title, from_date)
   );  
   
   
   
   
/*Load data into _ROW tables first - 
  Then execute the following lines */
/*  select 'Departments' as tablename, count(*) from departments union all
  select 'Departments_row' as tablename, count(*) from departments_row union all 
  select 'dept_emp' as tablename, count(*) from dept_emp union all
  select 'dept_emp_row' as tablename, count(*) from dept_emp_row union all
  select 'dept_manager' as tablename, count(*) from dept_manager union all
  select 'dept_manager_row' as tablename, count(*) from dept_manager_row union all
  select 'employees' as tablename, count(*) from employees union all
  select 'employees_row' as tablename, count(*) from employees_row union all
  select 'salaries' as tablename, count(*) from salaries union all
  select 'salaries_row' as tablename, count(*) from salaries_row union all
  select 'titles' as tablename, count(*) from  titles union all
  select 'titles_row' as tablename, count(*) from titles_row ;
*/

/*Replicate table from row tables into column based*/
/*  INSERT INTO departments SELECT * FROM departments_row;
  INSERT INTO dept_emp SELECT * FROM dept_emp_row;
  INSERT INTO dept_manager SELECT * FROM dept_manager_row;
  INSERT INTO employees SELECT * FROM employees_row;
  INSERT INTO salaries SELECT * FROM salaries_row;
  INSERT INTO titles SELECT * FROM titles_row;
  */
  
  
  
  
  -- CREATE ROLE WORKSHOP_TESTDATA
  -- GRANT select on  to _SYS_REPO with grant option;

  /*Grant access to tables and schemas to _sys_repo
     - and other users who whould be able to read them 

  */
