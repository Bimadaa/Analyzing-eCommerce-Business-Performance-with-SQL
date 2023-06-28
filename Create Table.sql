-- Create Table product_dataset
Create Table product_dataset(
product_id varchar,
product_category_name varchar,
product_name_lenght integer,
product_description_lenght integer,
product_photos_qty integer,
product_weight_g integer,
product_length_cm integer,
product_height_cm integer,
product_width_cm integer
);

-- Create Table orders_dataset
Create Table orders_dataset(
order_id varchar,
customer_id varchar,
order_status varchar,
order_purchase_timestamp timestamp without time zone,
order_approved_at timestamp without time zone,
order_delivered_carrier_date timestamp without time zone,
order_delivered_customer_date timestamp without time zone,
order_estimated_delivery_date timestamp without time zone
);

-- Create Table customers_dataset
Create Table customers_dataset(
customer_id varchar,
customer_unique_id varchar,
customer_zip_code_prefix integer,
customer_city varchar,
customer_state varchar
);

-- Create Table order_reviews_dataset
Create Table order_reviews_dataset(
review_id varchar,
order_id varchar,
review_score integer,
review_comment_title varchar,
review_comment_message varchar,
review_creation_date timestamp without time zone,
review_answer_timestamp timestamp without time zone
);

-- Create Table sellers_dataset
Create Table sellers_dataset(
seller_id varchar,
seller_zip_code_prefix integer,
seller_city varchar,
seller_state varchar
);

-- Create Table order_items_dataset
Create Table order_items_dataset(
order_id varchar,
order_item_id integer,
product_id varchar,
seller_id varchar,
shipping_limit_date timestamp without time zone,
price double precision,
freight_value double precision
);

-- Create Table geolocation_dataset
Create Table geolocation_dataset(
geolocation_zip_code_prefix integer,
geolocation_lat double precision,
geolocation_lng double precision,
geolocation_city varchar,
geolocation_state varchar
);

-- Create Table order_payments_dataset
Create Table order_payments_dataset(
order_id varchar,
payment_sequential integer,
payment_type varchar,
payment_installments integer,
payment_value double precision
);