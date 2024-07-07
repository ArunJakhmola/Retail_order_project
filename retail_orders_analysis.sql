use retail_orders;

-- Q1. Find top 10 highest revenue generating products.
select product_id, sum(sale_price) revenue
from orders
group by product_id
order by revenue desc
limit 10;


-- Q2. Find top 5 highest selling products in each region by total sales.
with cte as (select region, product_id, sum(sale_price) sales
from orders
group by region,product_id)
select * from (
select *, row_number() over (partition by region order by sales desc) as rnk
from cte) a
where rnk <= 5
order by rnk;


-- Find month over month growth comparison for 2022 and 2023 sales eg: Jan-22 vs Jan-23?
select * from orders;

-- select year(order_date) sale_yr, month(order_date) sale_mnt, sale_price from orders
-- order by sale_yr, sale_mnt

with cte as (
select year(order_date) sale_yr, month(order_date) sale_mnt, sum(sale_price) sales
from orders
group by year(order_date), month(order_date)
-- order by sale_yr, sale_mnt
)
select sale_mnt
, sum(case when sale_yr = 2022 then sales else 0 end) sales_2022
, sum(case when sale_yr = 2023 then sales else 0 end) sales_2023
from cte
group by sale_mnt;


-- For each category which month had highest sales?
with cte as (
select category, CONCAT(YEAR(order_date), LPAD(MONTH(order_date), 2, '0')) AS yyyymm, sum(sale_price) sales from orders
group by category, yyyymm
order by category, yyyymm
)
select * from (
select  *, row_number() over (partition by category order by sales desc) as rn
from cte) a
where rn = 1
order by sales desc;


-- Which sub-category had the highest profit growth  percentage in 2023 compared to 2022?

select * from orders;

with cte as (
select sub_category, year(order_date) sale_yr, sum(sale_price) sales
from orders
group by sub_category, year(order_date)
-- order by sale_yr, sale_mnt
)
, cte2 as (
select sub_category
, sum(case when sale_yr = 2022 then sales else 0 end) sales_2022
, sum(case when sale_yr = 2023 then sales else 0 end) sales_2023
from cte
group by sub_category
order by sub_category
)
select * 
, round((sales_2023 - sales_2022)*100/sales_2022, 2) as growth_perc
from cte2
order by growth_perc desc
limit 1

