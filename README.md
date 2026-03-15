# E-Commerce Analytics Pipeline

Fair warning: I'm not a great data engineer (yet).

I come from the business side — I've spent years being the person 
who asks "so what does the data actually say?" Now I'm learning 
to answer that question myself.

This is one of my first real projects built from scratch. I picked 
up SQL, dbt, and DuckDB, found a dataset I found genuinely 
interesting, and just... started building. No tutorials held my 
hand through this one.

Is it perfect? Probably not. But it's real, it works, and I 
learned a lot making it. That just feels like a good start.

---

## 🔍 Business Questions I Explored

🔸 How has monthly revenue trended over time?  

🔸 Which payment methods dominate — and do they affect customer spending behaviour?  

🔸 Are orders being delivered on time, and how significant is the late delivery rate?  

🔸 Which sellers generate the most revenue — and do they also have the best customer satisfaction?  


---

## 📝 Tools & Why I Chose Them

🔶 **dbt Core** — Industry standard for data transformation. I wanted 
to learn the real tool, not a simplified version.  

🔶 **DuckDB** — Local data warehouse. No cloud costs, runs entirely 
on my laptop as a single file.  

🔶 **Tableau Public** — Interactive dashboard with a public link.  

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


## 📷 Dashboard

View my Tableau dashboard:
[Olist E-Commerce Analytics Dashboard](https://public.tableau.com/views/OlistE-CommerceAnalytics_17735842116330/Dashboard1)

---



## Data Quality Tests

🔸 Every model includes dbt tests to ensure reliability  

🔹 `unique` and `not_null` checks on all primary keys  

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




## ✏️ About Me

Hi, I'm Iva.

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

📝 Connect with me on www.linkedin.com/in/ivaliu0727


