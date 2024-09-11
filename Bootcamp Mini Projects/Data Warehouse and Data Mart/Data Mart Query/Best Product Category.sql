-- create a view to know the category that has the highest total quantity
create view best_product_category as
select
	dp.category,
	sum(s.quantity) as total_quantity_sold
from fact_sales s
join dim_product dp on s.product_id = dp.product_id
group by dp.category
order by total_quantity_sold desc;
