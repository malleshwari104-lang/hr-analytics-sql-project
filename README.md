# HR Analytics | SQL & Power BI Project

An end-to-end HR Analytics project using **MySQL and Power BI** to analyze employee data, understand workforce distribution, compare department salaries, and explore hiring and employment trends.

## 📌 Project Overview

This project focuses on analyzing Human Resources (HR) data using SQL queries and an interactive Power BI dashboard.

The goal is to transform employee data into meaningful insights that help understand workforce distribution, employee status, salary patterns, and hiring trends.

The project demonstrates practical skills in SQL data analysis, data visualization, dashboard development, and business reporting.

## 🎯 Project Objectives

- Analyze the total number of employees.
- Identify active and exited employees.
- Understand employee distribution across departments.
- Compare total salary across departments.
- Analyze hiring trends by year.
- Summarize workforce information using SQL queries.
- Build an interactive dashboard using Power BI.
- Present HR data in a clear and understandable format.

## 🛠️ Tools & Technologies

- **MySQL 8.0+** — Database querying and analysis
- **MySQL Workbench** — SQL query development and execution
- **Microsoft Power BI** — Interactive dashboard creation
- **Power Query** — Data transformation, where applicable
- **DAX** — Measures and calculations, where applicable
- **CSV** — Dataset storage
- **GitHub** — Project documentation and version control

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
```

**File descriptions:**

| File | Description |
|---|---|
| `README.md` | Project documentation |
| `employees.csv` | Employee information and related HR data |
| `departments.csv` | Department information |
| `hr_analytics_queries.sql` | SQL queries for HR data analysis |
| `HR_Analytics_Dashboard.pbix` | Power BI dashboard report |
| `hr_dashboard.png` | Dashboard screenshot for project preview |

*Note: The screenshot filename and report filename above are examples. Make sure they match the actual filenames in your repository.*

## 📊 Dataset Description

The project uses two CSV files.

### 1. Employees Dataset

Contains employee-level information used to analyze the workforce.

It supports analysis of employee counts, employment status, hiring trends, salary information, and department assignments.

### 2. Departments Dataset

Contains department information used to organize employees by department and support department-level analysis.

The two datasets are connected through the department identifier to support combined analysis.

## 🧮 SQL Analysis

The `hr_analytics_queries.sql` file contains **40 SQL questions** organized around HR and workforce analysis.

The project demonstrates the following SQL concepts:

- `SELECT` and `WHERE`
- `ORDER BY`
- Aggregate functions such as `COUNT()`, `SUM()`, and `AVG()`
- `GROUP BY` and `HAVING`
- `INNER JOIN` and `LEFT JOIN`
- Subqueries
- Common Table Expressions (CTEs)
- CASE statements
- Date-based analysis
- Window functions, where included in the queries
- Filtering and sorting
- Department-wise employee and salary analysis

### Business Questions

The SQL analysis explores questions such as:

1. How many employees are in the organization?
2. How many employees are currently active?
3. How many employees have exited?
4. How many employees belong to each department?
5. Which departments have the highest employee counts?
6. How does total salary vary by department?
7. What is the average salary?
8. How many employees were hired each year?
9. How is the workforce distributed by employment status?
10. What insights can be obtained from combining employee and department data?

Refer to `hr_analytics_queries.sql` for the complete set of queries.

## 📈 Power BI Dashboard

The Power BI dashboard provides a visual summary of workforce and salary information.

### Dashboard Preview

![HR Analytics Dashboard](hr_dashboard.png)

### Key Performance Indicators (KPIs)

The dashboard displays the following figures:

| KPI | Value |
|---|---:|
| Total Employees | 120 |
| Active Employees | 97 |
| Exited Employees | 23 |
| Total Salary | 8M |
| Average Salary | 62.13K |

*Salary currency and reporting period should be confirmed before interpreting the salary figures.*

### Dashboard Visualizations

**1. Total Employees by Department**

Shows the distribution of employees across departments.

**2. Total Salary by Department**

Compares total salary across departments to help understand department-level compensation totals.

**3. Total Employees by Year**

Displays the yearly hiring trend and helps identify changes in employee recruitment over time.

**4. Employees by Employment Status**

Compares active employees with employees who have exited.

**5. Department Summary**

Presents total employees, active employees, and exited employees for each department.

**6. Interactive Filters**

The dashboard includes filters for:

- Department
- Employment Status
- Year

These filters allow users to explore the workforce data from different perspectives.

## 🔍 Key Findings

Based on the current dashboard:

- The dataset contains **120 employees**.
- **97 employees are active**, while **23 employees have exited**.
- Active employees represent approximately **80.8%** of the total workforce.
- Exited employees represent approximately **19.2%** of the total workforce.
- The dashboard compares employee distribution and salary totals across departments.
- The yearly hiring chart provides a view of recruitment trends over time.

These findings describe the current dashboard figures and should not be interpreted as explanations for employee exits or salary differences without further analysis.

## 💡 Business Value

This project demonstrates how SQL and Power BI can be used together to support HR reporting and workforce analysis.

The analysis can help HR teams:

- Monitor workforce size and employment status.
- Understand employee distribution across departments.
- Compare department-level salary totals.
- Review hiring trends.
- Explore workforce information through interactive filters.
- Present HR data through a consolidated dashboard.

## 🚀 How to Use This Project

### Step 1: Download the Repository

Clone the repository or download it as a ZIP file.

```bash
git clone https://github.com/malleshwari104-lang/hr-analytics-sql-project.git
```

### Step 2: Open the SQL File

Open `hr_analytics_queries.sql` using MySQL Workbench or another compatible SQL editor.

Import the CSV files into MySQL and create or select the appropriate database and tables before running queries.

Make sure the table names and column names in the SQL queries match your database schema.

### Step 3: Execute the Queries

Run the SQL queries to explore employee counts, employment status, salary information, department distribution, and hiring trends.

### Step 4: Open the Power BI Report

Open `HR_Analytics_Dashboard.pbix` in Microsoft Power BI Desktop.

If prompted, configure the data source paths and refresh the data.

### Step 5: Explore the Dashboard

Use the Department, Employment Status, and Year filters to interact with the report and examine the workforce information.

## 📚 Skills Demonstrated

- SQL querying and data analysis
- Data aggregation and filtering
- Table joins and relational data analysis
- HR and workforce analytics
- Data visualization
- Power BI dashboard development
- KPI reporting
- Business problem-solving
- Data presentation and documentation
- GitHub project management

## 📌 Conclusion

The HR Analytics SQL & Power BI project demonstrates the process of analyzing employee data using SQL and presenting key workforce metrics through an interactive Power BI dashboard.

By combining SQL queries with data visualization, the project provides a practical example of how data analytics can support HR reporting and business understanding.

---

**Project Type:** Data Analytics Portfolio Project  
**Domain:** Human Resources (HR Analytics)  
**Tools:** MySQL, SQL, Power BI, GitHub
