
CREATE TABLE customers (
    id INT PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
);

-- Building Orders table with a FK from the customers table

CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total FLOAT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);


-- When creating your tables make sure to create the tables that are being referenced first

