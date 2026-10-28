# HR Analytics Project | SQL & Power BI

## 📌 Project Overview

The HR Analytics Project uses **MySQL and Microsoft Power BI** to analyze employee data and present meaningful insights about workforce distribution, salary expenditure, hiring trends, and employment status.

The project combines SQL-based data analysis with an interactive Power BI dashboard to demonstrate practical data analyst skills and support HR decision-making.

## 🎯 Business Objectives

- Analyze total employees and employment status.
- Identify employee distribution across departments.
- Compare total and average salaries across departments.
- Analyze employee hiring trends by year.
- Identify employees earning above overall and department-level average salaries.
- Analyze employee attrition rates by department.
- Explore employee information through interactive dashboard filters.

## 🛠️ Tools & Technologies

- **MySQL 8.0+** — SQL queries and HR data analysis.
- **Microsoft Power BI Desktop** — Interactive dashboard development.
- **DAX** — KPI measures and calculations.
- **Power Query** — Data preparation and data type validation.
- **CSV** — Dataset format.

## 📂 Project Structure

```text
HR-Analytics-SQL-Project/
│
├── employees.csv
├── departments.csv
├── hr_analytics_queries.sql
├── README.md
└── hr_dashboard.png        (optional)
```

The dashboard image is optional. The Power BI report file (`.pbix`) can also be uploaded to the repository.

## 📊 Dataset Description

The project uses two related tables.

### 1. Employees

| Column | Description |
|---|---|
| `employee_id` | Employee identifier |
| `name` | Employee name |
| `gender` | Employee gender |
| `department_id` | Department identifier |
| `job_title` | Employee job title |
| `salary` | Employee salary |
| `hire_date` | Employee hiring date |
| `manager_id` | Manager's employee identifier |
| `employment_status` | Employee employment status |

### 2. Departments

| Column | Description |
|---|---|
| `department_id` | Department identifier |
| `department_name` | Department name |

**Relationship:** The `department_id` column connects the Employees table to the Departments table. One department can have multiple employees.

*The dataset is fictional and includes intentional data-quality cases for practice.*

## 🗄️ SQL Analysis — 40 Questions

The SQL analysis is organized into four sections, progressing from basic querying to advanced HR analytics.

### Section 1: Basic SQL (Q1–Q10)

- Retrieve employee records.
- Find unique job titles.
- Filter employees by salary and job title.
- Identify employees with missing salaries.
- Filter employees by department.
- Use `BETWEEN`, `LIKE`, and `DISTINCT`.
- Count employee records.

### Section 2: Data Quality and Aggregations (Q11–Q20)

- Identify employees without a department.
- Check for duplicate employee IDs.
- Handle missing or unmatched department names in query results.
- Find zero or negative salaries.
- Count employees by department.
- Calculate average, total, minimum, and maximum salaries.
- Analyze employee counts by job title.

### Section 3: CASE, Joins, Subqueries and Window Functions (Q21–Q30)

- Categorize salaries using `CASE`.
- Combine employee and department information using `INNER JOIN` and `LEFT JOIN`.
- Identify employees with unmatched department IDs.
- Calculate department-level salary averages and employee counts.
- Find employees earning above the overall average salary.
- Compare employee salaries with department averages.
- Rank employees by salary within departments.
- Identify employees in the top three salary ranks per department.

### Section 4: Advanced HR Analytics (Q31–Q40)

- Compare employee salaries with their managers' salaries.
- Count employees hired in each year.
- Find employees hired during the last three years.
- Count employees hired in 2025 by department.
- Identify employees without an assigned manager.
- Find the department with the highest average salary.
- Identify employees sharing the same salary.
- Calculate department-level salary comparisons.
- Calculate attrition rates by department.
- Identify the three departments with the highest attrition rates.

### SQL Concepts Practiced

`SELECT`, `WHERE`, `ORDER BY`, `DISTINCT`, `LIMIT`, `LIKE`, `BETWEEN`, `IS NULL`, aggregate functions, `GROUP BY`, `HAVING`, `CASE`, `COALESCE`, `INNER JOIN`, `LEFT JOIN`, subqueries, CTEs, date functions, `DENSE_RANK()`, and window functions.

## 📈 Power BI Dashboard

An interactive HR Analytics dashboard was developed using the same employee and department dataset.

### KPI Cards

The dashboard displays five key metrics:

1. **Total Employees** — Unique employee count.
2. **Active Employees** — Number of employees with Active status.
3. **Total Exited Employees** — Number of employees with Exited status.
4. **Total Salary** — Total salary expenditure.
5. **Average Salary** — Average employee salary.

### Dashboard Visualizations

**1. Employee Count by Department**

Compares workforce size across departments to identify differences in department staffing.

**2. Total Salary by Department**

Compares total salary expenditure across departments.

**3. Employees Hired by Year**

Shows hiring trends over time using the `hire_date` column.

**4. Employee Employment Status**

Displays the distribution of employees by employment status, including Active and Exited employees.

**5. Employee Details Page**

A separate report page displays employee-level information, including employee ID, name, department, job title, employment status, salary, and hire date.

### Interactive Features

The report includes slicers for:

- Department
- Employment Status
- Year

These slicers allow users to filter the dashboard and explore the employee data interactively.

## 🧮 DAX Measures

DAX measures were created for the dashboard, including:

- Total Employees
- Active Employees
- Total Exited Employees
- Active Employees Percentage
- Attrition Rate
- Total Salary
- Average Salary
- Employees Hired by Year
- Department-wise Employee Count
- Department-wise Total Salary
- Department-wise Average Salary

The measures support KPI cards, department comparisons, and employment status analysis.

## 💼 Business Value

This project demonstrates how SQL and Power BI can be used together to turn employee records into useful HR insights.

The analysis can help HR teams:

- Monitor workforce size and employment status.
- Compare employee distribution across departments.
- Understand departmental salary expenditure.
- Track hiring patterns over time.
- Identify departments with higher attrition rates.
- Explore employee records using interactive filters.

## 📚 Key Learnings

Through this project, I practiced:

- Writing basic, intermediate, and advanced SQL queries.
- Working with related tables and joins.
- Performing data quality checks.
- Using aggregations, subqueries, CTEs, and window functions.
- Creating DAX measures in Power BI.
- Building KPI cards and analytical charts.
- Designing interactive dashboards with slicers.
- Validating dashboard figures for consistency.
- Presenting business information through data visualization.

## 👩‍💻 Project Summary

**Project:** HR Analytics  
**Tools:** MySQL, Microsoft Power BI, DAX, Power Query  
**SQL Practice:** 40 questions  
**Domain:** Human Resources Analytics  
**Focus:** Employee distribution, salary analysis, hiring trends, employment status, and attrition analysis.

## Dashboard Preview

The HR Analytics dashboard provides insights into employee headcount, salary distribution, hiring trends, and employment status.

![HR Analytics Power BI Dashboard](hr_dashboard.png)

### Dashboard Highlights
- Total Employees
- Active Employees
- Total Exited Employees
- Total Salary
- Average Salary
- Employee Count by Department
- Total Salary by Department
- Employees Hired by Year
- Employee Employment Status

### Interactive Filters
- Department
- Employment Status
- Year

**Power BI Report:** `HR_Analytics_Dashboard.pbix`

This portfolio project demonstrates practical skills in SQL querying, data analysis, DAX calculations, and interactive Power BI reporting.
