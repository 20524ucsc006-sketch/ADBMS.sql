DECLARE
    a NUMBER := 10;
    b NUMBER := 5;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Addition = ' || (a + b));
    DBMS_OUTPUT.PUT_LINE('Subtraction = ' || (a - b));
    DBMS_OUTPUT.PUT_LINE('Multiplication = ' || (a * b));
    DBMS_OUTPUT.PUT_LINE('Division = ' || (a / b));
    DBMS_OUTPUT.PUT_LINE('Modulus = ' || MOD(a, b));

    IF a > b THEN
        DBMS_OUTPUT.PUT_LINE('a is greater than b');
    END IF;

    IF a < b THEN
        DBMS_OUTPUT.PUT_LINE('a is less than b');
    END IF;

    IF a != b THEN
        DBMS_OUTPUT.PUT_LINE('a is not equal to b');
    END IF;

    IF a >= b THEN
        DBMS_OUTPUT.PUT_LINE('a is greater than or equal to b');
    END IF;

    IF a <= b THEN
        DBMS_OUTPUT.PUT_LINE('a is less than or equal to b');
    END IF;
END;

