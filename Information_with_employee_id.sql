SET SERVEROUTPUT ON;

DECLARE
    v_emp_id NUMBER := 100;                --ID NUMBER
    v_first_name VARCHAR2(50);
    v_last_name VARCHAR2(50);
    v_job_id VARCHAR2(50);
    v_salary NUMBER;
    v_commission NUMBER;
BEGIN
    SELECT first_name, last_name, job_id, salary, commission_pct
    INTO v_first_name, v_last_name, v_job_id, v_salary, v_commission
    FROM employees
    WHERE employee_id = v_emp_id;

    DBMS_OUTPUT.PUT_LINE('Name: ' || v_first_name || ' ' || v_last_name);
    DBMS_OUTPUT.PUT_LINE('Duty: ' || v_job_id);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Commission: ' || NVL(v_commission, 0));
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO EMPLOYEE FOUND WITH THIS ID.');
END;
/