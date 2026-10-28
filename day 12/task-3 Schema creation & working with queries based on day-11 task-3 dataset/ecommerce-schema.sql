CREATE DATABASE DB_DAY_12_TASK_3;

USE DB_DAY_12_TASK_3;

CREATE TABLE CustomerOrders(
	order_id VARCHAR(16) PRIMARY KEY,
    order_datetime TIMESTAMP NOT NULL,
    customer_id VARCHAR(16) NOT NULL,
    city VARCHAR(32),
    product_name VARCHAR(64) NOT NULL,
    category VARCHAR(32),
    cost_per_unit FLOAT NOT NULL CHECK (cost_per_unit > 0),
    quantity INTEGER NOT NULL CHECK (quantity >= 0),
    payment_method VARCHAR(24),
    revenue FLOAT NOT NULL CHECK (revenue >= 0)    
);

INSERT INTO CustomerOrders VALUES ('ORD-1001', '2024-01-03 09:15:36', 'CUST-501', 'Chicago', 'Wireless Ergonomic Mouse', 'Electronics', 29.99, 2, 'Credit Card', 59.98);
INSERT INTO CustomerOrders VALUES ('ORD-1002', '2024-01-03 10:42:15', 'CUST-502', 'Seattle', 'Mechanical Keyboard', 'Electronics', 89.5, 1, 'PayPal', 89.5);
INSERT INTO CustomerOrders VALUES ('ORD-1003', '2024-01-03 12:05:27', 'CUST-503', 'Austin', 'Organic Green Tea (Pack of 50)', 'Grocery', 14.25, 3, 'Debit Card', 42.75);
INSERT INTO CustomerOrders VALUES ('ORD-1004', '2024-01-03 08:30:43', 'CUST-504', 'Denver', 'Yoga Mat Non-Slip', 'Fitness', 24, 1, 'Credit Card', 24);
INSERT INTO CustomerOrders VALUES ('ORD-1005', '2024-01-03 14:22:09', 'CUST-505', 'Boston', 'Ceramic Coffee Mug 12oz', 'Home & Kitchen', 12.5, 4, 'Apple Pay', 50);
INSERT INTO CustomerOrders VALUES ('ORD-1006', '2024-01-03 11:10:54', 'CUST-506', 'San Francisco', 'Noise Cancelling Headphones', 'Electronics', 199.99, 1, 'Credit Card', 199.99);


