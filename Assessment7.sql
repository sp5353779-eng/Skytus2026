CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE,
    amount INT
);

CREATE TABLE order_items (
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT
);

INSERT INTO customers (name, city) VALUES
('Amit', 'Surat'),
('Riya', 'Ahmedabad'),
('Karan', 'Baroda'),
('Neha', 'Surat');

INSERT INTO products (product_name, price) VALUES
('Laptop', 50000),
('Mobile', 20000),
('Headphones', 2000);

INSERT INTO orders (customer_id, order_date, amount) VALUES
(1, '2024-01-10', 50000),
(2, '2024-01-15', 20000),
(1, '2024-02-05', 2000),
(3, '2024-02-20', 70000);

INSERT INTO order_items VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 1);

SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

SELECT name
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id FROM orders
);

SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 1;

SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    SUM(amount) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;

SELECT c.name, SUM(o.amount) AS total_purchase
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING SUM(o.amount) > 50000;

SELECT c.city, SUM(o.amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC
LIMIT 3;