# E-Commerce Analytics Pipeline

I'm transitioning into data analytics after working across FinTech, 
digital marketing, and IoT as a Business Analyst. Throughout my career 
I've always sat between the technical and business worlds — translating 
complex problems into clearer solutions.

This project is my way of going deeper on the technical side. I wanted 
to build something real — not just follow a tutorial — so I took a 
public e-commerce dataset and built a full analytics pipeline from 
scratch using the same tools professional data teams use every day.

---

## 🔍 Business Questions I Explored

🔸 How has monthly revenue trended over time?  
🔸 Which sellers generate the most revenue — and do they also have the best customer satisfaction?  
🔸 Are orders being delivered on time, and which regions struggle most?  
🔸 Who are the most valuable customers by lifetime spend?

---

## 📝 Tools & Why I Chose Them

🔶 **dbt Core** — Industry standard for data transformation. I wanted 
to learn the real tool, not a simplified version.  
🔶 **DuckDB** — Local data warehouse. No cloud costs, runs entirely 
on my laptop as a single file.  
🔶 **GitHub** — Version control. Treating this project the way a 
real data team would.

---

## 📷 Data Model Structure

I followed a staging → marts pattern which mirrors how real analytics 
teams structure their data warehouses:
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

🔷 Dataset: [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)  
🔹 ~100,000 real orders from 2016–2018 across Brazil

---

## Data Quality Tests

🔹 Every model includes dbt tests to ensure reliability  
🔸 `unique` and `not_null` checks on all primary keys  
🔹 Because bad data leads to bad decisions — and I've seen that firsthand in my BA work

---

## How to Run

🔸 Install dependencies
```bash
pip install dbt-core dbt-duckdb
```

🔸 Load raw CSV data into DuckDB
```bash
dbt seed
```

🔸 Run all transformation models
```bash
dbt run
```

🔸 Run data quality tests
```bash
dbt test
```

---

## ✏️ About Me

I'm a Business Analyst with experience in FinTech, digital marketing 
and IoT. My career has always lived at the intersection of technical 
and business worlds — I've analysed international student payment flows 
in FinTech, mapped data platform requirements in digital marketing, and 
explored IoT applications in Australian education.

I'm now deepening my technical skills in data analytics because I want 
to do more than ask the right questions — I want to understand how data 
and systems actually work, and use that to tell stories that help people 
make better decisions.

Currently looking for a data analyst role in Australia.  
📝 Connect with me on [LinkedIn](your-linkedin-url)
