DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1, 'DIYA', 'Ahmedabad'),
(2, 'PRITI', 'Surat'),
(3, 'KHUSHI', 'Rajkot');

INSERT INTO products VALUES
(101, 'Laptop', 50000),
(102, 'Mobile', 20000),
(103, 'Tablet', 15000);

INSERT INTO orders VALUES
(1, 1, '2024-01-10', 50000),
(2, 2, '2024-02-15', 20000),
(3, 1, '2024-03-05', 15000);

INSERT INTO order_items VALUES
(1, 101, 1),
(2, 102, 1),
(3, 103, 1);

EXPLAIN
SELECT *
FROM orders
WHERE customer_id = 1;

SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;