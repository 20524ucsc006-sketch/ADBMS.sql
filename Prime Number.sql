DECLARE
    num NUMBER := 7;
    i NUMBER;
    flag NUMBER := 0;
BEGIN
    IF num <= 1 THEN
        flag := 1;
    ELSE
        FOR i IN 2..TRUNC(SQRT(num)) LOOP
            IF MOD(num, i) = 0 THEN
                flag := 1;
                EXIT;
            END IF;
        END LOOP;
    END IF;

    IF flag = 0 THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is a Prime Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is not a Prime Number');
    END IF;
END;

