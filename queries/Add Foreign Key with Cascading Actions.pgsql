ALTER TABLE orders
  ADD CONSTRAINT fk_orders_customer_id 
  FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE;