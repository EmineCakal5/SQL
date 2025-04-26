SET SERVEROUTPUT ON;

DECLARE
    hours_worked NUMBER := 40;
    hourly_rate NUMBER := 150;
    gross_pay NUMBER;
    net_pay NUMBER;
    tax_rate CONSTANT NUMBER := 0.28;
BEGIN
    gross_pay := hours_worked * hourly_rate;
    net_pay := gross_pay * (1 - tax_rate);

    DBMS_OUTPUT.PUT_LINE('Gross fee:  ' || gross_pay);
    DBMS_OUTPUT.PUT_LINE('Net fee(after tax): ' || net_pay);
END;