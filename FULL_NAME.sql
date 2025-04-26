SET SERVEROUTPUT ON;

DECLARE 
    first_name VARCHAR2(50) := 'Emine';
    last_name VARCHAR2(50) := 'Çakal';
    full_name VARCHAR2(100);

BEGIN
    full_name := last_name || ', ' || first_name;
    DBMS_OUTPUT.PUT_LINE('Full name: ' || full_name);
END;