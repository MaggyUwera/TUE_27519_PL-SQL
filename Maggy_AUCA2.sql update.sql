DELETE FROM Customers
WHERE customer_id = 4;
DELETE FROM Delivery_Personnel
WHERE order_id IN (SELECT order_id FROM Orders WHERE customer_id = 4);
DELETE FROM Payments
WHERE order_id IN (SELECT order_id FROM Orders WHERE customer_id = 4);
