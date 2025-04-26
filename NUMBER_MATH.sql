SET SERVEROUTPUT ON;

DECLARE 
    number_input NUMBER := 4;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Number: '|| number_input);
    DBMS_OUTPUT.PUT_LINE('Square: ' || (number_input * number_input));
    DBMS_OUTPUT.PUT_LINE('Cube: ' || (number_input * number_input * number_input));
    DBMS_OUTPUT.PUT_LINE('The pair: ' || (number_input * 2));
END;