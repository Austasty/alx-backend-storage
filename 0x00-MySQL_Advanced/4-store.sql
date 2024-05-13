-- Write a SQL script that creates a trigger 
-- Quantity in the table items can be negative.
-- Context: Updating multiple tables 
-- crash, etc… to keep your data in a good shape, 

CREATE TRIGGER decrease_items_quantity AFTER INSERT ON orders FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE name=NEW.item_name;
