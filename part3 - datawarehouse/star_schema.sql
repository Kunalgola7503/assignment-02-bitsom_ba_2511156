-- =========================
-- DROP TABLES (just to be on the safe side)
-- =========================
DROP TABLE IF EXISTS fact_sales;
DROP TABLE IF EXISTS dim_date;
DROP TABLE IF EXISTS dim_store;
DROP TABLE IF EXISTS dim_product;


-- =========================
-- CLEANING NOTES
-- =========================
-- Dates standardized to YYYY-MM-DD format
-- NULL values replaced with 'Unknown'
-- Category names standardized to proper casing (Electronics, Clothing, Groceries)


-- =========================
-- DIMENSION TABLES
-- =========================

-- Date Dimension
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL,
    month INT NOT NULL,
    year INT NOT NULL
);

-- Store Dimension
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Product Dimension
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL
);


-- =========================
-- FACT TABLE
-- =========================
CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT NOT NULL,
    store_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);


-- =========================
-- INSERT INTO DIMENSIONS (CLEANED DATA)
-- =========================

-- Date Dimension (standardized format)
INSERT INTO dim_date VALUES
(1, '2023-01-10', 1, 2023),
(2, '2023-02-15', 2, 2023),
(3, '2023-03-20', 3, 2023),
(4, '2023-04-05', 4, 2023),
(5, '2023-05-12', 5, 2023);

-- Store Dimension (NULLs handled with 'Unknown')
INSERT INTO dim_store VALUES
(1, 'Store A', 'Delhi'),
(2, 'Store B', 'Mumbai'),
(3, 'Store C', 'Bangalore'),
(4, 'Unknown Store', 'Unknown');

-- Product Dimension (category casing standardized)
INSERT INTO dim_product VALUES
(101, 'Laptop', 'Electronics'),
(102, 'T-Shirt', 'Clothing'),
(103, 'Milk', 'Groceries'),
(104, 'Headphones', 'Electronics'),
(105, 'Jeans', 'Clothing'),
(106, 'Unknown Product', 'Unknown');


-- =========================
-- INSERT INTO FACT TABLE (10+ cleaned rows)
-- =========================
INSERT INTO fact_sales VALUES
(1, 1, 1, 101, 1, 55000),
(2, 2, 2, 102, 3, 3000),
(3, 3, 1, 103, 5, 300),
(4, 4, 3, 104, 2, 4000),
(5, 5, 2, 105, 2, 4000),
(6, 1, 2, 101, 1, 55000),
(7, 2, 3, 102, 2, 2000),
(8, 3, 4, 103, 4, 240),
(9, 4, 2, 104, 1, 2000),
(10, 5, 3, 105, 3, 6000);