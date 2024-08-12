Project ini merupakan case study pada project-based virtual intern yang diadakan oleh Kimia Farma bersama dengan Rakamin Academy. Posisi saya pada project ini adalah sebagai Big Data Analytics. Tujuan dari project ini adalah untuk mengevaluasi kinerja bisnis dari Kimia Farma sejak tahun 2020-2023. Terdapat 4 tabel yang digunakan pada project ini yaitu:
1. Final Transaction Table
2. Inventory Table
3. Kantor Cabang Table
4. Product Table

# Tools
Tools yang saya gunakan yaitu:
1. Google Big Query
2. Tableau

# Langkah-langkah yang dilakukan:
1. Import 4 tabel tersebut ke dalam BigQuery
2. Membuat tabel analisa yang terdiri dari:
   - transaction_id
   - date
   - branch_id
   - branch_name
   - kota
   - provinsi
   - rating_cabang
   - customer_name
   - product_id
   - product_name
   - actual_price
   - discount_percentage
   - persentase_gross_laba
   - nett_sales
   - nett_profit
   - rating_transaksi
4. Untuk kolom persentase_gross_laba harus mengikuti aturan sebagai berikut:
   - Jika harga <= Rp 50.000 maka memperoleh laba sebesar 10%
   - Jika harga antara Rp 50.000 - Rp 100.000 maka memperoleh laba sebesar 15%
   - Jika harga antara Rp 100.000 - Rp 300.000 maka memperoleh laba sebesar 20%
   - Jika harga antara Rp 300.000 - Rp 500.000 maka memperoleh laba sebesar 25%
   - Jika harga > Rp 500.000 maka memperoleh laba sebesar 30%
5. Simpan tabel analisa yang telah dibuat ke dalam format CSV
6. Import tabel analisa tersebut ke dalam Tableau
7. Membuat Performance Analytics Dashboard yang terdiri dari:
   - Comparison of Kimia Farma's revenue from year to year
   - Top 10 provincial branches by total transactions
   - Top 10 provincial branches by nett sales
   - Top 5 branches with the highest ratings but the lowest transaction ratings
   - Total Profit for each province

# Performance Analytics Dashboard
https://public.tableau.com/views/KimiaFarmafinaltask/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

