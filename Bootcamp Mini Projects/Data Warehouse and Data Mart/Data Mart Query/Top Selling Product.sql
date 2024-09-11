create view top_selling_products as
select 
	dp.product_name,
	dp.category,
	sum(s.quantity) as total_quantity_sold
from fact_sales s
join dim_product dp on s.product_id = dp.product_id
group by dp.product_name, dp.category
order by total_quantity_sold desc;
