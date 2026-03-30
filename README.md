# sql-joins-clause
 JOINS

This  demonstrates how to combine data from multiple tables using different types of SQL joins.

---

## 🔍 Key Concepts

### What are Joins?

Joins allow you to combine two or more tables based on a related column (e.g., `employee_id`).

---

## 🔗 Types of Joins Covered

### 1. INNER JOIN

* Returns only matching rows from both tables

```sql
SELECT *
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
  ON DEM.employee_id = SAL.employee_id;
```
<img width="1897" height="942" alt="image" src="https://github.com/user-attachments/assets/b3d6e098-75b5-4c8c-8d14-3b5e91045936" />

---

### 2. LEFT JOIN

* Returns all rows from the left table
* Returns matching rows from the right table
* Non-matching rows will contain NULLs

```sql
SELECT *
FROM employee_demographics AS DEM
LEFT JOIN employee_salary AS SAL
  ON DEM.employee_id = SAL.employee_id;
```
<img width="1782" height="940" alt="image" src="https://github.com/user-attachments/assets/3a9ff49d-3cd1-49f8-9b5d-f10a76f730ea" />

---

### 3. RIGHT JOIN

* Returns all rows from the right table
* Returns matching rows from the left table
* Non-matching rows will contain NULLs

```sql
SELECT *
FROM employee_demographics AS DEM
RIGHT JOIN employee_salary AS SAL
  ON DEM.employee_id = SAL.employee_id;
```
<img width="1817" height="953" alt="image" src="https://github.com/user-attachments/assets/d36433be-9de2-415d-a330-62a424eafa63" />

---

### 4. SELF JOIN

* Joins a table to itself
* Useful for comparisons within the same table

```sql
SELECT *
FROM employee_salary empl1
JOIN employee_salary empl2
  ON empl1.employee_id = empl2.employee_id;
```
<img width="1785" height="892" alt="image" src="https://github.com/user-attachments/assets/454a152d-2329-459a-83ba-422cc363236a" />

---

### 5. SELF JOIN (Practical Example)

Assigning employees (e.g., Secret Santa)

```sql
SELECT 
  empl1.employee_id AS Emp_Santa, 
  empl1.first_name AS first_name_Santa, 
  empl1.last_name AS last_name_Santa,
  empl2.employee_id AS Emp_ID, 
  empl2.first_name AS first_name_Emp, 
  empl2.last_name AS last_name_Emp
FROM employee_salary empl1
JOIN employee_salary empl2
  ON empl1.employee_id + 1 = empl2.employee_id;
```
<img width="1796" height="945" alt="image" src="https://github.com/user-attachments/assets/9f0228ee-26a0-4176-972a-b9c72543abfc" />

---

### 6. Joining Multiple Tables

Combining more than two tables

```sql
SELECT *
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
  ON DEM.employee_id = SAL.employee_id
INNER JOIN parks_departments AS PD
  ON SAL.dept_id = PD.department_id;
```
<img width="1841" height="929" alt="image" src="https://github.com/user-attachments/assets/484152d1-e858-43b7-a24f-873de1383f8b" />

---

## 🧠 Summary

| Join Type     | Description               |
| ------------- | ------------------------- |
| INNER JOIN    | Only matching rows        |
| LEFT JOIN     | All left + matching right |
| RIGHT JOIN    | All right + matching left |
| SELF JOIN     | Table joined to itself    |
| MULTIPLE JOIN | Combine 3+ tables         |

---

## 🚀 Author
**winnie Ngamau**


