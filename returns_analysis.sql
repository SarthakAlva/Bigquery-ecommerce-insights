-- 🔁 Return Rate by Product
-- Identify products with the highest return rates

SELECT
  p.name AS product_name,
  p.category,
  COUNT(oi.order_id) AS total_sold,
  COUNT(oi.returned_at) AS total_returned,
  ROUND(COUNT(oi.returned_at) / COUNT(oi.order_id), 2) AS return_rate
FROM `bigquery-public-data.thelook_ecommerce.order_items` AS oi
JOIN `bigquery-public-data.thelook_ecommerce.products` AS p
  ON oi.product_id = p.id
GROUP BY product_name, category
HAVING total_sold BETWEEN 20 AND 30
ORDER BY return_rate DESC
LIMIT 10;
