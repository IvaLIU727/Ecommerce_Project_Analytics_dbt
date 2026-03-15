# 🛒 E-Commerce Analytics Pipeline

I'm transitioning into data analytics after working across FinTech, 
digital marketing, and IoT as a Business Analyst. Throughout my career 
I've always sat between the technical and business worlds — translating 
complex problems into clearer solutions.

This project is my way of going deeper on the technical side. I wanted 
to build something real — not just follow a tutorial — so I took a 
public e-commerce dataset and built a full analytics pipeline from 
scratch using the same tools professional data teams use every day.

## 📌 Business Questions I Explored
- How has monthly revenue trended over time?
- Which sellers generate the most revenue — and do they also have 
  the best customer satisfaction?
- Are orders being delivered on time, and which regions struggle most?
- Who are the most valuable customers by lifetime spend?

## 🛠️ Tools & Why I Chose Them
| Tool | Purpose |
|------|---------|
| **dbt Core** | Industry standard for data transformation — wanted to learn the real tool, not a simplified version |
| **DuckDB** | Local data warehouse — no cloud costs, runs entirely on my laptop |
| **GitHub** | Version control — treating this project the way a real data team would |

## 📂 Data Model Structure
I followed a staging → marts pattern which mirrors how real 
analytics teams structure their data warehouses:
```
models/
├── staging/        ← clean and standardise raw data
│   ├── stg_orders
│   ├── stg_customers
│   ├── stg_order_items
│   └── stg_order_reviews
└── marts/          ← answer business questions
    ├── fct_orders              (revenue per order)
    ├── dim_customers           (customer lifetime value)
    └── mart_seller_performance (seller rankings by revenue + rating)
```

## 📊 Dataset
[Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)  
~100,000 real orders from 2016–2018 across Brazil.

## ✅ Data Quality Tests
Every model includes dbt tests to ensure reliability:
- `unique` and `not_null` checks on all primary keys
- Because bad data leads to bad decisions — and I've seen that 
  firsthand in my BA work.

## 🚀 How to Run This Project
```bash
# Install dependencies
pip install dbt-core dbt-duckdb

# Load raw CSV data into DuckDB
dbt seed

# Run all transformation models
dbt run

# Run data quality tests
dbt test
```

## 🙋 About Me
I'm a Business Analyst with experience in FinTech, digital marketing 
and IoT, currently deepening my technical skills in data analytics. 
My background in stakeholder communication and requirements analysis 
means I think about data problems from both the business and 
technical side.

I'm looking for a data analyst role where I can combine analytical 
rigour with clear storytelling — turning complex data into decisions 
that actually make sense to people.

📫 Connect with me on www.linkedin.com/in/ivaliu0727

