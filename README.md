# product-revenue-trend-and-ranking-sql
A SQL analytics project that evaluates month-over-month product revenue changes and ranks products by monthly performance using advanced window functions for BI and financial reporting.


# Product Revenue Trend & Ranking Analysis using SQL

## 📌 Overview
This project analyzes monthly product revenue trends using SQL window functions. It calculates month-over-month revenue changes and ranks products by performance for each month, a common requirement in finance and BI reporting.

---

## 🧠 Business Problem
Business teams need to:
- Track how product revenue changes over time
- Identify top-performing and declining products
- Compare product performance month-by-month

Traditional reports fail to provide trend-based insights, making window functions essential.

---

## 🛠️ Tools & Concepts
- SQL
- Window Functions (`LAG`, `RANK`)
- Common Table Expressions (CTEs)
- Time-Series Revenue Analysis

---

## 🔍 Key SQL Logic
1. Aggregate revenue monthly at the product level  
2. Use `LAG()` to calculate month-over-month revenue change  
3. Rank products by revenue using `RANK()`  

---

## 📊 Metrics Generated
- Monthly Revenue per Product
- Month-over-Month Revenue Change
- Product Revenue Rank per Month

---

## 🎯 Business Impact
- Helps leadership identify growth and decline trends
- Enables performance benchmarking across products
- Supports pricing, inventory, and marketing decisions

---

## 🚀 Future Enhancements
- Percentage-based revenue growth
- Rolling average revenue per product
- Category-level aggregation
- Power BI or Tableau dashboard integration
