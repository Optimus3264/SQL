create database mysqlsubquery2;
use mysqlsubquery2;

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers (name, city) VALUES
('Alice', 'New York'),
('Bob', 'Los Angeles'),
('Charlie', 'New York'),
('Diana', 'Chicago'),
('Ethan', 'Los Angeles');

INSERT INTO orders (customer_id, order_date, amount) VALUES
(1, '2024-05-01', 300.00),
(1, '2024-06-01', 150.00),
(2, '2024-05-03', 200.00),
(3, '2024-07-10', 350.00),
(5, '2024-06-15', 400.00);

select * from customers;
select * from orders;

-- cutomers with total order is $ 400
 select name from customers where id in (select customer_id from orders group by customer_id having sum(amount)>400);

-- customer who do not give any order
select name from customers where id  not in (select customer_id from orders);

-- order with above avg amount
select * from orders where amount > (select avg(amount) from orders);

-- cities with avg order > 250
select city from customers where id in (select customer_id from orders group by customer_id having avg(amount) > 250);