-- Insert into Customers
INSERT INTO Customers VALUES (1, 'Alice Smith', '123456789', '123 Main Street');
INSERT INTO Customers VALUES (2, 'Bob Johnson', '234567890', '456 Elm Street');
INSERT INTO Customers VALUES (3, 'Clara Brown', '345678901', '789 Oak Avenue');
INSERT INTO Customers VALUES (4, 'David Wilson', '456789012', '321 Pine Road');

-- Insert into Restaurants
INSERT INTO Restaurants VALUES (1, 'Fast Pizza', 'Downtown');
INSERT INTO Restaurants VALUES (2, 'Burger Shack', 'Uptown');
INSERT INTO Restaurants VALUES (3, 'Sushi House', 'Midtown');
INSERT INTO Restaurants VALUES (4, 'Taco Town', 'West Side');

-- Insert into Menu_Items
INSERT INTO Menu_Items VALUES (1, 1, 'Pepperoni Pizza', 12.99, 'Available');
INSERT INTO Menu_Items VALUES (2, 2, 'Cheeseburger', 8.50, 'Available');
INSERT INTO Menu_Items VALUES (3, 3, 'California Roll', 11.25, 'Available');
INSERT INTO Menu_Items VALUES (4, 4, 'Beef Tacos', 9.75, 'Available');

-- Insert into Orders
INSERT INTO Orders VALUES (1, 1, 1, 12.99, 'Pending');
INSERT INTO Orders VALUES (2, 2, 2, 8.50, 'Pending');
INSERT INTO Orders VALUES (3, 3, 3, 11.25, 'Pending');
INSERT INTO Orders VALUES (4, 4, 4, 9.75, 'Pending');

-- Insert into Payments
INSERT INTO Payments VALUES (1, 1, 12.99, 'Card', 'Paid');
INSERT INTO Payments VALUES (2, 2, 8.50, 'Cash', 'Paid');
INSERT INTO Payments VALUES (3, 3, 11.25, 'Card', 'Pending');
INSERT INTO Payments VALUES (4, 4, 9.75, 'UPI', 'Paid');

-- Insert into Delivery_Personnel
INSERT INTO Delivery_Personnel VALUES (1, 1, 'John Doe', '987654321', 'Assigned');
INSERT INTO Delivery_Personnel VALUES (2, 2, 'Emily Carter', '876543210', 'Assigned');
INSERT INTO Delivery_Personnel VALUES (3, 3, 'Kevin Smith', '765432109', 'Assigned');
INSERT INTO Delivery_Personnel VALUES (4, 4, 'Samantha Lee', '654321098', 'Assigned');


