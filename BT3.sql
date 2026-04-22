CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE DEFAULT (CURRENT_DATE),
    total_amount DECIMAL(10,2) NOT NULL,
    customer_id INT NOT NULL,

    CONSTRAINT fk_customer
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

--DEFAULT CURRENT_DATE là không nhập ngày thì tự động lấy ngày hôm đó