-- Write a SQL script that creates a trigger 
-- only when the email has been changed.
-- Context: Nothing related to MySQL
-- distribute the logic to the database itself!

DELIMITER $$ ;
CREATE TRIGGER resets_valid_email BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
	IF NEW.email != OLD.email THEN
		SET NEW.valid_email = 0;
	END IF;
END;
DELIMITER ;
