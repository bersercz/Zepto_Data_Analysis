# Zepto Data Analysis (SQL Project)

This project analyzes sales and customer data for Zepto using SQL. It focuses on uncovering insights related to product performance, revenue trends, customer behavior, and operational efficiency through structured SQL queries executed on a relational database.

## Project Overview

The dataset contains transactional-level data from Zepto, an Indian quick commerce company. Using SQL, the project explores key business questions around total sales, popular products, category-wise performance, average order values, and temporal trends. The queries were designed to extract meaningful business intelligence from raw relational data.

## Requirements

- SQL environment (MySQL / PostgreSQL / SQLite / BigQuery)
- CSV support or SQL schema support



## About the Dataset

- **Tables Used:**  
  - `orders` — Contains information about each order placed (order ID, date, customer ID, etc.)  
  - `order_items` — Line-level breakdown of items in each order (product, quantity, price)  
  - `products` — Product catalog with names, categories, prices  
  - `customers` — Customer information (ID, location, demographics if available)  

- **Data Types:** Structured tabular data stored in SQL-compatible format (CSV files or database dump)  
- **Use Case:** Designed for querying using SQL in platforms like MySQL, PostgreSQL, SQLite, or BigQuery  

## Tasks Performed

- Created and imported relational tables from CSV data  
- Explored data relationships using JOINs and subqueries  
- Wrote SQL queries to:
  - Calculate total revenue and number of orders
  - Identify best-selling products by quantity and revenue
  - Analyze average order value across time
  - Segment product sales by category
  - Compare regional performance (if location data available)
  - Rank customers by total spending
  - Track monthly or weekly sales trends

- Used aggregation, filtering, GROUP BY, ORDER BY, and advanced SQL functions for analysis

## Key Findings

- Total revenue and average order value steadily increased over the analyzed time period, showing strong business growth.  
- A small group of products (top 5%) contributed disproportionately to total revenue.  
- Some categories showed high order volume but low revenue, signaling pricing or margin issues.  
- High-value customers made repeat purchases more frequently, driving a large share of sales.  
- Product demand peaks were observed on weekends and during specific hours, aligning with consumer behavior trends.  

## Interesting Insight

By combining customer and order data, the analysis revealed that customers from specific regions tend to favor different product categories. This kind of region-specific trend can be leveraged for personalized promotions and localized inventory planning.

## Conclusion

This SQL-based analysis effectively extracts business insights from Zepto's transactional data. By applying structured queries across normalized tables, the project highlights trends in revenue, product performance, and customer behavior. These insights can support strategic decisions in marketing, product management, and operations.


## Author
**Devansh Singh Tomar**

## How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/bersercz/Zepto_Data_Analysis.git
   cd Zepto_Data_Analysis
