  Project Overview

This project focuses on analyzing and cleaning a retail sales dataset using MySQL. The goal is to demonstrate practical SQL skills commonly required for entry-level IT, data, and analyst roles, including data validation, cleaning, aggregation, and time-based analysis.

The project simulates a real-world workflow where raw transactional data is checked for quality issues, cleaned, and then analyzed to answer business-relevant questions.

    Skills Demonstrated

- SQL table creation and schema design

- Data quality checks (NULL detection)

- Data cleaning using DELETE operations

- Aggregations with GROUP BY

- Time-based analysis (YEAR, MONTH, HOUR)

- Use of CASE statements for categorization

      Dataset Description
  
- The dataset represents retail transactions and includes:

- Transaction ID

- Sale date and time

- Customer information (ID, gender, age)

- Product category

- Quantity and pricing details

- Cost of goods sold (COGS)

- Total sale amount

  Key Analysis Performed
1. Data Quality Checks

Identified rows containing NULL values across critical columns

Removed incomplete records to ensure data integrity

2. Exploratory Analysis

Total number of sales transactions

Transaction count by gender and product category

3. Time-Based Insights

Identified the best-performing month (by average sales) for each year using window functions

Categorized sales into Morning, Afternoon, and Evening shifts

4. Customer Analysis

Identified top 5 customers based on total spending
