DECLARE
    num NUMBER := 121;
    temp NUMBER;
    digit NUMBER;
    rev NUMBER := 0;
BEGIN
    temp := num;

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        rev := rev * 10 + digit;
        temp := TRUNC(temp / 10);
    END LOOP;

    IF num = rev THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is a Palindrome');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is not a Palindrome');
    END IF;
END;

