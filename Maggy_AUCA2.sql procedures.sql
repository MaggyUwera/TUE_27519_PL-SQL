-- Procedure 1: Add Delivery Personnel
CREATE OR REPLACE PROCEDURE add_delivery_person (
    p_delivery_id IN NUMBER,
    p_order_id    IN NUMBER,
    p_name        IN VARCHAR2,
    p_contact     IN VARCHAR2,
    p_status      IN VARCHAR2
)
IS
BEGIN
    INSERT INTO Delivery_Personnel (
        delivery_id, order_id, name, contact, status
    )
    VALUES (
        p_delivery_id, p_order_id, p_name, p_contact, p_status
    );
    
    DBMS_OUTPUT.PUT_LINE('Delivery personnel added successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error in add_delivery_person: ' || SQLERRM);
END;
/
-- Procedure 2: Update Delivery Status
CREATE OR REPLACE PROCEDURE update_delivery_status (
    p_delivery_id IN NUMBER,
    p_status      IN VARCHAR2
)
IS
BEGIN
    UPDATE Delivery_Personnel
    SET status = p_status
    WHERE delivery_id = p_delivery_id;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No record found with delivery_id ' || p_delivery_id);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Status updated successfully.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error in update_delivery_status: ' || SQLERRM);
END;
/
-- Procedure 3: Delete Delivery Personnel
CREATE OR REPLACE PROCEDURE delete_delivery_person (
    p_delivery_id IN NUMBER
)
IS
BEGIN
    DELETE FROM Delivery_Personnel
    WHERE delivery_id = p_delivery_id;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No record found with delivery_id ' || p_delivery_id);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Delivery personnel deleted successfully.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error in delete_delivery_person: ' || SQLERRM);
END;
/
