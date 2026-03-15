# 🛒 E-Commerce Analytics Pipeline

An end-to-end analytics project built to demonstrate data modeling 
and analytics engineering skills using real-world Brazilian e-commerce data.

## 📌 Business Questions Answered
- How has monthly revenue trended over time?
- Which sellers generate the most revenue?
- Which sellers have the best customer satisfaction scores?
- Are orders being delivered on time?
- Who are our most valuable customers?

## 🛠️ Tools Used
| Tool | Purpose |
|------|---------|
| dbt Core | Data transformations, testing, documentation |
| DuckDB | Local data warehouse |
| GitHub | Version control and portfolio |

## 📂 Project Structure
```
models/
├── staging/          ← clean and rename raw data
│   ├── stg_orders
│   ├── stg_customers
│   ├── stg_order_items
│   └── stg_order_reviews
└── marts/            ← final reporting tables
    ├── fct_orders
    ├── dim_customers
    └── mart_seller_performance
```

## 📊 Data Source
[Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
~100,000 orders from 2016 to 2018

## ✅ dbt Tests
All models include data quality tests:
- `unique` and `not_null` on all primary keys
- Relationship tests between fact and dimension tables

## 🚀 How to Run
```bash
# Install dependencies
pip install dbt-core dbt-duckdb

# Load raw data
dbt seed

# Run models
dbt run

# Test data quality
dbt test
```

## 📈 Status
🚧 In progress — dashboard coming soon
