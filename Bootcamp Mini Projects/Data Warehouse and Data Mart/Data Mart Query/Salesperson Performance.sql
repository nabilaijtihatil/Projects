-- create a view to analyze salesperson performance
create view salesperson_performance as
select
	dsn.sales_name,
	sum(s.quantity) as total_quantity_sold
from fact_sales s
join dim_sales_name dsn on s.sales_name_id = dsn.sales_name_id
group by 1
order by 2 desc;
