====================================================
-- PROJECT 02: HR EMPLOYEE DATA ANALYSIS
====================================================
CREATE DATABASE hr_analysis;

USE hr_analysis;
------------------------------------------------------
-- Create Departments Table
------------------------------------------------------
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);
-------------------------------------------------------
-- Create Employees Table
-------------------------------------------------------
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    job_title VARCHAR(60),
    salary DECIMAL(10,2),
    hire_date DATE,
    city VARCHAR(50),
    employment_status VARCHAR(20),
    bonus DECIMAL(10,2),
    manager_id INT,
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);
---------------------------------------------------------
INSERT INTO departments VALUES
(1, 'Human Resources', 'Delhi'),
(2, 'Sales', 'Mumbai'),
(3, 'IT', 'Bangalore'),
(4, 'Finance', 'Delhi'),
(5, 'Marketing', 'Pune'),
(6, 'Operations', 'Chandigarh'),
(7, 'Customer Support', 'Jaipur'),
(8, 'Research and Development', 'Hyderabad');

INSERT INTO employees VALUES
(101,'Aarav','Sharma',3,'Software Engineer',75000,'2021-03-15','Delhi','Active',10000,201),
(102,'Priya','Verma',1,'HR Executive',42000,'2022-06-10','Mumbai','Active',5000,202),
(103,'Rahul','Gupta',2,'Sales Executive',38000,'2023-01-20','Delhi','Active',4000,203),
(104,'Ananya','Mehta',4,'Financial Analyst',65000,'2020-11-05','Pune','Active',8000,204),
(105,'Vikram','Singh',3,'Data Analyst',58000,'2022-08-12','Bangalore','Active',7000,201),
(106,'Sneha','Patel',5,'Marketing Manager',82000,'2019-04-18','Mumbai','Active',12000,205),
(107,'Karan','Malhotra',2,'Sales Manager',90000,'2018-07-22','Chandigarh','Active',15000,203),
(108,'Neha','Kapoor',1,'HR Manager',85000,'2017-09-14','Delhi','Active',10000,202),
(109,'Rohit','Yadav',6,'Operations Executive',35000,'2023-05-09','Jaipur','Active',NULL,206),
(110,'Isha','Reddy',3,'Database Administrator',72000,'2021-12-01','Hyderabad','Active',9000,201),
(111,'Arjun','Kumar',4,'Accountant',32000,'2022-02-16','Delhi','Active',3000,204),
(112,'Pooja','Nair',5,'Marketing Executive',45000,'2021-10-25','Pune','Resigned',NULL,205),
(113,'Aditya','Joshi',7,'Support Executive',28000,'2023-03-11','Mumbai','Active',2000,207),
(114,'Meera','Shah',3,'Python Developer',68000,'2020-06-19','Bangalore','Active',8000,201),
(115,'Sahil','Arora',2,'Sales Executive',41000,'2022-09-08','Delhi','Active',5000,203),
(116,'Kavya','Iyer',8,'Research Analyst',62000,'2021-01-13','Hyderabad','Active',7000,208),
(117,'Manish','Chauhan',6,'Operations Manager',78000,'2018-12-04','Chandigarh','Active',11000,206),
(118,'Riya','Bansal',1,'HR Executive',39000,'2023-07-17','Jaipur','Active',NULL,202),
(119,'Aman','Saxena',4,'Senior Accountant',55000,'2019-05-21','Mumbai','Resigned',6000,204),
(120,'Tanya','Mishra',5,'SEO Specialist',48000,'2022-04-07','Pune','Active',4000,205),
(121,'Dev','Chopra',3,'Software Engineer',88000,'2019-08-29','Delhi','Active',13000,201),
(122,'Simran','Kaur',7,'Support Manager',65000,'2020-10-15','Chandigarh','Active',8000,207),
(123,'Nikhil','Jain',2,'Sales Executive',33000,'2023-02-03','Jaipur','Resigned',NULL,203),
(124,'Aisha','Khan',8,'Data Scientist',95000,'2018-03-27','Hyderabad','Active',16000,208),
(125,'Varun','Das',6,'Operations Executive',37000,'2022-12-12','Delhi','Active',3000,206),
(126,'Diya','Agarwal',4,'Finance Manager',92000,'2017-06-08','Mumbai','Active',14000,204),
(127,'Yash','Thakur',3,'Web Developer',52000,'2023-04-19','Bangalore','Active',5000,201),
(128,'Nisha','Rao',1,'Recruiter',36000,'2022-07-23','Pune','Resigned',NULL,202),
(129,'Kabir','Sethi',5,'Marketing Manager',88000,'2016-09-30','Delhi','Active',15000,205),
(130,'Muskan','Gill',7,'Support Executive',30000,'2023-08-14','Jaipur','Active',2000,207),
(131,'Rajat','Pillai',8,'Research Scientist',105000,'2017-02-11','Hyderabad','Active',18000,208),
(132,'Shreya','Ghosh',2,'Sales Manager',78000,'2019-11-20','Mumbai','Active',12000,203),
(133,'Mohit','Rana',6,'Logistics Executive',44000,'2021-05-16','Chandigarh','Active',4000,206),
(134,'Palak','Sood',4,'Financial Analyst',61000,'2020-08-05','Delhi','Active',7000,204),
(135,'Harsh','Madan',3,'Data Engineer',82000,'2018-01-09','Bangalore','Active',11000,201),
(136,'Aditi','Sinha',5,'Content Writer',34000,'2023-06-21','Pune','Active',NULL,205),
(137,'Gaurav','Bhatia',7,'Customer Support',32000,'2022-10-02','Mumbai','Resigned',2000,207),
(138,'Ira','Desai',8,'Research Analyst',72000,'2021-04-14','Hyderabad','Active',9000,208),
(139,'Ankit','Mishra',2,'Sales Executive',47000,'2020-02-28','Delhi','Active',6000,203),
(140,'Sakshi','Puri',1,'HR Analyst',58000,'2019-07-12','Chandigarh','Active',7000,202),
(141,'Rohan','Kulkarni',3,'DevOps Engineer',97000,'2017-10-18','Bangalore','Active',15000,201),
(142,'Tina','Fernandes',5,'Social Media Manager',62000,'2020-03-06','Mumbai','Active',8500,205),
(143,'Parth','Goel',6,'Operations Analyst',49000,'2021-09-17','Jaipur','Active',5000,206),
(144,'Mahi','Chawla',4,'Auditor',46000,'2022-01-25','Delhi','Active',4000,204),
(145,'Kunal','Dutta',7,'Support Executive',27000,'2023-09-04','Pune','Active',NULL,207),
(146,'Zoya','Mirza',8,'Data Scientist',110000,'2016-05-30','Hyderabad','Active',20000,208),
(147,'Nitin','Saini',2,'Sales Executive',36000,'2022-11-11','Chandigarh','Active',3000,203),
(148,'Tara','Menon',1,'HR Executive',44000,'2021-06-16','Mumbai','Active',4500,202),
(149,'Abhishek','Roy',3,'Software Tester',55000,'2020-12-09','Delhi','Resigned',5000,201),
(150,'Lavanya','Prasad',6,'Operations Manager',85000,'2018-04-23','Chandigarh','Active',13000,206);
--------------------------------------------------------------------------------------------------------------
=============================
-- Check total employees
==============================
SELECT COUNT(*) FROM employees;

=============================
-- Check total departments
=============================
SELECT COUNT(*) FROM departments;
SELECT * FROM departments;

===============================
-- View employee records
===============================
SELECT * FROM employees;

----------------------------------------------------------------------------------------------------------------
===========================================================================
QUERY 01: Employee Filtering Based On Department and Salary
AIM: To identify employees based on specific department , salary and 
     employment status conditions.
B.QUE: Which employees work in the Sales department with a salary above
       40,000Rs or belong to the IT department,excluding all resigned 
       employees?
     ---------------------------------------------------------------
SELECT * 
FROM employees
WHERE(( department_id = 2 AND salary > 40000)
      OR department_id = 3) 
      AND employment_status != 'Resigned';

===========================================================================
 QUERY 02: Employee Identification Using Multiple Conditions
 AIM: To filter employees according to salary range, geographical location 
      and employment status.
B.OUE: Which employees earn between 30,000rs and 60,000, work in Delhi, 
       Mumbai or Chandigarh, and are currently active?
       -------------------------------------------------------------------
SELECT employee_id, first_name, last_name, salary, city
FROM employees
WHERE ((salary BETWEEN 30000 AND 60000)
      AND city IN ('Delhi' , 'Mumbai' , 'Chandigarh')
      AND employment_status = 'Active');
============================================================================

QUERY 03: Employee Search Using Multiple Filters
AIM: To identify employees based on department, salary range and first-name 
     patterns. 
B.QUE: Which employees belong to departments 1, 2 or 4, earn between 25000rs 
       and 70000rs and have first names starting with the letter 'A'?
       ----------------------------------------------------------------------
SELECT *
FROM employees
WHERE (department_id IN(1,2,4)
       AND salary BETWEEN 25000 AND 70000
       AND first_name LIKE 'A%');
===========================================================================

QUERY 04: Employee Identification Through Name and Job Title
AIM: To search employee records using specific text patterns and salary
     conditions.
B.OUE: Which employees have last names ending with 'a', job titles 
      containing 'Manager', and salaries above 35000rs?
      ---------------------------------------------------------------------
SELECT *
FROM employees
WHERE last_name LIKE '%a'
      AND job_title LIKE '%Manager%'
      AND salary > 35000 ;
===========================================================================
QUERY 05: Unique Cities and Highest-Paid Employees
AIM: To explore employee geographical distribution and identify the highest
     -paid employees.
B.QUE: What are the unique cities represented in the employee database, and
      who are the five highest-paid employees?
      ----------------------------------------------------------------------
--Unique cities
----------------
SELECT DISTINCT city
FROM employees
ORDER BY city;
-------------------------------
-Top 5 highest-paid employees
--------------------------------
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;
===========================================================================
QUERY 06: Overall Salary Analysis
AIM: To calculate the overall salary satistics of the organization.
B.QUE: What is the total number of employees, total salary expenditure and 
      average salary of the organization?
      ---------------------------------------------------------------------
SELECT COUNT(*) AS total_employees,
       SUM(salary) AS total_salary_expenditure,
       ROUND(AVG(salary),2) AS average_salary
FROM employees;
===========================================================================
QUERY 07: Minimum and Maximum Salary and Bonus Analysis
AIM: To identify the highest and lowest salary and bonus values within the 
     organization.
B.QUE: What are the maximum an minimum salaries and bonuses recorded in the
      employee database?
      ---------------------------------------------------------------------
SELECT 
      MIN(salary) AS minimum_salary,
      MAX(salary) AS maximum_salary,
      MIN(bonus) AS minimum_bonus,
      MAX(bonus) AS maximum_bonus
FROM employees;
===========================================================================
QUERY 08: Department Wise Emloyee Distribution
AIM: To analyse how employees are distributed across different departments.
B.QUE: How many employees are working in each department?
      ---------------------------------------------------------------------
SELECT 
       department_id,
      COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
ORDER BY department_id ASC;
===========================================================================
QUERY 09: Department-Wise Salary Analysis
AIM: To evaluate salary expenditure and average salary across different 
     departments.
B.QUE: What is the tota salary expenditure and average employee salary for
	  each department, and which departments have the highest average salary?
      -----------------------------------------------------------------------
SELECT 
      department_id,
      SUM(salary) AS total_salary_exp,
      ROUND(AVG(salary),2) AS avg_salary
FROM employees 
GROUP BY department_id
ORDER BY avg_salary DESC;
============================================================================
QUERY 10: Departments With High Average Salaries
AIM: To identify departments with comparatively higher average salary levels.
B.QUE: Which departments have an average employee salary greater than 45000rs?
       ------------------------------------------------------------------------
SELECT 
       department_id,
       ROUND(AVG(salary),2) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary)>45000;
==========================================================================
QUERY 11: Departments With More Than Three Employees
AIM: To identify departments having a large employee workforce.
B.QUE: Which departments have more than three employees?
      ---------------------------------------------------------------------
SELECT 
      department_id,
      COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*)>3;
===========================================================================
QUERY 12: Employee Salary Classification
AIM: To categorize employees according to their salary levels.
B.QUE: How can employees be classified into High Salary, Medium Salary and
       Low Salary categories based on their salary?
       --------------------------------------------------------------------
SELECT 
      employee_id,
      first_name,
      last_name,
      salary,
CASE
     WHEN salary >=75000 THEN 'High'
     WHEN salary >= 60000 THEN 'Medium'
     ELSE 'Low'
     END AS salary_category
FROM employees;
===========================================================================
QUERY 13: Employee Employment Status Classification
AIM: To create meaningful employment categories based on employee status.
B.QUE: How can employees be classified as currently working or former 
       employee based on their employment status?
       --------------------------------------------------------------------
SELECT 
      employee_id,
      first_name,
      last_name,
      employment_status,
CASE 
    WHEN employment_status = 'Active'
       THEN 'Currently Working'
	WHEN employment_status = 'Resigned'
       THEN 'Former Employee'
	ELSE 'Unknown Status'
END AS employee_category
FROM employees;
===========================================================================
QUERY 14: Handling Missing Employee Bonus Values
AIM: To identify and handle missing bonus values in employee records.
B.QUE: Which employees have the missing bonus information, and how can NULL
	 bonus values be displayed as zero without modifying the original 
     database?
     ----------------------------------------------------------------------
SELECT 
      employee_id,
      first_name,
      bonus,
      COALESCE(bonus,0) AS updated_bonus
FROM employees;
============================================================================
QUERY 15: Employee Details With Department Information
AIM: To combine employee records with their corresponding department
      information.
B.QUE: What are the employee details, including employee ID, full name, 
      job title, salary and department name?
      ----------------------------------------------------------------------
SELECT 
     e.employee_id,
     CONCAT(e.first_name,' ',last_name) AS employee_name,
     e.job_title,
     e.salary,
     d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id=d.department_id;
===========================================================================
QUERY 16: Identifying All Departments and Their Employees
AIM: To retrieve all department records including departments that may not
     have any employees assigned.
B.QUE: Which employees belong to each department, and how can we display 
       all departments even if no employee is associated with them?
       -------------------------------------------------------------------
SELECT 
      d.department_name,
      e.employee_id, 
      CONCAT(e.first_name,' ',last_name) AS employee_name
FROM departments d
LEFT JOIN employees e
ON d.department_id=e.department_id;

SELECT 
      d.department_name,
      e.employee_id, 
      CONCAT(e.first_name,' ',last_name) AS employee_name
FROM employees e
RIGHT JOIN departments d 
ON e.department_id=d.department_id;
===========================================================================
QUERY 17: Combining Employee and Department Location Data
AIM: To create a combined list of geographical locations from employee and 
     department records.
B.QUE: What are the unique and complete lists of cities obtained by 
       combining employee cities and department locations?
       --------------------------------------------------------------------
SELECT city AS location
FROM employees
UNION
SELECT location
FROM departments;
      
SELECT city AS location
FROM employees
UNION ALL
SELECT location
FROM departments;
=========================================================================== 
QUERY 18: Employee Information Formatting and Transformation
AIM: To generate a formatted employee report using SQL functions.
B.QUE: How can employee names, joining year, joining month, rounded salary
       and first-name lenght be displayed in a single report?
       -------------------------------------------------------------------
SELECT 
      employee_id,
      CONCAT(first_name,' ',last_name) AS full_name,
      YEAR(hire_date) AS joining_year,
      MONTH(hire_date) AS joining_month,
      Round(salary,-3) AS rounded_salary,
      LENGTH(first_name) AS name_length
FROM employees;
===========================================================================
QUERY 19: Employees Earning Above Average Salary
AIM: Identify employees earning more than the company average salary.
B.QUE: Whichh employees have a salary higher than the overall average salary?
       ----------------------------------------------------------------------
SELECT 
      employee_id,
      first_name,
      last_name,
      salary
FROM employees
WHERE salary >(
   SELECT AVG(salary)
   FROM employees
   );
===========================================================================
QUERY 20: Highest Paid Employee in Each Department
AIM: Identify the highest paid employee in every department.
B.QUE: Who earns the highest salary in each department?
      ---------------------------------------------------------------------
SELECT 
      e.employee_id,
      e.first_name,
      e.last_name,
      e.department_id,
      e.salary
FROM employees e
WHERE e.salary = (
      SELECT MAX(e2.salary) 
      FROM employees e2
      WHERE e2.department_id=e.department_id
   );   
==========================================================================
QUERY 21: Department Above Company Average Salary
AIM: Identify departments whose average salary exceeds the companys overall
     salary .     
B.QUE: Which departments have an average salary higher than the company-
       wide average?
       --------------------------------------------------------------------
SELECT 
      department_id,
      AVG(salary) AS avg_department_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary)>(
        SELECT AVG(salary)
        FROM employees
);
===========================================================================
QUERY 22: Employees Earning More Than IT Department Average
AIM: Find employees whose salary is greater than the average salary of IT
     department employees.
B.QUE: Which employees earn more than the average salary of the IT department?
       -----------------------------------------------------------------------
SELECT 
       employee_id,
       CONCAT(first_name,' ',last_name) AS employee_name,
       salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = 3
);
===========================================================================
QUERY 23: Second Highest Salary
AIM: Find the Second Highest distinct salary in the company.
B.QUE: What is the second-highest salary paid by the company?
       --------------------------------------------------------------------
SELECT 
      MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
     SELECT MAX(salary)
     FROM employees
);
===========================================================================
QUERY 24: Department_wise Average Salary Using CTE
AIM: Calculate the average salary of every department using a temporary 
     named result.
B.QUE: What is the average salary of each department?
      ---------------------------------------------------------------------
 WITH department_salary AS (
     SELECT
           department_id,
           AVG(salary) AS avg_salary
	FROM employees
    GROUP BY department_id
    )
SELECT *
FROM department_salary;
===========================================================================
QUERY 25: Departments With Average Salary Above 45000rs
AIM: Identify departments with an average salary above 45000rs.
B.QUE: Which departments have an average salary greater than 45000rs?
      ---------------------------------------------------------------------
WITH department_salary AS (
      SELECT 
            department_id,
            MAX(salary) AS avg_salary
	  FROM employees
      GROUP BY department_id
)
SELECT  *
FROM department_salary
WHERE avg_salary > 45000;
===========================================================================
QUERY 26: Employees Earning Above Their Department Average
AIM: Compare each employee salary with their own department average salary.
B.QUE: Which employees earn more than the average salary of their respective
       departments?
       -------------------------------------------------------------------
WITH department_avg AS (
     SELECT
           department_id,
           AVG(salary) AS avg_salary
      FROM employees
      GROUP BY department_id
)
SELECT 
     e.employee_id,
     e.first_name,
     e.last_name,
     e.salary,
     d.avg_salary
FROM employees e
JOIN department_avg d
   ON e.department_id=d.department_id
WHERE e.salary>d.avg_salary;
===========================================================================
QUERY 27: Department Salary Expenditure
AIM: Calculate the total salary expenditure and employee count of each 
     department.
B.QUE: How many employees work in each department, and how much does the
      company spend on their salaries?
      ---------------------------------------------------------------------
WITH department_summary AS (
      SELECT 
         department_id,
         COUNT(*) AS total_employees,
         SUM(salary) AS total_salary
	 FROM employees
     GROUP BY department_id
 )
 SELECT *
 FROM department_summary
 ORDER BY total_salary DESC;
===========================================================================
QUERY 28: Employee Row Number Based On Salary
AIM: Assign a unique row number to each employee according to salary.
B.QUE: What is the salary-wise order of employees from highest to lowest?
       --------------------------------------------------------------------
SELECT 
	employee_id,
    first_name,
    last_name,
    salary,
    ROW_NUMBER() OVER (
      ORDER BY salary DESC
	) AS row_num
FROM employees;
===========================================================================
QUERY 29: Employee Salary Ranking
AIM: Rank all employees according to their salaries.
B.QUE: What is the salary rank of each employee in the company?
      ---------------------------------------------------------------------
SELECT 
	employee_id,
    first_name,
    last_name,
    salary,
    RANK() OVER (
      ORDER BY salary DESC
	) AS salary_rank
FROM employees;
===========================================================================
QUERY 30: Department-wise Employee Ranking
AIM: Rank employees within their respective departments based on salary.
B.QUE: Who are the top-ranked employeees in ech department?
		-------------------------------------------------------------------
SELECT  
      employee_id,
      first_name,
      last_name,
      department_id,
      salary,
      DENSE_RANK() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
	  ) AS department_rank
  FROM employees;
===========================================================================
QUERY 31: Compare Salary With Previous Employee
AIM: Compare an employee salary with the previous employee salary within the
     same department.
B.QUE: How does each employee salary compare with the previous salary in
	   their department?
       --------------------------------------------------------------------
SELECT
     employee_id,
     first_name,
     last_name,
     salary,
     LAG(salary) OVER (
       PARTITION BY department_id
       ORDER BY salary
	) AS previous_salary
FROM employees;
===========================================================================
QUERY 32: Compare Salary with Next Employee
AIM: Display the next employee salary within the same department.
B.QUE: What is the next employee salary when employees are arranged by salary
       within each department?
       ----------------------------------------------------------------------
SELECT
     employee_id,
     first_name,
     last_name,
     salary,
     LEAD(salary) OVER (
       PARTITION BY department_id
       ORDER BY salary
	) AS next_salary
FROM employees;
=============================================================================
QUERY 33: Running Total of Employee Salaries
AIM: Calculate the cumulative salary total based on employee hiring dates.
B.QUE: How does the cumulative salary total change as employees join the 
      company?
      ----------------------------------------------------------------------
SELECT
       employee_id,
       first_name,
       hire_date,
       salary,
       SUM(salary) OVER (
         ORDER BY hire_date,
         employee_id
              ROWS BETWEEN UNBOUNDED
		  PRECEDING
              AND CURRENT ROW
	 ) AS running_total
 FROM employees;
=============================================================================
QUERY 34: Create Employee Details View
AIM: Create a reusable view containing important employee and department 
     information.
B.QUE: Can HR access employee details and department names together without 
      writing the JOIN query repeatedly?
      ------------------------------------------------------------------------
CREATE VIEW employee_details AS 
SELECT
     e.employee_id,
     e.first_name,
     e.last_name,
     d.department_name,
     e.job_title,
     e.salary,
     e.employment_status
 FROM employees  e
 INNER JOIN departments d
   ON e.department_id =
   d.department_id;
   
   ------------------
   To view the data
   ------------------
   SELECT *
   FROM employee_details;
==============================================================================
QUERY 35: Create Index On Salary
AIM: Create an index on the salary column to support salary-based searches.
B.QUE: How can we create an index that may improve queries filtering employees
       by salary?
       ------------------------------------------------------------------------
CREATE INDEX idx_employee_salary
ON employees(salary);

---------------------------------------------
To check index
---------------------------------------------
SHOW INDEX FROM employees;
================================================================================