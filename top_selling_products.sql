-- 🏆 Top-Selling Products by Revenue
-- Goal: Find which products bring in the most money

SELECT
  p.name AS product_name,
  p.category,
  COUNT(oi.order_id) AS times_sold,             -- How many times the product was sold
  ROUND(SUM(oi.sale_price), 2) AS total_revenue -- Total revenue from this product
FROM `bigquery-public-data.thelook_ecommerce.order_items` AS oi
JOIN `bigquery-public-data.thelook_ecommerce.products` AS p
  ON oi.product_id = p.id
GROUP BY product_name, category
ORDER BY total_revenue DESC
LIMIT 10;
