-- =============================================
-- Technical Support Engineer Assessment
-- SQL Test Database Setup Script
-- =============================================
-- This script creates a simple e-commerce database
-- with realistic test data for SQL assessment
-- =============================================

-- Drop existing tables if they exist (for clean setup)
IF OBJECT_ID('OrderItems', 'U') IS NOT NULL DROP TABLE OrderItems;
IF OBJECT_ID('Orders', 'U') IS NOT NULL DROP TABLE Orders;
IF OBJECT_ID('Products', 'U') IS NOT NULL DROP TABLE Products;
IF OBJECT_ID('Customers', 'U') IS NOT NULL DROP TABLE Customers;
GO

-- =============================================
-- Create Tables
-- =============================================

-- Customers Table
CREATE TABLE Customers (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    email NVARCHAR(100),
    signup_date DATE NOT NULL,
    status NVARCHAR(20) NOT NULL
);

-- Products Table
CREATE TABLE Products (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    category NVARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL
);

-- Orders Table
CREATE TABLE Orders (
    id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    status NVARCHAR(20) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

-- OrderItems Table
CREATE TABLE OrderItems (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(id),
    FOREIGN KEY (product_id) REFERENCES Products(id)
);
GO

-- =============================================
-- Insert Test Data - Customers
-- =============================================

INSERT INTO Customers (name, email, signup_date, status) VALUES
('Alice Johnson', 'alice.johnson@email.com', '2023-01-15', 'active'),
('Bob Smith', 'bob.smith@email.com', '2023-02-20', 'active'),
('Carol White', 'carol.white@email.com', '2023-03-10', 'active'),
('David Brown', 'david.brown@email.com', '2023-03-25', 'inactive'),
('Emma Davis', 'emma.davis@email.com', '2023-04-05', 'active'),
('Frank Miller', 'frank.miller@email.com', '2023-04-18', 'active'),
('Grace Wilson', NULL, '2023-05-02', 'active'), -- Note: NULL email
('Henry Moore', 'henry.moore@email.com', '2023-05-15', 'active'),
('Ivy Taylor', 'ivy.taylor@email.com', '2023-06-01', 'active'),
('Jack Anderson', 'jack.anderson@email.com', '2023-06-20', 'inactive'),
('Karen Thomas', 'karen.thomas@email.com', '2023-07-05', 'active'),
('Leo Jackson', 'leo.jackson@email.com', '2023-07-22', 'active'),
('Mia Martin', 'mia.martin@email.com', '2023-08-10', 'active'),
('Noah Lee', 'noah.lee@email.com', '2023-08-28', 'active'),
('Olivia Harris', 'olivia.harris@email.com', '2023-09-12', 'active'),
('Paul Clark', 'paul.clark@email.com', '2023-09-25', 'inactive'),
('Quinn Lewis', 'quinn.lewis@email.com', '2023-10-08', 'active'),
('Rachel Walker', 'rachel.walker@email.com', '2023-10-20', 'active'),
('Sam Hall', 'sam.hall@email.com', '2023-11-03', 'active'),
('Tina Allen', 'tina.allen@email.com', '2023-11-18', 'active'),
('Uma Young', 'uma.young@email.com', '2023-12-01', 'active'),
('Victor King', 'victor.king@email.com', '2023-12-15', 'inactive'),
('Wendy Wright', 'wendy.wright@email.com', '2024-01-05', 'active'),
('Xavier Lopez', 'xavier.lopez@email.com', '2024-01-20', 'active'),
('Yara Hill', 'yara.hill@email.com', '2024-02-02', 'active'),
('Zack Scott', 'zack.scott@email.com', '2024-02-18', 'active'),
('Amy Green', 'amy.green@email.com', '2024-03-05', 'active'),
('Ben Adams', 'ben.adams@email.com', '2024-03-22', 'active'),
('Chloe Baker', 'chloe.baker@email.com', '2024-04-08', 'active'),
('Dan Nelson', 'dan.nelson@email.com', '2024-04-25', 'inactive'),
('Ella Carter', 'ella.carter@email.com', '2024-05-10', 'active'),
('Fred Mitchell', 'fred.mitchell@email.com', '2024-05-28', 'active'),
('Gina Perez', 'gina.perez@email.com', '2024-06-12', 'active'),
('Hank Roberts', 'hank.roberts@email.com', '2024-06-30', 'active'),
('Iris Turner', 'iris.turner@email.com', '2024-07-15', 'active'),
('Jake Phillips', 'jake.phillips@email.com', '2024-07-30', 'active'),
('Kara Campbell', 'kara.campbell@email.com', '2024-08-14', 'active'),
('Liam Parker', 'liam.parker@email.com', '2024-08-28', 'active'),
('Maya Evans', 'maya.evans@email.com', '2024-09-10', 'active'),
('Nick Edwards', 'nick.edwards@email.com', '2024-09-25', 'inactive'),
('Opal Collins', 'opal.collins@email.com', '2024-10-08', 'active'),
('Pete Stewart', 'pete.stewart@email.com', '2024-10-22', 'active'),
('Quincy Sanchez', 'quincy.sanchez@email.com', '2024-11-05', 'active'),
('Rita Morris', 'rita.morris@email.com', '2024-11-20', 'active'),
('Steve Rogers', 'steve.rogers@email.com', '2024-12-03', 'active'),
('Tara Reed', 'tara.reed@email.com', '2024-12-18', 'active'),
('Ulysses Cook', 'ulysses.cook@email.com', '2025-01-02', 'active'),
('Vera Morgan', NULL, '2025-01-10', 'active'), -- Note: NULL email
('Wade Bell', 'wade.bell@email.com', '2025-01-12', 'active'),
('Xena Murphy', 'xena.murphy@email.com', '2025-01-13', 'active');

-- =============================================
-- Insert Test Data - Products
-- =============================================

INSERT INTO Products (name, category, price, stock_quantity) VALUES
('Laptop Pro 15', 'Electronics', 1299.99, 45),
('Wireless Mouse', 'Electronics', 29.99, 150),
('USB-C Cable', 'Electronics', 12.99, 200),
('Desk Chair Ergonomic', 'Furniture', 249.99, 30),
('Standing Desk', 'Furniture', 599.99, 15),
('Monitor 27 inch', 'Electronics', 349.99, 60),
('Keyboard Mechanical', 'Electronics', 89.99, 80),
('Webcam HD', 'Electronics', 79.99, 100),
('Desk Lamp LED', 'Furniture', 39.99, 120),
('Notebook Set', 'Office Supplies', 15.99, 250),
('Pen Pack Blue', 'Office Supplies', 8.99, 300),
('Stapler Heavy Duty', 'Office Supplies', 19.99, 180),
('File Cabinet 2-Drawer', 'Furniture', 159.99, 25),
('Whiteboard Large', 'Office Supplies', 89.99, 40),
('Coffee Maker', 'Appliances', 79.99, 50),
('Water Bottle Insulated', 'Accessories', 24.99, 200),
('Backpack Laptop', 'Accessories', 59.99, 90),
('Phone Stand', 'Accessories', 14.99, 150),
('Headphones Wireless', 'Electronics', 149.99, 70),
('Tablet 10 inch', 'Electronics', 399.99, 35),
('Printer All-in-One', 'Electronics', 199.99, 40),
('Paper Ream 500 sheets', 'Office Supplies', 9.99, 400),
('Desk Organizer', 'Office Supplies', 22.99, 110),
('Monitor Stand', 'Furniture', 44.99, 85),
('Cable Management Kit', 'Electronics', 16.99, 160),
('Surge Protector', 'Electronics', 24.99, 140),
('Desk Mat Large', 'Accessories', 29.99, 95),
('Plant Desk Small', 'Accessories', 12.99, 75),
('Calendar Wall 2025', 'Office Supplies', 11.99, 60),
('Scissors Professional', 'Office Supplies', 7.99, 220);

-- =============================================
-- Insert Test Data - Orders
-- =============================================

-- Orders for various customers across 2023-2024
INSERT INTO Orders (customer_id, order_date, total_amount, status) VALUES
(1, '2023-01-20', 1329.98, 'completed'),
(1, '2023-03-15', 89.99, 'completed'),
(2, '2023-02-25', 649.98, 'completed'),
(2, '2023-06-10', 29.99, 'completed'),
(3, '2023-03-18', 1299.99, 'completed'),
(3, '2023-08-22', 349.99, 'completed'),
(4, '2023-04-02', 249.99, 'cancelled'),
(5, '2023-04-10', 599.99, 'completed'),
(5, '2023-07-15', 159.99, 'completed'),
(5, '2023-11-20', 79.99, 'completed'),
(6, '2023-04-25', 1299.99, 'completed'),
(6, '2023-09-05', 149.99, 'completed'),
(7, '2023-05-08', 89.99, 'completed'),
(8, '2023-05-20', 399.99, 'completed'),
(8, '2023-10-12', 199.99, 'completed'),
(9, '2023-06-05', 249.99, 'completed'),
(9, '2023-12-01', 1299.99, 'completed'),
(10, '2023-06-28', 79.99, 'cancelled'),
(11, '2023-07-10', 349.99, 'completed'),
(11, '2023-11-15', 89.99, 'completed'),
(12, '2023-07-28', 599.99, 'completed'),
(13, '2023-08-15', 1299.99, 'completed'),
(13, '2023-12-20', 149.99, 'completed'),
(14, '2023-09-02', 249.99, 'completed'),
(15, '2023-09-18', 399.99, 'completed'),
(15, '2023-12-28', 79.99, 'completed'),
(16, '2023-10-01', 159.99, 'cancelled'),
(17, '2023-10-15', 1299.99, 'completed'),
(18, '2023-10-28', 349.99, 'completed'),
(18, '2024-02-14', 89.99, 'completed'),
(19, '2023-11-08', 599.99, 'completed'),
(20, '2023-11-25', 249.99, 'completed'),
(21, '2023-12-05', 1299.99, 'completed'),
(22, '2023-12-22', 79.99, 'cancelled'),
(23, '2024-01-10', 349.99, 'completed'),
(23, '2024-05-20', 149.99, 'completed'),
(24, '2024-01-25', 599.99, 'completed'),
(25, '2024-02-08', 1299.99, 'completed'),
(26, '2024-02-22', 249.99, 'completed'),
(26, '2024-06-30', 89.99, 'completed'),
(27, '2024-03-10', 399.99, 'completed'),
(28, '2024-03-28', 159.99, 'completed'),
(28, '2024-08-15', 79.99, 'completed'),
(29, '2024-04-12', 1299.99, 'completed'),
(30, '2024-05-02', 349.99, 'cancelled'),
(31, '2024-05-15', 599.99, 'completed'),
(31, '2024-09-22', 149.99, 'completed'),
(32, '2024-06-02', 249.99, 'completed'),
(33, '2024-06-18', 1299.99, 'completed'),
(34, '2024-07-05', 399.99, 'completed'),
(34, '2024-11-10', 89.99, 'completed'),
(35, '2024-07-20', 599.99, 'completed'),
(36, '2024-08-02', 249.99, 'completed'),
(37, '2024-08-18', 1299.99, 'completed'),
(37, '2024-12-05', 79.99, 'completed'),
(38, '2024-09-01', 349.99, 'completed'),
(39, '2024-09-15', 159.99, 'completed'),
(40, '2024-09-30', 599.99, 'cancelled'),
(41, '2024-10-12', 1299.99, 'completed'),
(42, '2024-10-28', 249.99, 'completed'),
(43, '2024-11-08', 399.99, 'completed'),
(44, '2024-11-25', 149.99, 'completed'),
(45, '2024-12-08', 1299.99, 'completed'),
(46, '2024-12-22', 89.99, 'completed'),
(47, '2025-01-05', 599.99, 'pending'),
(48, '2025-01-11', 249.99, 'pending'),
(49, '2025-01-13', 1299.99, 'processing'),
(50, '2025-01-13', 349.99, 'processing');

-- =============================================
-- Insert Test Data - OrderItems
-- =============================================

-- Order 1: Customer 1 - Laptop + Mouse
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1299.99),
(1, 2, 1, 29.99);

-- Order 2: Customer 1 - Keyboard
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(2, 7, 1, 89.99);

-- Order 3: Customer 2 - Standing Desk + Desk Chair
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(3, 5, 1, 599.99),
(3, 4, 1, 249.99);

-- Order 4: Customer 2 - Mouse
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(4, 2, 1, 29.99);

-- Order 5: Customer 3 - Laptop
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(5, 1, 1, 1299.99);

-- Order 6: Customer 3 - Monitor
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(6, 6, 1, 349.99);

-- Order 7: Customer 4 - Desk Chair (cancelled)
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(7, 4, 1, 249.99);

-- Order 8: Customer 5 - Standing Desk
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(8, 5, 1, 599.99);

-- Order 9: Customer 5 - File Cabinet
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(9, 13, 1, 159.99);

-- Order 10: Customer 5 - Coffee Maker
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(10, 15, 1, 79.99);

-- Order 11: Customer 6 - Laptop
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(11, 1, 1, 1299.99);

-- Order 12: Customer 6 - Headphones
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(12, 19, 1, 149.99);

-- Order 13: Customer 7 - Keyboard
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(13, 7, 1, 89.99);

-- Order 14: Customer 8 - Tablet
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(14, 20, 1, 399.99);

-- Order 15: Customer 8 - Printer
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(15, 21, 1, 199.99);

-- Order 16: Customer 9 - Desk Chair
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(16, 4, 1, 249.99);

-- Order 17: Customer 9 - Laptop
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(17, 1, 1, 1299.99);

-- Order 18: Customer 10 - Coffee Maker (cancelled)
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(18, 15, 1, 79.99);

-- Order 19: Customer 11 - Monitor
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(19, 6, 1, 349.99);

-- Order 20: Customer 11 - Keyboard
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(20, 7, 1, 89.99);

-- Order 21: Customer 12 - Standing Desk
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(21, 5, 1, 599.99);

-- Order 22: Customer 13 - Laptop
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(22, 1, 1, 1299.99);

-- Order 23: Customer 13 - Headphones
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(23, 19, 1, 149.99);

-- Order 24: Customer 14 - Desk Chair
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(24, 4, 1, 249.99);

-- Order 25: Customer 15 - Tablet
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(25, 20, 1, 399.99);

-- Order 26: Customer 15 - Coffee Maker
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(26, 15, 1, 79.99);

-- Order 27: Customer 16 - File Cabinet (cancelled)
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(27, 13, 1, 159.99);

-- Order 28: Customer 17 - Laptop
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(28, 1, 1, 1299.99);

-- Order 29: Customer 18 - Monitor
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(29, 6, 1, 349.99);

-- Order 30: Customer 18 - Keyboard
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(30, 7, 1, 89.99);

-- Order 31: Customer 19 - Standing Desk
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(31, 5, 1, 599.99);

-- Order 32: Customer 20 - Desk Chair
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(32, 4, 1, 249.99);

-- Order 33: Customer 21 - Laptop
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(33, 1, 1, 1299.99);

-- Order 34: Customer 22 - Coffee Maker (cancelled)
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(34, 15, 1, 79.99);

-- Order 35: Customer 23 - Monitor
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(35, 6, 1, 349.99);

-- Order 36: Customer 23 - Headphones
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(36, 19, 1, 149.99);

-- Order 37: Customer 24 - Standing Desk
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(37, 5, 1, 599.99);

-- Order 38: Customer 25 - Laptop
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(38, 1, 1, 1299.99);

-- Order 39: Customer 26 - Desk Chair
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(39, 4, 1, 249.99);

-- Order 40: Customer 26 - Keyboard
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(40, 7, 1, 89.99);

-- Order 41: Customer 27 - Tablet
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(41, 20, 1, 399.99);

-- Order 42: Customer 28 - File Cabinet
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(42, 13, 1, 159.99);

-- Order 43: Customer 28 - Coffee Maker
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(43, 15, 1, 79.99);

-- Order 44: Customer 29 - Laptop
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(44, 1, 1, 1299.99);

-- Order 45: Customer 30 - Monitor (cancelled)
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(45, 6, 1, 349.99);

-- Order 46: Customer 31 - Standing Desk
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(46, 5, 1, 599.99);

-- Order 47: Customer 31 - Headphones
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(47, 19, 1, 149.99);

-- Order 48: Customer 32 - Desk Chair
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(48, 4, 1, 249.99);

-- Order 49: Customer 33 - Laptop
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(49, 1, 1, 1299.99);

-- Order 50: Customer 34 - Tablet
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(50, 20, 1, 399.99);

-- Order 51: Customer 34 - Keyboard
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(51, 7, 1, 89.99);

-- Order 52: Customer 35 - Standing Desk
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(52, 5, 1, 599.99);

-- Order 53: Customer 36 - Desk Chair
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(53, 4, 1, 249.99);

-- Order 54: Customer 37 - Laptop
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(54, 1, 1, 1299.99);

-- Order 55: Customer 37 - Coffee Maker
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(55, 15, 1, 79.99);

-- Order 56: Customer 38 - Monitor
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(56, 6, 1, 349.99);

-- Order 57: Customer 39 - File Cabinet
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(57, 13, 1, 159.99);

-- Order 58: Customer 40 - Standing Desk (cancelled)
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(58, 5, 1, 599.99);

-- Order 59: Customer 41 - Laptop
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(59, 1, 1, 1299.99);

-- Order 60: Customer 42 - Desk Chair
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(60, 4, 1, 249.99);

-- Order 61: Customer 43 - Tablet
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(61, 20, 1, 399.99);

-- Order 62: Customer 44 - Headphones
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(62, 19, 1, 149.99);

-- Order 63: Customer 45 - Laptop
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(63, 1, 1, 1299.99);

-- Order 64: Customer 46 - Keyboard
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(64, 7, 1, 89.99);

-- Order 65: Customer 47 - Standing Desk (pending)
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(65, 5, 1, 599.99);

-- Order 66: Customer 48 - Desk Chair (pending)
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(66, 4, 1, 249.99);

-- Order 67: Customer 49 - Laptop (processing)
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(67, 1, 1, 1299.99);

-- Order 68: Customer 50 - Monitor (processing)
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(68, 6, 1, 349.99);

GO

-- =============================================
-- Verification Queries (Optional - for setup testing)
-- =============================================

-- Uncomment these to verify the data was inserted correctly

-- SELECT COUNT(*) AS CustomerCount FROM Customers;
-- SELECT COUNT(*) AS ProductCount FROM Products;
-- SELECT COUNT(*) AS OrderCount FROM Orders;
-- SELECT COUNT(*) AS OrderItemCount FROM OrderItems;

-- SELECT TOP 5 * FROM Customers;
-- SELECT TOP 5 * FROM Products;
-- SELECT TOP 5 * FROM Orders;
-- SELECT TOP 5 * FROM OrderItems;

PRINT 'Database setup completed successfully!';
PRINT 'Tables created: Customers, Products, Orders, OrderItems';
PRINT 'Test data inserted for 50 customers, 30 products, and 68 orders';
