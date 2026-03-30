-- JOINS

SELECT*
FROM parks_and_recreation.employee_demographics;

SELECT*
FROM parks_and_recreation.employee_salary;

-- INNER JOIN
SELECT*
FROM parks_and_recreation.employee_demographics 
INNER JOIN parks_and_recreation.employee_salary 
  ON employee_demographics.employee_id = employee_salary.employee_id;
  
  
  SELECT*
FROM parks_and_recreation.employee_demographics AS DEM
INNER JOIN parks_and_recreation.employee_salary AS SAL
  ON DEM.employee_id = SAL.employee_id;
  
   SELECT DEM.employee_id, age, occupation
FROM parks_and_recreation.employee_demographics AS DEM
INNER JOIN parks_and_recreation.employee_salary AS SAL
  ON DEM.employee_id = SAL.employee_id;
  
  
 -- OUTER JOINS
 
   SELECT *
FROM parks_and_recreation.employee_demographics AS DEM
LEFT JOIN parks_and_recreation.employee_salary AS SAL
  ON DEM.employee_id = SAL.employee_id;
  
  SELECT *
FROM parks_and_recreation.employee_demographics AS DEM
RIGHT JOIN parks_and_recreation.employee_salary AS SAL
  ON DEM.employee_id = SAL.employee_id;
  
  -- SELF JOIN
  SELECT *
  FROM parks_and_recreation.employee_salary empl1
  JOIN parks_and_recreation.employee_salary empl2
  ON empl1.employee_id = empl2.employee_id;
  
  
  -- SELF JOIN
  SELECT 
  empl1.employee_id AS Emp_Santa, 
  empl1.first_name AS first_name_Santa, 
  empl1.last_name AS last_name_Santa,
  empl2.employee_id AS Emp_ID, 
  empl2.first_name AS first_name_Emp, 
  empl2.last_name AS last_name_Emp
  FROM parks_and_recreation.employee_salary empl1
  JOIN parks_and_recreation.employee_salary empl2
  ON empl1.employee_id +1 = empl2.employee_id;
  
  
  -- JOINING MULTIPLE TABLES
    SELECT *
FROM parks_and_recreation.employee_demographics AS DEM
INNER JOIN parks_and_recreation.employee_salary AS SAL
  ON DEM.employee_id = SAL.employee_id
  INNER JOIN parks_and_recreation.parks_departments AS Pd
  ON SAL.dept_id = Pd.department_id;
  
  SELECT*
  FROM parks_and_recreation.parks_departments;
  