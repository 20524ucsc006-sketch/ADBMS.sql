CREATE TABLE student (
    sid NUMBER(10) PRIMARY KEY,
    sname VARCHAR2(20) NOT NULL,
    email VARCHAR2(50) UNIQUE,
    age NUMBER(3) CHECK (age >= 18),
    dep VARCHAR2(20) DEFAULT 'Computer',
    address VARCHAR2(20)
);

INSERT INTO student
VALUES (1, 'Arun', 'arun@gmail.com', 20, 'Computer', 'Chennai');

INSERT INTO student
VALUES (2, 'Priya', 'priya@gmail.com', 21, 'Science', 'Madurai');

INSERT INTO student
VALUES (3, 'Kumar', 'kumar@gmail.com', 22, 'Computer', 'Salem');

SELECT * FROM student;

CREATE TABLE department (
    dep_id NUMBER(10) PRIMARY KEY,
    dep_name VARCHAR2(20) NOT NULL
);

CREATE TABLE student_details (
    sid NUMBER(10) PRIMARY KEY,
    sname VARCHAR2(20) NOT NULL,
    dep_id NUMBER(10),
    CONSTRAINT fk_department
    FOREIGN KEY (dep_id)
    REFERENCES department(dep_id)
);

COMMIT;

