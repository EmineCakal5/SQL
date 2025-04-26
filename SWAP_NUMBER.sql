SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 5;
    b NUMBER := 10;
    temp Number;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Before changed: A = ' || a || ', B = ' || b);

    temp := a;
    a := b;
    b := temp;
    
    DBMS_OUTPUT.PUT_LINE('After cahanging: A = ' || a || ', B = ' || b);
    END;