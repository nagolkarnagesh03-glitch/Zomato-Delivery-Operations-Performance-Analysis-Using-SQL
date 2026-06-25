# 🚚 Zomato Delivery Operations & Performance Analysis Using SQL

## 📌 Project Overview

This project analyzes Zomato delivery operations using SQL to identify factors affecting delivery performance and customer experience. The analysis focuses on delivery efficiency, traffic conditions, weather impact, vehicle performance, delivery partner productivity, and operational bottlenecks.

The goal of this project is to demonstrate real-world Data Analyst skills including Data Cleaning, Exploratory Data Analysis (EDA), KPI Analysis, Window Functions, Aggregate Functions, and Business Insights Generation using SQL.

---

## 🎯 Business Problem

Food delivery companies need to ensure fast and efficient deliveries to maintain customer satisfaction.

This project aims to answer the following business questions:

* What is the average delivery time?
* Which cities have the fastest and slowest deliveries?
* How do weather conditions affect delivery performance?
* What is the impact of traffic congestion on delivery time?
* Do festivals increase delivery delays?
* How does vehicle condition impact delivery efficiency?
* Does handling multiple deliveries increase delivery time?
* Which delivery partners perform better than average?

---

## 📂 Dataset Information

The dataset contains delivery-related information including:

* Delivery Partner Details
* Delivery Ratings
* Restaurant Location
* Customer Location
* Weather Conditions
* Traffic Density
* Vehicle Type
* Vehicle Condition
* Order Type
* Festival Information
* City Information
* Delivery Time

Total Records Analyzed: **42,743**

---

## 🛠 Tools Used

* SQL (MySQL)
* MySQL Workbench

---

## 🧹 Data Cleaning Process

The following cleaning steps were performed before analysis:

### 1. Duplicate Check

Identified duplicate IDs to ensure data integrity.

### 2. Missing Value Analysis

Checked null and blank values across important columns.

### 3. Standardization

* Removed leading/trailing spaces using TRIM()
* Standardized city names
* Replaced invalid values where necessary

### 4. Data Type Conversion

Converted:

* Delivery Person Age → Integer
* Delivery Person Ratings → Decimal

### 5. Data Validation

Checked for:

* Invalid ages
* Invalid ratings
* Incorrect categorical values

---

# 📊 Key Performance Indicators (KPIs)

| KPI                     | Value      |
| ----------------------- | ---------- |
| Total Orders            | 42,743     |
| Total Delivery Partners | 1,320      |
| Total Cities            | 4          |
| Average Delivery Time   | 26 Minutes |

---

# 📈 Business Questions & Findings

## 1. How many orders were processed?

### SQL Analysis

Calculated total number of orders.

### Finding

42,743 orders were successfully processed.

### Business Insight

The dataset provides a sufficiently large sample for operational analysis.

---

## 2. How many delivery partners are active?

### Finding

1,320 unique delivery partners participated in deliveries.

### Business Insight

A large delivery workforce supports order fulfillment operations.

---

## 3. Which city has the slowest deliveries?

### Finding

Semi-Urban areas recorded the highest average delivery time.

### Business Insight

Delivery operations are less efficient in Semi-Urban locations due to longer travel distances and infrastructure limitations.

### Recommendation

Increase rider availability and improve route optimization in Semi-Urban regions.

---

## 4. Which locations have the fastest deliveries?

### Finding

Pune and Urban locations showed the lowest average delivery times.

### Business Insight

Urban infrastructure and rider availability improve delivery efficiency.

---

## 5. How does weather impact delivery performance?

### Finding

Fog resulted in the highest average delivery time.

### Business Insight

Poor visibility significantly slows delivery operations and increases delays.

### Recommendation

Implement weather-adjusted ETAs and rider safety protocols.

---

## 6. How does traffic affect delivery time?

### Finding

Traffic Jam conditions produced the highest delivery times.

### Business Insight

Traffic congestion is one of the strongest contributors to delivery delays.

### Recommendation

Adopt real-time route optimization and traffic prediction systems.

---

## 7. Do highly-rated delivery partners perform better?

### Finding

Higher-rated delivery partners generally completed deliveries faster.

### Business Insight

Delivery partner performance directly impacts operational efficiency.

### Recommendation

Introduce performance-based incentives and reward programs.

---

## 8. Does vehicle condition affect delivery efficiency?

### Finding

Vehicle condition influences average delivery time.

### Business Insight

Poorly maintained vehicles reduce operational efficiency.

### Recommendation

Implement regular vehicle inspections and maintenance programs.

---

## 9. Do multiple deliveries increase delivery time?

### Finding

Yes.

Deliveries involving multiple orders showed higher average delivery times.

### Business Insight

Additional stops and route complexity increase delivery duration.

### Recommendation

Optimize delivery batching algorithms.

---

## 10. Do festivals cause delivery delays?

### Finding

Yes.

Festival periods showed higher average delivery times.

### Business Insight

Increased order volume during festivals creates operational bottlenecks.

### Recommendation

Increase rider capacity and forecast demand during festive seasons.

---

## 11. Which delivery partners perform better than average?

### Finding

Several delivery partners consistently delivered faster than the overall average delivery time.

### Business Insight

Top-performing riders can be used as benchmarks for training and operational excellence.

---

# 🏆 Advanced SQL Concepts Used

* Aggregate Functions
* GROUP BY
* HAVING Clause
* Common Table Expressions (CTEs)
* Window Functions
* ROW_NUMBER()
* RANK()
* Subqueries
* Data Cleaning Techniques
* Data Validation

---

# 🔍 Key Business Insights

### Insight 1

Traffic congestion is the largest contributor to delivery delays.

### Insight 2

Foggy weather conditions significantly increase delivery times.

### Insight 3

Semi-Urban areas experience slower deliveries compared to Urban regions.

### Insight 4

Multiple deliveries in a single trip increase delivery duration.

### Insight 5

Festival periods create operational bottlenecks and longer delivery times.

### Insight 6

Highly-rated delivery partners generally demonstrate better performance.

### Insight 7

Vehicle condition has a measurable impact on delivery efficiency.

---

# 🚀 Strategic Recommendations

### Priority 1

Implement AI-based route optimization to reduce traffic-related delays.

### Priority 2

Increase rider availability during festivals and peak-demand periods.

### Priority 3

Improve delivery operations in Semi-Urban locations.

### Priority 4

Launch performance-based incentive programs for delivery partners.

### Priority 5

Establish vehicle maintenance and inspection policies.

---

# 📚 Skills Demonstrated

✅ SQL Data Cleaning

✅ Exploratory Data Analysis (EDA)

✅ KPI Reporting

✅ Business Problem Solving

✅ Window Functions

✅ Common Table Expressions (CTEs)

✅ Data Validation

✅ Business Insights Generation

✅ Operational Analytics

---

## 👨‍💻 Author

**Nagesh Nagolkar**

Aspiring Data Analyst skilled in SQL, Excel, Power BI, and Business Analytics.

