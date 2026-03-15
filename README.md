# E-Commerce Revenue Intelligence Dashboard

## Project Overview

This project presents an end-to-end **data analytics case study** for an e-commerce business.
The objective is to analyze sales transactions, identify key revenue drivers, and generate business insights using **SQL and Power BI**.

The project demonstrates how raw transactional data can be transformed into actionable insights for decision-makers.

---

## Tools & Technologies

* **SQL (MySQL)** – Data analysis and business queries
* **Power BI** – Interactive dashboard and visualization
* **Excel / CSV** – Dataset storage and preprocessing

---

## Dataset Description

The dataset simulates a real-world e-commerce platform and contains:

**Orders Table**

* order_id
* order_date
* customer_id
* product_id
* quantity
* sales_amount
* cost_amount
* profit

**Customers Table**

* customer_id
* customer_name
* city
* segment

**Products Table**

* product_id
* product_name
* category
* sub_category
* unit_price

Total Transactions: **120,000+ orders**

---

## Key Business Metrics

The analysis focuses on the following KPIs:

* Total Revenue
* Total Profit
* Profit Margin
* Revenue per Customer
* Orders per Customer
* Product Profitability
* Revenue Contribution by Category

---

## SQL Business Analysis

The project includes advanced SQL queries for:

### Revenue Analysis

* Total company revenue and profit
* Monthly revenue trend

### Customer Insights

* Top revenue-generating customers
* Customer revenue concentration (Pareto analysis)

### Growth Analysis

* Month-over-month revenue growth using **window functions**

### Product Insights

* Revenue contribution by product category
* Most profitable products

---

## Power BI Dashboard

The dashboard is divided into three analytical sections:

### 1. Executive Overview

Provides a high-level view of business performance including revenue, profit, and growth trends.

### 2. Customer Intelligence

Analyzes customer value and purchasing behavior including:

* revenue per customer
* orders per customer
* top customers by revenue
* customer distribution by city

### 3. Product Performance

Evaluates product-level performance including:

* revenue by category
* profit by category
* top products by revenue
* product profitability distribution

---

## Key Insights

* The platform generated **₹9.44B in revenue** with a **32.5% profit margin**.
* Revenue is distributed across a large customer base, reducing dependency on a few clients.
* Electronics is the **largest revenue-generating category**.
* Monthly revenue fluctuates within a **±10% growth range**, indicating stable demand.

---

## Project Structure

```
datasets/
sql-analysis/
powerbi-dashboard/
images/
README.md
```

---

## Project Architecture

The project follows a typical data analytics workflow:

1. Data Storage – CSV datasets simulating an e-commerce platform  
2. SQL Analysis – Business queries for revenue, growth, and customer insights  
3. Data Visualization – Power BI dashboard for business intelligence reporting  

Workflow:

Dataset → SQL Analysis → Business Insights → Power BI Dashboard

## Author

Mohammad Sadat Sheikh
B.Tech – Artificial Intelligence & Data Science

This project was developed as part of a portfolio demonstrating skills in **data analysis, SQL querying, and business intelligence visualization**.
