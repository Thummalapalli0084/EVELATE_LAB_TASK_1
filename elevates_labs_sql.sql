use elevates_labs ;
-- select function 
select * from products ;

-- Filter Electronics category
select  * from  products
where category = 'Electronics';

-- ✔ Top products by price (DESC)

select product_name, price
from  products
order by  price desc;

-- Total orders per customer
select  customer_id, count(order_id) as total_orders
from  orders
group by customer_id;

-- b. JOINS (INNER, LEFT, RIGHT)

select o.order_id, c.customer_name, o.order_date
from  orders o
inner join customers c on  o.customer_id = c.customer_id;

select  c.customer_name, o.order_id
from  customers c
left join  orders o on c.customer_id = o.customer_id;

select c.customer_name, o.order_id
from  customers c
right join  orders o on c.customer_id = o.customer_id;

-- c. SUBQUERIES
select  order_id, subtotal
from  order_items
where  subtotal > (
    select avg (subtotal) from order_items
);

select distinct customer_id
from orders
where order_id in (
    select order_id from  order_items where subtotal > 10000
);


-- d. AGGREGATE FUNCTIONS (SUM, AVG)
select sum(subtotal) as total_revenue
from order_items;

select avg(price) as avg_price
from  products;

-- e. CREATE VIEWS
create view customer_sales as
select c.customer_name,
       sum(oi.subtotal) as total_spent
from customers c
join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id
group by c.customer_name;


create view product_sales as
select p.product_name,
       sum(oi.quantity) as total_qty_sold,
       sum(oi.subtotal) as total_revenue
from products p
join order_items oi on p.product_id = oi.product_id
group by p.product_name;


-- Indexes
create index idx_customer_id on orders(customer_id);
create index idx_order_id on order_items(order_id);
create index idx_product_id on order_items(product_id);
