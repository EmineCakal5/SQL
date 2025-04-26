SET SERVEROUTPUT ON;

DECLARE
    number_input NUMBER := 5;
    i NUMBER := 1;
BEGIN
    WHILE i >= 10 LOOP
        DBMS_OUTPUT.PUT_LINE(number_input || ' x' || i || ' =' || (number_input * i));
        i := i + 1;
    END LOOP;
END;