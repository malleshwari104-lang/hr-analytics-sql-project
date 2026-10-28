# HR Analytics Project | SQL & Power BI

## 📌 Project Overview

The HR Analytics Project uses **MySQL and Microsoft Power BI** to analyze employee data and present meaningful insights about workforce distribution, salary expenditure, hiring trends, and employment status.

The project combines SQL-based data analysis with an interactive Power BI dashboard to demonstrate practical Data Analyst skills and support HR decision-making.

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
- **GitHub** — Project documentation and version control.

## 📂 Project Structure

```text
hr-analytics-sql-project/
│
├── README.md
├── employees.csv
├── departments.csv
├── hr_analytics_queries.sql
├── HR_Analytics_Dashboard.pbix
└── hr_dashboard.png

The Power BI report file should be uploaded separately to the repository. A dashboard screenshot is optional.

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
4. **Total Salary** — Sum of employee salary values.
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

These slicers allow users to filter the dashboard and explore employee data interactively.

## 🧮 DAX Measures

DAX measures are used to calculate key HR metrics and support the dashboard visuals.

Measures include:

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

These measures support KPI cards, department comparisons, and employment status analysis. The measures included in the report should match the actual DAX calculations used in the Power BI file.

## 📚 Power BI Concepts Practiced

### Data Modeling and Relationships

- Connecting the Employees and Departments tables using `department_id`.
- Understanding one-to-many relationships.
- Using related tables to display department names alongside employee information.

### Power Query and Data Preparation

- Importing CSV datasets into Power BI.
- Checking column data types.
- Preparing data for reporting and analysis.

### DAX and KPI Calculations

- Using `DISTINCTCOUNT()` to calculate unique employees.
- Using `SUM()` to calculate total salary.
- Using `AVERAGE()` to calculate average salary.
- Using `CALCULATE()` to filter employee metrics by employment status.
- Using `DIVIDE()` to calculate percentages and ratios.

### Data Visualization

- Creating KPI cards for important HR metrics.
- Building bar charts to compare employee counts and salary expenditure by department.
- Creating a hiring trend chart by year.
- Using a donut chart to analyze employee employment status.
- Creating an employee details table for record-level analysis.

### Interactive Dashboard Design

- Adding slicers for Department, Employment Status, and Year.
- Exploring how slicers affect dashboard visuals.
- Organizing report pages for summary-level and employee-level analysis.
- Formatting charts, cards, labels, and titles for readability.

### Dashboard Validation

- Checking KPI totals against employee records.
- Verifying employee counts for consistency.
- Checking that visualizations and filters reflect the intended data.

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

Based on the current dashboard:

- The dataset contains 120 employees.

- 97 employees are active, while 23 employees have exited.

- Active employees represent approximately 80.8% of the total workforce.

- Exited employees represent approximately 19.2% of the total workforce.

- The dashboard compares employee distribution and salary totals across departments.

- The yearly hiring chart provides a view of recruitment trends over time.


## 👩‍💻 Project Summary

**Project:** HR Analytics  
**Tools:** MySQL, Microsoft Power BI, DAX, Power Query  
**SQL Practice:** 40 questions  
**Domain:** Human Resources Analytics  
**Focus:** Employee distribution, salary analysis, hiring trends, employment status, and attrition analysis.

This portfolio project demonstrates practical skills in SQL querying, data analysis, DAX calculations, data modeling, and interactive Power BI reporting.

## 📥 Power BI Report

**Report file:** `HR_Analytics_Dashboard.pbix`

Download the Power BI report from this repository and open it using Power BI Desktop to explore the dashboard.

