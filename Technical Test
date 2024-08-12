CREATE TEMP TABLE MONTHLY_SALES AS
SELECT
  FORMAT_DATE('%Y', oi.created_at) AS YEAR,
  FORMAT_DATE('%B', oi.created_at) AS MONTH,
  p.id AS PRODUCT_ID,
  p.name AS PRODUCT_NAME,
  SUM(o.num_of_item) AS TOTAL_QUANTITY,
  ROUND(SUM(o.num_of_item * oi.sale_price), 2) AS TOTAL_SALES
FROM
  `bigquery-public-data.thelook_ecommerce.order_items` oi
LEFT JOIN
  `bigquery-public-data.thelook_ecommerce.orders`o
ON
  oi.order_id = o.order_id
LEFT JOIN
  bigquery-public-data.thelook_ecommerce.products p
ON
  oi.product_id = p.id
WHERE
  oi.status != 'Cancelled' and oi.status != 'Returned'
GROUP BY 1,2,3,4
