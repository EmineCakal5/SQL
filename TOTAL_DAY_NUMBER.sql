SET SERVEROUTPUT ON;

DECLARE
    month_input NUMBER := 2;    -- month number
    year_input NUMBER := 2024;  -- year
    days NUMBER;
BEGIN
    IF month_input IN (1, 3, 5, 7, 8, 10, 12) THEN
        days := 31;
    ELSIF month_input IN (4, 6, 9, 11) THEN
        days := 30;
    ELSIF month_input = 2 THEN
        IF (MOD(year_input, 4) = 0 AND MOD(year_input, 100) != 0) OR (MOD(year_input, 400) = 0) THEN
            days := 29;
        ELSE
            days := 28;
        END IF;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Invalis month number!');
        RETURN;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Day number: ' || days);
END;
/