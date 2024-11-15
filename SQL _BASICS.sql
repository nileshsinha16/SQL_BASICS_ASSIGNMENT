-- PG -- 1
##Q1 Create a table called employees with the following structure? 
    : emp_id (integer, should not be NULL and should be a primary key)
    : emp_name (text, should not be NULL)
    : age (integer, should have a check constraint to ensure the age is at least 18)
    : email (text, should be unique for each employee)
    : salary (decimal, with a default value of 30,000). 
Write the SQL query to create the above table with all constraints.
## CODE -->
create database sql_ass;
use sql_ass;
create table employees 
( emp_id INT primary key,
emp_name varchar (25) not null,
age int check (age <=18) ,
email varchar(30) unique ,
selary decimal default (30000),
Subject_name char(10));


## Q6. Now, you realise that?
 : The product_id should be a primary key.
 : The price should have a default value of 50.00.
## CODE -->
CREATE TABLE products 
(product_id INT primary key,
product_name VARCHAR(50),
price DECIMAL default (50));

## Q7, Write a query to fetch the student_name and class_name for each student using an INNER JOIN.
## CODE -->
select student_name , class_name
from students inner join classes
on students.class_id = classes.class_id;

## Q9, Write a query to find the total sales amount for each product using an INNER JOIN and the SUM() function.
## CODE --> 
select product_id, 
sum(amount * sale_id) as Sale_amount
from sales as s
inner join products as p
on s.product_id = p.product_id
group by product_id;

## 10, Write a query to display the order_id, customer_name, and the quantity of products ordered by each customer using an INNER JOIN between all three tables.
## CODE --> 
SELECT
  orders.order_id,
  customers.customer_name,
  order_details.quantity
FROM orders 
INNER JOIN customers
  ON orders.order_id = customers.customer_name
INNER JOIN order_details
  ON order_details.quantity = customers.customer_name;













