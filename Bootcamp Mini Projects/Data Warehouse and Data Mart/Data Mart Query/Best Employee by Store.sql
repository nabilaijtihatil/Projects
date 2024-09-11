--create a view to know the best employee of each store
create view best_employee_by_store as 
with RankedSales as (
	select
		dsn.sales_name,
		ds.store_name,
		sum(quantity) as total_quantity_sold,
		rank() over(partition by ds.store_name order by sum(quantity) desc) as rank_in_store
	from fact_sales s
	join dim_sales_name dsn on s.sales_name_id = dsn.sales_name_id
	join dim_store ds on s.store_id = ds.store_id
	group by 1,2)

select sales_name, store_name, total_quantity_sold, rank_in_store
from RankedSales
where rank_in_store = 1;
