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

## ✏️ About Me

Hi, I'm Iva.

My name might look unusual — it's pronounced just like "Eva", 
but with the "i" said the Italian way. That small detail actually 
says a lot about me: I've always lived between different worlds 
and enjoyed finding ways to connect them.

I'm a Business Analyst with a background in Business Analytics 
and Digital Transformation at UNSW. But honestly, my career has 
never fit neatly into one box — I've worked across FinTech, 
digital marketing and IoT, always sitting at the intersection of 
business, data and people.

📝 Why data analytics?

I've spent most of my career being the person in the room who 
speaks both languages — business and technical. I've analysed 
international student payment flows, mapped data platform 
requirements, and translated between engineers and stakeholders.

But I kept hitting the same wall: I could ask the right questions, 
I just couldn't always answer them myself. So I decided to close 
that gap — which is exactly why I built this project.

I wanted to learn real tools, not tutorials. dbt, DuckDB, 
data modeling, SQL — the things actual data teams use every day.

🔍 What am I looking for?

I'm currently looking for a data analyst role in Australia where 
I can combine analytical thinking with clear storytelling — 
turning complex data into decisions that actually make sense 
to people.

If you're working on something interesting in FinTech, digital 
products or data — let's connect.

📝 Connect with me on www.linkedin.com/in/ivaliu0727


