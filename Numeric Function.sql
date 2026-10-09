CREATE TABLE student (
    sid NUMBER(10),
    sname VARCHAR2(20),
    marks NUMBER(5,2)
);

INSERT INTO student VALUES (1, 'Arun', 85.75);
INSERT INTO student VALUES (2, 'Priya', 90.45);
INSERT INTO student VALUES (3, 'Kumar', 76.35);
INSERT INTO student VALUES (4, 'Ravi', 95.68);
INSERT INTO student VALUES (5, 'Divya', 82.25);

SELECT ABS(-25) FROM dual;

SELECT CEIL(25.3) FROM dual;

SELECT FLOOR(25.8) FROM dual;

SELECT ROUND(25.678, 2) FROM dual;

SELECT TRUNC(25.678, 2) FROM dual;

SELECT MOD(10, 3) FROM dual;

SELECT POWER(2, 3) FROM dual;

SELECT SQRT(25) FROM dual;

SELECT SIGN(-15) FROM dual;

SELECT sname, ROUND(marks) FROM student;

SELECT sname, ABS(marks) FROM student;

SELECT MAX(marks) FROM student;

SELECT MIN(marks) FROM student;

SELECT AVG(marks) FROM student;

COMMIT;

