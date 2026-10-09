CREATE TABLE student (
    sid NUMBER(10),
    sname VARCHAR2(20),
    marks NUMBER(5,2),
    dep VARCHAR2(20)
);

INSERT INTO student VALUES (1, 'Arun', 85, 'Computer');
INSERT INTO student VALUES (2, 'Priya', 90, 'Science');
INSERT INTO student VALUES (3, 'Kumar', 75, 'Computer');
INSERT INTO student VALUES (4, 'Ravi', 95, 'Science');
INSERT INTO student VALUES (5, 'Divya', 80, 'Computer');

SELECT COUNT(*) FROM student;

SELECT SUM(marks) FROM student;

SELECT AVG(marks) FROM student;

SELECT MAX(marks) FROM student;

SELECT MIN(marks) FROM student;

SELECT dep, COUNT(*)
FROM student
GROUP BY dep;

SELECT dep, SUM(marks)
FROM student
GROUP BY dep;

SELECT dep, AVG(marks)
FROM student
GROUP BY dep;

COMMIT;
