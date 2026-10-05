-- Question 17:
-- Write a PL/SQL procedure to insert a student record into the Student table.

SET SERVEROUTPUT ON;

CREATE TABLE Student (
    StudentID NUMBER(5) PRIMARY KEY,
    StudentName VARCHAR2(20) NOT NULL,
    DOB DATE,
    Gender VARCHAR2(10),
    DepartmentID NUMBER(5)
);

CREATE OR REPLACE PROCEDURE InsertStudent (
    p_StudentID     IN NUMBER,
    p_StudentName   IN VARCHAR2,
    p_DOB           IN DATE,
    p_Gender        IN VARCHAR2,
    p_DepartmentID  IN NUMBER
)
IS
BEGIN
    INSERT INTO Student
    (
        StudentID,
        StudentName,
        DOB,
        Gender,
        DepartmentID
    )
    VALUES
    (
        p_StudentID,
        p_StudentName,
        p_DOB,
        p_Gender,
        p_DepartmentID
    );

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully.');
END;
/

BEGIN
    InsertStudent(
        1001,
        'Arun',
        DATE '2005-06-15',
        'Male',
        101
    );
END;
/

COMMIT;

SELECT * FROM Student;
