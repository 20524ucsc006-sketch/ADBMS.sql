CREATE TABLE student1 (
    sid NUMBER(10),
    sname VARCHAR2(20)
);


INSERT INTO student1 VALUES (1, 'Arun');
INSERT INTO student1 VALUES (2, 'Bala');
INSERT INTO student1 VALUES (3, 'Dharshini');

CREATE TABLE student2 (
    sid NUMBER(10),
    sname VARCHAR2(20)
);


INSERT INTO student2 VALUES (2, 'Bala');
INSERT INTO student2 VALUES (3, 'Dharshini');
INSERT INTO student2 VALUES (4, 'Kumar');


SELECT sid, sname FROM student1
UNION
SELECT sid, sname FROM student2;


SELECT sid, sname FROM student1
UNION ALL
SELECT sid, sname FROM student2;


SELECT sid, sname FROM student1
INTERSECT
SELECT sid, sname FROM student2;

SELECT sid, sname FROM student1
MINUS
SELECT sid, sname FROM student2;
