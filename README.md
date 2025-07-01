# Bigquery-ecommerce-insights
SQL project analyzing e-commerce data using Google BigQuery to uncover key business insights like revenue trends, top products, customer value, and return rates.


# 🛒 E-Commerce SQL Analytics Project (BigQuery)

This project explores an open e-commerce dataset using SQL in **Google BigQuery**. I wanted to simulate a real-world analytics workflow — digging into product sales, customer behavior, and overall business performance.

The goal was to answer meaningful questions with clean, well-structured SQL, and to build something I could share in my portfolio.

---

## 📦 Dataset

- **Source:** [`bigquery-public-data.thelook_ecommerce`](https://console.cloud.google.com/marketplace/product/bigquery-public-data/thelook)
- **Platform:** Google BigQuery (free tier)
- **Main Tables Used:**
  - `orders`
  - `order_items`
  - `products`
  - `users`

This dataset mimics a real online store and includes orders, customers, products, inventory, and returns. It's perfect for practicing SQL in a business context.

---

## 📈 Questions I Explored

### 1. Monthly Revenue Trends  
**How is revenue changing over time?**

📄 `queries/monthly_revenue.sql`  
→ Aggregates total revenue per month based on order dates.

---

### 2. Top-Selling Products  
**Which products bring in the most money?**

📄 `queries/top_selling_products.sql`  
→ Joins order and product data to rank items by total revenue and order volume.

---

### 3. Product Return Rate  
**Which products are returned the most?**

📄 `queries/returns_analysis.sql`  
→ Calculates return rate per product to spot potential quality or satisfaction issues.

---

### 4. Customer Lifetime Value (LTV)  
**Who are the most valuable customers?**

📄 `queries/customer_ltv.sql`  
→ Calculates total revenue and number of orders per customer.

---

## 🛠 Tools & Skills

- SQL (BigQuery Standard SQL)
- Google BigQuery (Cloud Console)
- Joins, Aggregation, Grouping, CTEs
- Git & GitHub for version control
- Clean query formatting & inline comments

---

## 📁 Project Structure

```bash
ecommerce-sql-analysis/
├── queries/
│   ├── monthly_revenue.sql           # Revenue per month
│   ├── top_selling_products.sql      # Highest-selling products
│   ├── returns_analysis.sql          # Return rates per product
│   └── customer_ltv.sql              # Customer value analysis
│
├── charts/                           # Optional - visualizations or screenshots
│   └── revenue_trend_chart.png
│
├── README.md                         # Project overview & insights
├── .gitignore                        # Files to ignore in Git (optional)
└── LICENSE                           # MIT license
