-- =========================
-- DROP TABLES (in case they already exist)
-- =========================
DROP TABLE IF EXISTS order_details;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS sales_reps;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;


-- =========================
-- CUSTOMERS TABLE
-- =========================
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

INSERT INTO customers VALUES
('CUST021', 'Ankit Verma', 'ankit@example.com', 'Delhi'),
('CUST037', 'Riya Sharma', 'riya@example.com', 'Mumbai'),
('CUST019', 'Aman Gupta', 'aman@example.com', 'Pune'),
('CUST008', 'Neha Singh', 'neha@example.com', 'Delhi'),
('CUST045', 'Kunal Mehta', 'kunal@example.com', 'Bangalore');


-- =========================
-- PRODUCTS TABLE
-- =========================
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

INSERT INTO products VALUES
('P101', 'Laptop', 'Electronics', 55000),
('P102', 'Smartphone', 'Electronics', 20000),
('P103', 'Headphones', 'Accessories', 1500),
('P104', 'Keyboard', 'Accessories', 1200),
('P105', 'Monitor', 'Electronics', 10000);


-- =========================
-- SALES REPRESENTATIVES TABLE
-- =========================
CREATE TABLE sales_reps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL,
    office_address VARCHAR(200) NOT NULL
);

INSERT INTO sales_reps VALUES
('SR001', 'Raj Malhotra', 'raj@company.com', 'Delhi Office, Connaught Place, New Delhi - 110001'),
('SR002', 'Simran Kaur', 'simran@company.com', 'Mumbai HQ, Nariman Point, Mumbai - 400021'),
('SR003', 'Arjun Kapoor', 'arjun@company.com', 'Bangalore Office'),
('SR004', 'Meera Nair', 'meera@company.com', 'Chennai Office'),
('SR005', 'Rohit Sharma', 'rohit@company.com', 'Pune Office');


-- =========================
-- ORDERS TABLE
-- =========================
CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10) NOT NULL,
    sales_rep_id VARCHAR(10) NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

INSERT INTO orders VALUES
('ORD1027', 'CUST021', 'SR001', '2023-05-12'),
('ORD1114', 'CUST037', 'SR002', '2023-06-18'),
('ORD1153', 'CUST019', 'SR002', '2023-07-10'),
('ORD1002', 'CUST008', 'SR001', '2023-03-25'),
('ORD1118', 'CUST045', 'SR001', '2023-08-01');


-- =========================
-- ORDER DETAILS TABLE
-- =========================
CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id VARCHAR(10) NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_details VALUES
(1, 'ORD1027', 'P101', 1),
(2, 'ORD1114', 'P102', 2),
(3, 'ORD1153', 'P103', 1),
(4, 'ORD1002', 'P104', 3),
(5, 'ORD1118', 'P105', 2);