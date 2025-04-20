-- Create tables
CREATE TABLE Customers (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    contact VARCHAR2(20),
    address VARCHAR2(200)
);

CREATE TABLE Restaurants (
    restaurant_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    location VARCHAR2(100)
);

CREATE TABLE Menu_Items (
    item_id NUMBER PRIMARY KEY,
    restaurant_id NUMBER REFERENCES Restaurants(restaurant_id),
    name VARCHAR2(100),
    price NUMBER,
    availability VARCHAR2(10)
);

CREATE TABLE Orders (
    order_id NUMBER PRIMARY KEY,
    customer_id NUMBER REFERENCES Customers(customer_id),
    restaurant_id NUMBER REFERENCES Restaurants(restaurant_id),
    total_amount NUMBER,
    status VARCHAR2(20)
);

CREATE TABLE Payments (
    payment_id NUMBER PRIMARY KEY,
    order_id NUMBER REFERENCES Orders(order_id),
    amount NUMBER,
    method VARCHAR2(50),
    status VARCHAR2(20)
);

CREATE TABLE Delivery_Personnel (
    delivery_id NUMBER PRIMARY KEY,
    order_id NUMBER REFERENCES Orders(order_id),
    name VARCHAR2(100),
    contact VARCHAR2(20),
    status VARCHAR2(20)
);
