-- Total Revenue Annually
With total_revenue_year as (
Select year, round(revenue_per_order_id::decimal,2) as total_revenue
From(
	Select date_part('year', o.order_purchase_timestamp) as year,
			sum(oi.price) + sum(oi.freight_value) as revenue_per_order_id
	From orders o
	Join order_items oi
	On oi.order_id = o.order_id
	Where o.order_status = 'delivered'
	Group by 1) subq
Group by 1,2
),
-- Total Order Cancel Annually
total_order_canceled as (
Select year, total_order_canceled
From (
	Select date_part('year', order_purchase_timestamp) as year,
			count(order_id) as total_order_canceled
	From orders
	Where order_status = 'canceled'
	Group by 1) subq
Group by 1,2
Order by 1
),
-- Top Categories The Largest Revenue Annually
top_category_annually as (
Select year, product_category_name, round(total_revenue :: decimal, 2) as total_revenue
From (
		Select date_part('year', o.order_purchase_timestamp) as year,
				sum(oi.price) + sum(oi.freight_value) as total_revenue,
				rank() over(partition by date_part('year', o.order_purchase_timestamp)
							 order by sum(oi.price) + sum(oi.freight_value) DESC) as rank_total_revenue,
				p.product_category_name
		From orders o
		Join order_items oi
		On oi.order_id = o.order_id
		Join product p
		On p.product_id = oi.product_id
		Where o.order_status = 'delivered'
		Group by 1,4) subq
Where rank_total_revenue = 1
),
-- Top Categories The Largest Order Canceled Annually
top_category_canceled_annually as (
Select year, product_category_name, total_canceled
From (
		Select date_part('year', o.order_purchase_timestamp) as year,
				count(order_status) as total_canceled,
				rank() over(partition by date_part('year', o.order_purchase_timestamp)
							 order by count(o.order_status) DESC) as rank_total_canceled,
				p.product_category_name
		From orders o
		Join order_items oi
		On oi.order_id = o.order_id
		Join product p
		On p.product_id = oi.product_id
		Where o.order_status = 'canceled'
		Group by 1,4) subq
Where rank_total_canceled = 1
)

Select try.year,
		try.total_revenue,
		toc.total_order_canceled,
		tca.product_category_name,
		tcca.product_category_name
From total_revenue_year try
Join total_order_canceled toc
On toc.year = try.year
Join top_category_annually tca
On tca.year = toc.year
Join top_category_canceled_annually tcca
On tcca.year = tca.year