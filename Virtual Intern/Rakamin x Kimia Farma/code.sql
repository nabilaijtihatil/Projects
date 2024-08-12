--Create CTE to compute and assign a gross profit percentage based on the price of each product.
with PersentaseGrossLaba as (       
  select distinct
    product_id,
    price,
    case
    when price <= 50000 then 0.10                       --assign the percentage for each conditions
    when price between 50001 and 100000 then 0.15
    when price between 100001 and 300000 then 0.20
    when price between 300001 and 500000 then 0.25
    when price > 500001 then 0.30
    end as persentase_gross_laba
  from kimia_farma.kf_final_transaction
)
select
  t.transaction_id,
  t.date,
  kc.branch_id,
  kc.branch_name,
  kc.kota,
  kc.provinsi,
  kc.rating as rating_cabang,
  t.customer_name,
  p.product_id,
  p.product_name,
  t.price as actual_price,
  t.discount_percentage,
  pgl.persentase_gross_laba,                    -- then create a new code to calculate the nett sales, nett profit and round it to 2 digits after the comma
  round(t.price * (1 - discount_percentage),2) as nett_sales,  
  round((t.price * (1 - discount_percentage) * persentase_gross_laba),2) as nett_profit, 
  t.rating as rating_transaksi
from kimia_farma.kf_final_transaction t
left join PersentaseGrossLaba as pgl on t.product_id = pgl.product_id
left join kimia_farma.kf_kantor_cabang kc on t.branch_id = kc.branch_id
left join kimia_farma.kf_product p on t.product_id = p.product_id 
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16
