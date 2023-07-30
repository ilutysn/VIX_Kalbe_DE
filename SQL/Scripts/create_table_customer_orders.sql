CREATE TABLE customer_orders (
  order_no INT PRIMARY KEY,
  purchase_amount DECIMAL(10, 2),
  order_date DATE,
  customer_id INT,
  salesman_id INT
);