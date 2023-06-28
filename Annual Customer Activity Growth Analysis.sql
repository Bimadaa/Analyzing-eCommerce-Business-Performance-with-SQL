
-- Monthly Active User (MAU) per Year

With MAU as (
Select year, round(avg(mau),2) as avg_mau
From 
	(Select date_part('year', o.order_purchase_timestamp) as year,
		date_part('month', o.order_purchase_timestamp) as month,
		count(distinct c.customer_unique_id) as mau
	From orders as o
	Join customers as c
	On o.customer_id = c.customer_id
	Group by 1,2) subq
Group by 1
),

--Total New Customers Per Year

new_customer as(
Select date_part('year', first_order) as year,
		count(distinct customer_unique_id) as total_new_customer
From 
	(Select c.customer_unique_id,
		min(o.order_purchase_timestamp) as first_order
	From orders as o
	Join customers as c
	On o.customer_id = c.customer_id
	Group by 1) subq
Group by 1
Order by 1
),

-- Total Repeat Order Customers Per Years

repeat_order as (
Select year,
		count(customers) as total_repeat_customers
From 
	(Select c.customer_unique_id,
		count(c.customer_unique_id) as customers,
		date_part('year',o.order_purchase_timestamp) as year
	From orders as o
	Join customers as c 
	On o.customer_id = c.customer_id
	Group by 1,3
	Having count(c.customer_unique_id) > 1) subq
Group by 1
Order by 1 asc
),

-- Average Freq Order Per Year
Freq_order as (
Select year,
		Round(Avg(total_order),3) as avg_order
From (
	Select date_part('year',o.order_purchase_timestamp) as year,
			c.customer_unique_id,
			count(c.customer_unique_id) as total_order
	From orders as o
	Join customers as c 
	On o.customer_id = c.customer_id
	Group by 1,2) subq
Group by 1)

-- Combine new metrics to be one table

Select m.year, m.avg_mau, nc.total_new_customer, ro.total_repeat_customers, 
		fo.avg_order
From MAU as m
Join new_customer as nc ON m.year = nc.year
Join repeat_order as ro ON m.year = ro.year
Join freq_order as fo ON m.year = fo.year