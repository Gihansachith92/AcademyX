-- Create View retrive all notice
CREATE VIEW notices AS
SELECT * FROM notice ORDER BY Date DESC;


-- Subject  attendance check procedure
CREATE PROCEDURE SubjectAttendance(
    IN p_stuID VARCHAR(20),
    IN p_courseID VARCHAR(20)
)
BEGIN
    SELECT stuID, courseID, DepID, sessionDate, sessionType, A_status, MeidcalID
    FROM attendance
    WHERE stuID = p_stuID AND courseID = p_courseID;
END;//

-- call PROCEDURE
CALL SubjectAttendance('TG/2021/1011', 'ENG1222');




-- Attendance Percentage PROCEDURE

CREATE PROCEDURE AttendancePercentage(
    IN p_stuID VARCHAR(20),
    IN p_courseID VARCHAR(20)
)
BEGIN
    SELECT stuID, courseID, A_status, (COUNT(A_status) / 15 * 100) AS Percentage
    FROM attendance
    WHERE stuID = p_stuID AND courseID = p_courseID
    GROUP BY A_status;
END;//

-- call PROCEDURE
CALL CalculateAttendancePercentage('TG/2021/1011', 'ENG1222');
