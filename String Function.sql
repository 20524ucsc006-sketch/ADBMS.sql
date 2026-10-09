CREATE TABLE student (
    sid NUMBER(10),
    sname VARCHAR(20),
    sclass VARCHAR(20),
    dep VARCHAR(20),
    address VARCHAR(20)
);

INSERT INTO student VALUES (1, 'Arun', 'BCA', 'Computer', 'Chennai');
INSERT INTO student VALUES (2, 'Priya', 'BSC', 'Science', 'Madurai');
INSERT INTO student VALUES (3, 'Kumar', 'BCA', 'Computer', 'Salem');

SELECT UPPER(sname) FROM student;

SELECT LOWER(sname) FROM student;

SELECT INITCAP(sname) FROM student;

SELECT sname, LENGTH(sname) FROM student;

SELECT CONCAT(sname, sclass) FROM student;

SELECT SUBSTR(sname, 1, 3) FROM student;

SELECT INSTR(sname, 'a') FROM student;

SELECT REPLACE(sname, 'a', 'A') FROM student;

SELECT TRIM('  SQL PROGRAM  ') FROM dual;

SELECT LPAD(sname, 10, '*') FROM student;

SELECT RPAD(sname, 10, '*') FROM student;


COMMIT;

