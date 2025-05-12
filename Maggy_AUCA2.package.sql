-- PACKAGE SPECIFICATION
CREATE OR REPLACE PACKAGE OnlineFoodPkg AS
    PROCEDURE AddCustomer(
        p_id      IN NUMBER,
        p_name    IN VARCHAR2,
        p_contact IN VARCHAR2,
        p_address IN VARCHAR2
    );

    PROCEDURE UpdateOrderStatus(
        p_order_id IN NUMBER,
        p_status   IN VARCHAR2
    );

    PROCEDURE DeleteCustomer(
        p_customer_id IN NUMBER
    );

    PROCEDURE GetOrderDetails(
        p_order_id IN NUMBER
    );
END OnlineFoodPkg;
/

-- PACKAGE BODY
CREATE OR REPLACE PACKAGE BODY OnlineFoodPkg AS

    -- 1. Add a new customer
    PROCEDURE AddCustomer(
        p_id      IN NUMBER,
        p_name    IN VARCHAR2,
        p_contact IN VARCHAR2,
        p_address IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO Customers (customer_id, name, contact, address)
        VALUES (p_id, p_name, p_contact, p_address);
    END;

    -- 2. Update order status
    PROCEDURE UpdateOrderStatus(
        p_order_id IN NUMBER,
        p_status   IN VARCHAR2
    ) IS
    BEGIN
        UPDATE Orders
        SET status = p_status
        WHERE order_id = p_order_id;
    END;

    -- 3. Delete customer and related data
    PROCEDURE DeleteCustomer(
        p_customer_id IN NUMBER
    ) IS
    BEGIN
        FOR o IN (SELECT order_id FROM Orders WHERE customer_id = p_customer_id) LOOP
            DELETE FROM Delivery_Personnel WHERE order_id = o.order_id;
            DELETE FROM Payments WHERE order_id = o.order_id;
        END LOOP;

        DELETE FROM Orders WHERE customer_id = p_customer_id;
        DELETE FROM Customers WHERE customer_id = p_customer_id;
    END;

    -- 4. Show order details
    PROCEDURE GetOrderDetails(
        p_order_id IN NUMBER
    ) IS
        v_customer_name   Customers.name%TYPE;
        v_restaurant_name Restaurants.name%TYPE;
        v_total_amount    Orders.total_amount%TYPE;
        v_status          Orders.status%TYPE;
    BEGIN
        SELECT c.name, r.name, o.total_amount, o.status
        INTO v_customer_name, v_restaurant_name, v_total_amount, v_status
        FROM Orders o
        JOIN Customers c ON o.customer_id = c.customer_id
        JOIN Restaurants r ON o.restaurant_id = r.restaurant_id
        WHERE o.order_id = p_order_id;

        DBMS_OUTPUT.PUT_LINE('Order ID: ' || p_order_id);
        DBMS_OUTPUT.PUT_LINE('Customer: ' || v_customer_name);
        DBMS_OUTPUT.PUT_LINE('Restaurant: ' || v_restaurant_name);
        DBMS_OUTPUT.PUT_LINE('Total: ' || v_total_amount);
        DBMS_OUTPUT.PUT_LINE('Status: ' || v_status);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No order found with ID ' || p_order_id);
    END;

END OnlineFoodPkg;
/

-- SAMPLE USAGE
BEGIN
    -- Add a new customer
    OnlineFoodPkg.AddCustomer(5, 'Ethan Gray', '555123456', '100 New Street');

    -- Update order status
    OnlineFoodPkg.UpdateOrderStatus(1, 'Delivered');

    -- Delete a customer and related records
    OnlineFoodPkg.DeleteCustomer(4);

    -- Get order details
    OnlineFoodPkg.GetOrderDetails(2);
END;
/
