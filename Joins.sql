CREATE TABLE department (
    dep_id NUMBER(10) PRIMARY KEY,
    dep_name VARCHAR2(20)
);

CREATE TABLE student (
    sid NUMBER(10) PRIMARY KEY,
    sname VARCHAR2(20),
    dep_id NUMBER(10),
    FOREIGN KEY (dep_id) REFERENCES department(dep_id)
);

INSERT INTO department VALUES (1, 'Computer');
INSERT INTO department VALUES (2, 'Science');
INSERT INTO department VALUES (3, 'Maths');

INSERT INTO student VALUES (101, 'Arun', 1);
INSERT INTO student VALUES (102, 'Priya', 2);
INSERT INTO student VALUES (103, 'Kumar', 1);
INSERT INTO student VALUES (104, 'Ravi', 3);

SELECT student.sid, student.sname, department.dep_name
FROM student
INNER JOIN department
ON student.dep_id = department.dep_id;

SELECT student.sid, student.sname, department.dep_name
FROM student
LEFT JOIN department
ON student.dep_id = department.dep_id;

SELECT student.sid, student.sname, department.dep_name
FROM student
RIGHT JOIN department
ON student.dep_id = department.dep_id;

SELECT student.sid, student.sname, department.dep_name
FROM student
FULL OUTER JOIN department
ON student.dep_id = department.dep_id;

COMMIT;

