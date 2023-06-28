-- Alter Table Column in product_dataset from "lenght to "length"
Alter Table product_dataset
rename column product_name_lenght to product_name_length;

Alter Table product_dataset
rename column product_description_lenght to product_description_length;

--Alter Table PK & FK
Alter Table customers_dataset
add primary key (customer_id);

Alter Table orders_dataset
add foreign key (customer_id)
references customers_dataset;

Alter Table orders_dataset
add primary key (order_id);

Alter Table order_items_dataset
add foreign key (order_id)
references orders_dataset;

Alter Table order_payments_dataset
add foreign key (order_id)
references orders_dataset;

Alter Table order_reviews_dataset
add foreign key (order_id)
references orders_dataset;

Alter Table sellers_dataset
add primary key (seller_id);

Alter Table order_items_dataset
add foreign key (seller_id)
references sellers_dataset;

Alter Table product_dataset
add primary key (product_id);

Alter Table order_items_dataset
add foreign key (product_id)
references product_dataset;

