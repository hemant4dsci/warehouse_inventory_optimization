-- Create data base
CREATE DATABASE warehouse_inventory;

-- Define structure for suppliers table
CREATE TABLE IF NOT EXISTS suppliers (
    supplier_id SMALLINT PRIMARY KEY,
    supplier_name VARCHAR(15),
    supplier_location VARCHAR(10),
    avg_lead_time_days SMALLINT,
    on_time_delivery_rate NUMERIC(5, 2)
);

-- Inserting data into suppliers table
COPY suppliers
FROM
    'E:\Data Analytics Projects\warehouse_inventory_optimization_analytics\data\raw\suppliers.csv'
WITH
    (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- Define sturcture for inventory table
CREATE TABLE IF NOT EXISTS inventory (
    item_id CHAR(8) PRIMARY KEY,
    item_name VARCHAR(12),
    category VARCHAR(12),
    warehouse_zone CHAR(1),
    bin_location CHAR(5),
    current_stock SMALLINT,
    reorder_level SMALLINT,
    unit_cost NUMERIC(10, 2),
    batch_number CHAR(10),
    date_expiry DATE
);

-- Insert data into employee inventory table
COPY inventory
FROM
    'E:\Data Analytics Projects\warehouse_inventory_optimization_analytics\data\raw\inventory.csv'
WITH
    (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- Define structure for purchase_orders table
CREATE TABLE IF NOT EXISTS purchase_orders (
    po_id CHAR(8) PRIMARY KEY,
    item_id CHAR(8),
    order_qty SMALLINT,
    order_date DATE,
    recieved_date DATE,
    supplier_id SMALLINT,
    FOREIGN KEY (supplier_id) REFERENCES suppliers (supplier_id),
    FOREIGN KEY (item_id) REFERENCES inventory (item_id)
);

-- Insert data into purchase_orders table
COPY purchase_orders
FROM
    'E:\Data Analytics Projects\warehouse_inventory_optimization_analytics\data\raw\purchase_orders.csv'
WITH
    (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- Define structure for sales table
CREATE TABLE IF NOT EXISTS sales (
    sale_id CHAR(7) PRIMARY KEY,
    item_id CHAR(8),
    sold_qty SMALLINT,
    sale_date DATE,
    FOREIGN KEY (item_id) REFERENCES inventory (item_id)
);

-- Insert data into sales table
COPY sales
FROM
    'E:\Data Analytics Projects\warehouse_inventory_optimization_analytics\data\raw\sales.csv'
WITH
    (FORMAT CSV, HEADER TRUE, DELIMITER ',');