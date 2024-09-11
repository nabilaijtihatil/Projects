# Coffee Shop Sales Data Warehouse and Data Mart

## Tools
1. DrawSQL
2. PostgreSQL

## Business Case
Star Corporation has successfully developed 3 Coffee Shop where located in different areas. But one of them has the quantity of product sold is higher than the other store. So, the team wants to proactively boost sales to maintain and expand their store. In this case, I want to analyze the product, store and salesperson performance to determine the best strategy for increasing sales.

## Data Warehouse
<p align="center">
  <img src="ERD%20-%20Coffe Shop Sales.png" alt="ERD" width="800"/>
</p>

## Fact Table
1. **fact_sales**

  The `fact_sales` table serves as the central fact table that stores aggregated tables related to sales transactions. It contains the following columns:
  - `sale_id`: the identifier for each sales transaction (integer) - Primary Key.
  - `store_id`: the identifier of the store associated with the transaction (integer) - Foreign Key to `dim_store`.
  - `sales_name_id`: the identifier of the sales associated with the transaction (integer) - Foreign Key to `dim_sales_name`.
  - `time_id`: the identifier of the time of the transaction (integer). Foreign Key to `dim_time`.
  - `product_id`: the identifier of the product associated with the transaction (integer). Foreign Key to `dim_product`.
  - `quantity`: the quantity of the product sold in the transaction (integer).
  - `price`: the total price for the transaction (integer).

## Dimension Table
2. **dim_product**

The `dim_product` table serves as a dimension table that stores unique product information. It contains the following columns:
  - `product_id`: the identifier for each product (integer) - PRIMARY KEY
  - `product_name`: the name of the product (VARCHAR(100)).
  - `category`: the category of the product (VARCHAR(50)).

3. **dim_store**

The `dim_store` table is another dimension table that stores information about the coffee shop location. It contains the following columns: 
  - `store_id`: the identifier for each store (integer) - PRIMARY KEY.
  - `store_name`: the name of the store (VARCHAR(100).
  - `city`: the city of the store (VARCHAR(50).
  - `state`: the state of the store (VARCHAR(50).
  - `country`: the country of the store (VARCHAR(50)).

4. **dim_time**

The `dim_time` table is another dimension table that stores information about the time of the transaction. It contains the following columns:
  - `time_id`: transaction time identifier (integer) - PRIMARY KEY.
  - `date`: the date of the transaction (date).
  - `day_of_week`: the day of the transaction (VARCHAR(10)).
  - `month`: the month of the transaction (VARCHAR(20)).
  - `year`: the year of the transaction (integer).

5. **dim_sales_name**

The `dim_sales_name` table is another dimension table that stores unique sales information. It contains the following columns:
  - `sales_name_id`: the identifier of the store's sales (integer) - PRIMARY KEY.
  - `sales_name`: the name of the sales (VARCHAR(100)).
  - `sales_age`: the age of the sales (integer).
  - `sales_gender`: the gender of the sales (VARCHAR(10)).

## Data Marts
1. Top Selling Product
2. Best Product Category
3. Monthly Sales
4. Salesperson Performance
5. Best Employee by Store
