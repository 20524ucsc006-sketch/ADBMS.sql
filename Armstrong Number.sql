SET SERVEROUTPUT ON;
DECLARE
    num NUMBER := 153;
    temp NUMBER;
    digit NUMBER;
    total NUMBER := 0;
    digits NUMBER;
BEGIN
    temp := num;
    digits := LENGTH(TO_CHAR(num));

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        total := total + POWER(digit, digits);
        temp := TRUNC(temp / 10);
    END LOOP;

    IF total = num THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is an Armstrong Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is not an Armstrong Number');
    END IF;
END;

