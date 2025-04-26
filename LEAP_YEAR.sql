SET SERVEROUTPUT ON;

DECLARE 
    year_input NUMBER := 2000;
BEGIN
    IF (MOD(year_input, 4) = 0 AND MOD(year_input, 100) != 0) OR (MOD(year_input, 400) = 0) THEN
        DBMS_OUTPUT.PUT_LINE(year_input || ' the year is leap year');
    ELSE
        DBMS_OUTPUT.PUT_LINE(year_input || ' the year is not a leap');
    END IF;
END;