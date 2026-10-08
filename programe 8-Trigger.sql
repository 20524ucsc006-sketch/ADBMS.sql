CREATE TABLE student (
    sid NUMBER(10),
    sname VARCHAR2(20),
    sclass VARCHAR2(20),
    dep VARCHAR2(20),
    address VARCHAR2(20)
);


CREATE OR REPLACE TRIGGER student_trigger
BEFORE INSERT ON student
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('New student record is being inserted');
END;


INSERT INTO student
VALUES (1, 'Arun', '10th', 'CSE', 'Chennai');

COMMIT;


SELECT * FROM student;
