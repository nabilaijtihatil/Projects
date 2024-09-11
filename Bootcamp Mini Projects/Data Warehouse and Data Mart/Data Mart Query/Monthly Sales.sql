-- create a view to analyze monthly sales for each store
create view monthly_sales as
select
	dt.year,
	dt.month,
	ds.store_name,
	ds.city,
	sum(s.quantity) as total_quantity_sold,
	sum(quantity * price) as total_revenue
from fact_sales s
join dim_time dt on s.time_id = dt.time_id
join dim_store ds on s.store_id = ds.store_id
group by 1,2,3,4;
