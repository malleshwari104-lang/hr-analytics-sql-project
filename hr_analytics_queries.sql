# HR Analytics SQL Project

**Database:** MySQL  
**Tables:** `employees`, `departments`

**Dataset columns**

- `employees`: `employee_id`, `name`, `gender`, `department_id`, `job_title`, `salary`, `hire_date`, `manager_id`, `employment_status`
- `departments`: `department_id`, `department_name`

The data is fictional and includes intentional data-quality cases for practice.

## Q1–Q10: Basic SQL

```sql
-- Q1. Retrieve the first 10 employees.
SELECT *
FROM employees
LIMIT 10;

-- Q2. Find unique job titles.
SELECT DISTINCT job_title
FROM employees
ORDER BY job_title;

-- Q3. Find employees earning more than 50,000.
SELECT employee_id, name, job_title, salary
FROM employees
WHERE salary > 50000;

-- Q4. Find the 5 highest-paid employees.
SELECT employee_id, name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- Q5. Find Data Analysts earning more than 40,000.
SELECT employee_id, name, salary
FROM employees
WHERE job_title = 'Data Analyst'
  AND salary > 40000;

-- Q6. Find employees with missing salaries.
SELECT employee_id, name, salary
FROM employees
WHERE salary IS NULL;

-- Q7. Find employees in HR or Finance.
SELECT e.employee_id, e.name, d.department_name
FROM employees e
JOIN departments d
  ON e.department_id = d.department_id
WHERE d.department_name IN ('HR', 'Finance');

-- Q8. Find employees earning between 30,000 and 60,000.
SELECT employee_id, name, salary
FROM employees
WHERE salary BETWEEN 30000 AND 60000;

-- Q9. Find employees whose names start with A.
SELECT employee_id, name
FROM employees
WHERE name LIKE 'A%';

-- Q10. Count employee records.
SELECT COUNT(*) AS total_employee_records
FROM employees;
```

## Q11–Q20: Data Quality and Aggregations

```sql
-- Q11. Find employees without a department.
SELECT employee_id, name, department_id
FROM employees
WHERE department_id IS NULL;

-- Q12. Identify duplicate employee IDs.
SELECT employee_id, COUNT(*) AS record_count
FROM employees
GROUP BY employee_id
HAVING COUNT(*) > 1;

-- Q13. Replace missing or unmatched department names with Unknown.
SELECT e.employee_id,
       e.name,
       COALESCE(d.department_name, 'Unknown') AS department_name
FROM employees e
LEFT JOIN departments d
  ON e.department_id = d.department_id;

-- Q14. Find employees with zero or negative salaries.
SELECT employee_id, name, salary
FROM employees
WHERE salary <= 0;

-- Q15. Count employees in every department, including departments with zero employees.
SELECT d.department_name,
       COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
  ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY employee_count DESC;

-- Q16. Calculate average salary by department ID.
SELECT department_id,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

-- Q17. Find department IDs with more than 10 employee records.
SELECT department_id,
       COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 10;

-- Q18. Calculate total salary expenditure by department ID.
SELECT department_id,
       SUM(salary) AS total_salary_expenditure
FROM employees
GROUP BY department_id;

-- Q19. Find job titles with at least 5 employee records.
SELECT job_title,
       COUNT(*) AS employee_count
FROM employees
GROUP BY job_title
HAVING COUNT(*) >= 5
ORDER BY employee_count DESC;

-- Q20. Find minimum and maximum salary by department.
SELECT department_id,
       MIN(salary) AS minimum_salary,
       MAX(salary) AS maximum_salary
FROM employees
GROUP BY department_id;
```

## Q21–Q30: CASE, Joins, Subqueries and Window Functions

```sql
-- Q21. Categorize employee salaries.
SELECT employee_id,
       name,
       salary,
       CASE
           WHEN salary IS NULL THEN 'Unknown'
           WHEN salary < 30000 THEN 'Low'
           WHEN salary <= 60000 THEN 'Medium'
           ELSE 'High'
       END AS salary_category
FROM employees;

-- Q22. Display employees with their department names.
SELECT e.employee_id,
       e.name,
       d.department_name
FROM employees e
INNER JOIN departments d
  ON e.department_id = d.department_id;

-- Q23. Display all employees, including those without a matching department.
SELECT e.employee_id,
       e.name,
       d.department_name
FROM employees e
LEFT JOIN departments d
  ON e.department_id = d.department_id;

-- Q24. Find employees whose department ID has no matching department.
SELECT e.employee_id,
       e.name,
       e.department_id
FROM employees e
LEFT JOIN departments d
  ON e.department_id = d.department_id
WHERE d.department_id IS NULL;

-- Q25. Display every department and its employee count.
SELECT d.department_id,
       d.department_name,
       COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
  ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY d.department_id;

-- Q26. Calculate average salary by department name.
SELECT d.department_name,
       AVG(e.salary) AS average_salary
FROM departments d
JOIN employees e
  ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY average_salary DESC;

-- Q27. Find employees earning above the overall average salary.
SELECT employee_id, name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- Q28. Find employees earning above their department's average salary.
WITH department_averages AS (
    SELECT department_id,
           AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT e.employee_id,
       e.name,
       e.department_id,
       e.salary,
       da.average_salary
FROM employees e
JOIN department_averages da
  ON e.department_id = da.department_id
WHERE e.salary > da.average_salary;

-- Q29. Rank employees by salary within each department.
SELECT employee_id,
       name,
       department_id,
       salary,
       DENSE_RANK() OVER (
           PARTITION BY department_id
           ORDER BY salary DESC
       ) AS salary_rank
FROM employees;

-- Q30. Find employees in the top 3 salary ranks in each department.
WITH ranked_employees AS (
    SELECT employee_id,
           name,
           department_id,
           salary,
           DENSE_RANK() OVER (
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS salary_rank
    FROM employees
)
SELECT employee_id,
       name,
       department_id,
       salary,
       salary_rank
FROM ranked_employees
WHERE salary_rank <= 3
ORDER BY department_id, salary_rank;
```

## Q31–Q40: Advanced HR Analytics

```sql
-- Q31. Find employees earning more than their managers.
SELECT e.employee_id,
       e.name AS employee_name,
       e.salary AS employee_salary,
       m.name AS manager_name,
       m.salary AS manager_salary
FROM employees e
JOIN employees m
  ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;

-- Q32. Count employees hired in each year.
SELECT YEAR(hire_date) AS hire_year,
       COUNT(*) AS employee_count
FROM employees
WHERE hire_date IS NOT NULL
GROUP BY YEAR(hire_date)
ORDER BY hire_year;

-- Q33. Find employees hired during the last 3 years.
SELECT employee_id, name, hire_date
FROM employees
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR)
  AND hire_date <= CURDATE()
ORDER BY hire_date DESC;

-- Q34. Count employees hired in 2025 by department.
SELECT d.department_name,
       COUNT(e.employee_id) AS employees_hired_2025
FROM departments d
JOIN employees e
  ON d.department_id = e.department_id
WHERE e.hire_date >= '2025-01-01'
  AND e.hire_date < '2026-01-01'
GROUP BY d.department_id, d.department_name
ORDER BY employees_hired_2025 DESC;

-- Q35. Find employees without a manager assigned.
SELECT employee_id, name
FROM employees
WHERE manager_id IS NULL;

-- Q36. Find the department with the highest average salary.
SELECT d.department_name,
       AVG(e.salary) AS average_salary
FROM departments d
JOIN employees e
  ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY average_salary DESC
LIMIT 1;

-- Q37. Find employees who share their salary with another employee record.
SELECT employee_id, name, salary
FROM employees
WHERE salary IN (
    SELECT salary
    FROM employees
    WHERE salary IS NOT NULL
    GROUP BY salary
    HAVING COUNT(*) > 1
)
ORDER BY salary DESC;

-- Q38. Find employees earning more than their department's average.
SELECT e.employee_id,
       e.name,
       e.department_id,
       e.salary
FROM employees e
JOIN (
    SELECT department_id,
           AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
) da
  ON e.department_id = da.department_id
WHERE e.salary > da.average_salary;

-- Q39. Calculate attrition rate for each assigned department.
SELECT department_id,
       COUNT(*) AS total_employees,
       SUM(
           CASE
               WHEN employment_status = 'Exited' THEN 1
               ELSE 0
           END
       ) AS exited_employees,
       ROUND(
           100.0 * SUM(
               CASE
                   WHEN employment_status = 'Exited' THEN 1
                   ELSE 0
               END
           ) / COUNT(*),
           2
       ) AS attrition_rate_percent
FROM employees
WHERE department_id IS NOT NULL
GROUP BY department_id
ORDER BY attrition_rate_percent DESC;

-- Q40. Find the top 3 departments by attrition rate.
WITH department_attrition AS (
    SELECT department_id,
           COUNT(*) AS total_employees,
           SUM(
               CASE
                   WHEN employment_status = 'Exited' THEN 1
                   ELSE 0
               END
           ) AS exited_employees,
           ROUND(
               100.0 * SUM(
                   CASE
                       WHEN employment_status = 'Exited' THEN 1
                       ELSE 0
                   END
               ) / COUNT(*),
               2
           ) AS attrition_rate_percent
    FROM employees
    WHERE department_id IS NOT NULL
    GROUP BY department_id
)
SELECT department_id,
       total_employees,
       exited_employees,
       attrition_rate_percent
FROM department_attrition
ORDER BY attrition_rate_percent DESC
LIMIT 3;
```

## Project Notes

- `COUNT(*)` counts records, including any intentionally duplicated record.
- `DENSE_RANK()` assigns the same rank to employees with equal salaries.
- Attrition rate is calculated as exited employee records divided by all employee records in the department, multiplied by 100.
- Q28 and Q38 intentionally practice the same business question using different SQL approaches.
- The last-3-years query uses the current date, so results change over time.
