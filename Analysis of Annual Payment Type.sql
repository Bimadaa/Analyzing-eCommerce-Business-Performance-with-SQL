With temp1 as (
	Select payment_type,
			count(payment_type) as total_usage
	From order_payments
	Group by 1
	Order by 2 Desc
),
temp2 as (
Select payment_type,
		sum(case when year = 2016 then 1 else 0 end) as year_2016,
		sum(case when year = 2017 then 1 else 0 end) as year_2017,
		sum(case when year = 2018 then 1 else 0 end) as year_2018
From
	(Select date_part('year', o.order_purchase_timestamp) as year,
			op.payment_type
	From orders o
	Inner Join order_payments op
	On op.order_id = o.order_id) subq
Group by 1)

Select t1.payment_type,
		year_2016,
		year_2017,
		year_2018,
		total_usage
From temp1 t1
Join temp2 t2
On t2.payment_type = t1.payment_type
Order by 4 Desc