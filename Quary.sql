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



-- CREATE VIEW attendance_eligibility AS
-- SELECT stuID, courseID,sessionType, COUNT(A_status)/15 * 100 AS "80% Percentage" , IF((COUNT(A_status)/15 * 100)>=80,"Eligible","Not Eligible") As "Eligiblity"
-- FROM attendance
-- WHERE A_status = "Present"
-- GROUP BY stuID, courseID,sessionType;

-- student attendance eligibility
CREATE PROCEDURE StudentallsubjectEligibility (IN pstuID VARCHAR(20))
BEGIN
select * from attendance_eligibility where stuID = pstuID;
END;

-- call procedure
CALL StudentallsubjectEligibility('TG/1021/1020');
