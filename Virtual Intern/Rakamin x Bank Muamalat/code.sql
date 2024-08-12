select 
  Date as order_date,
  CategoryName as category_name,
  ProdName as product_name,
  Price as product_price,
  Quantity as order_qty,
  round((Price*Quantity), 2) as total_sales,
  CustomerEmail as cust_email,
  CustomerCity as cust_city
from `dataset_task.orders` o
inner join `dataset_task.customers` c on o.CustomerID = c.CustomerID
inner join `dataset_task.products` p on o.ProdNumber = p.ProdNumber
inner join `dataset_task.product_category` pc on p.Category = pc.CategoryID
order by date;
