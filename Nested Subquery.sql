CREATE TABLE student (
    sid NUMBER(10) PRIMARY KEY,
    sname VARCHAR2(20),
    marks NUMBER(5),
    dep VARCHAR2(20)
);

INSERT INTO student VALUES (1, 'Arun', 85, 'Computer');
INSERT INTO student VALUES (2, 'Priya', 90, 'Science');
INSERT INTO student VALUES (3, 'Kumar', 75, 'Computer');
INSERT INTO student VALUES (4, 'Ravi', 95, 'Science');
INSERT INTO student VALUES (5, 'Divya', 80, 'Computer');

SELECT *
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);

SELECT *
FROM student
WHERE marks = (SELECT MAX(marks) FROM student);

SELECT *
FROM student
WHERE marks < (SELECT AVG(marks) FROM student);

SELECT *
FROM student
WHERE dep = (
    SELECT dep
    FROM student
    WHERE sname = 'Arun'
);

COMMIT;

