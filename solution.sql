DROP PROCEDURE IF EXISTS InsertStudent;

DELIMITER //

CREATE PROCEDURE InsertStudent(
    IN p_StudentID INT,
    IN p_StudentName VARCHAR(100),
    IN p_CourseID INT
)
BEGIN
    INSERT INTO Student (StudentID, StudentName, CourseID)
    VALUES (p_StudentID, p_StudentName, p_CourseID);
END //

DELIMITER ;
