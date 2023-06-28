<h1 align = "center">Analyzing eCommerce Business Performance with SQL</h1>

<p align="center">
  <img src="https://wallpapercave.com/wp/wp3537586.jpg"/>
</p>

<h2> Project Overview </h2>
"In an enterprise, measuring business performance is very important to track, monitor, and assess the success or failure of various business processes Therefore, this paper will analyze business performance for an eCommerce company, taking into account several business metrics namely customer growth, product quality, and payment type."

<h2> Data Preparation </h2>

 ![image](https://github.com/Bimadaa/Analyzing-eCommerce-Business-Performance-with-SQL/assets/124886706/486a4500-089a-4584-97d6-64564c425478)

  
Entity Relationship Diagram
* Create Table: Create a table using a query in PostgreSQL.
* Alter Table:  Modify tables using alter tables to set the primary and foreign keys of each table and rename incorrect columns.


<h2> Annual Customer Activity Growth Analysis </h2>

![image](https://github.com/Bimadaa/Analyzing-eCommerce-Business-Performance-with-SQL/assets/124886706/1782efd2-d377-43c6-af01-11c26d409283)
Metrics Annual Customer Activity Growth:
* Avg MAU: Average Monthly Active User (MAU) per year
* Total New Customers: Total new customers per year
* Total Repeat Customers: Number of customers who place repeat orders per year
* Avg Freq Order: Average order frequency for each year

![image](https://github.com/Bimadaa/Analyzing-eCommerce-Business-Performance-with-SQL/assets/124886706/30161468-5fed-4727-8c54-42ad9b5b505e)


From the data provided, there are some important metrics that can be taken to analyze the company's customer trends and order frequency from 2016 to 2018. Here are some of the analyses that can be done:
1. Monthly Active User (MAU) Growth:
There was a significant increase in the number of monthly active users from 2016 to 2018 In 2016 the average MAU was 108 67 while in 2018 the average MAU reached 5 338 2 This indicates a rapid growth in users over the observed time period.
2. Number of New and Repeat Customers:
* The number of new customers increased from 326 in 2016 to 52 062 in 2018 This shows that the company managed to gain more new customers year on year.
* The number of repeat customers also increased from 3 in 2016 to 1 167 in 2018 This shows that the company also managed to retain existing customers and increase customer loyalty
3. Average Order Frequency:
The average order frequency (avg freq order) was relatively stable over the observed time period, with slight fluctuations between 1 009 to 1 032. While these fluctuations may not be significant, companies can further study the factors that affect order frequency to optimize sales strategies and extend customer compliance.
4. General Trends:
The data shows a significant growth in all metrics over the three-year period observed This indicates that the company is growing and is able to attract more new customers as well as retain existing customers.


<h2> Annual Product Category Quality Analysis </h2>

![image](https://github.com/Bimadaa/Analyzing-eCommerce-Business-Performance-with-SQL/assets/124886706/2969771f-cea3-473d-87d5-ef2474fd7dae)
Metrics Annual Product Category Quality:
* Annual Revenue: Total revenue per year
* Annual Order Canceled: Total number of canceled orders per year
* Top Revenue by Category: Category that generates the most revenue per year
* Top Order Canceled by Category: Category that has the most canceled orders per year

![image](https://github.com/Bimadaa/Analyzing-eCommerce-Business-Performance-with-SQL/assets/124886706/e9d76c58-0d65-4e78-b87d-00f9919a1d97)


From the data provided regarding annual revenue, canceled orders, as well as the categories with top revenue and top canceled orders, here are some analyses that can be done:
1. Annual Revenue
There was a significant increase in annual revenue from 2016 to 2018 Revenue rose from 46 653 74 in 2016 to 8 451 584 77 in 2018. This shows strong growth over the period
2. Canceled Orders
The number of canceled orders has increased from 2016 to 2018 In 2016 there were 26 canceled orders, while in 2018 the number increased to 334. This increase is noteworthy as canceled orders can reduce revenue and affect customer satisfaction
3. Top Revenue Categories
The top revenue category in 2016 was "Furniture Decor", while in 2017 and 2018 it was "Bed Bath Table" and "Health Beauty" respectively This shows that these categories contribute significantly to the company's revenue
4. Categories with Top Canceled Orders
The category with the top canceled orders in 2016 was " in 2017 it was "Sports Leisure", and in 2018 it was "Health Beauty" Knowledge of these categories can help companies understand the reasons behind order cancellations and take steps to reduce the number of canceled orders


<h2> Analysis of Annual Payment Type </h2>

![image](https://github.com/Bimadaa/Analyzing-eCommerce-Business-Performance-with-SQL/assets/124886706/afefb269-1ab1-4bff-b083-039afa6534b2)

* Credit card: Refers to payments made using a credit card
* Boleto: This is a commonly used payment method in Brazil. A boleto is a payment slip that can be printed and paid through designated banks, outlets, or payment platforms.
* Voucher: Refers to the use of vouchers or coupons as a payment method.
* Debit card: Represents payments made using a debit card.
* Not defined: Refers to cases where the Payment Type is not clearly defined or unknown.


![image](https://github.com/Bimadaa/Analyzing-eCommerce-Business-Performance-with-SQL/assets/124886706/743e89ed-36c5-421b-825c-60224ae0184d)



From the data provided on payment type usage from 2016 to 2018, the following analysis can be done:
1. Total Usage:
The overall total usage of payment methods increased from 2016 to 2018. In 2016, the total usage was 100,346, while in 2018, the total usage reached 102,886. This shows an increase in transaction activity over the period.
2. Payment Method Preferences:
In each year, the credit card was the most widely used payment method with a significantly higher number of usages than other payment methods. This was followed by boleto, voucher, and debit card.
3. Changing Trends:
There was a significant increase in the use of credit cards and boleto from 2016 to 2018. Credit card usage increased from 258 to 41,969, while boleto usage increased from 63 to 10,213. This indicates a growing customer preference for these payment methods. The use of vouchers and debit cards has also increased, although not as much as credit cards and boleto.



