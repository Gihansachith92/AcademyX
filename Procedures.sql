-- Create View retrive all notice
CREATE VIEW notices AS
SELECT * FROM notice ORDER BY Date DESC;

----------------------------------------------------------------------------------

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

--------------------------------------------------------------------------------

-- Attendance Percentage PROCEDURE


CREATE PROCEDURE CalculateAttendancePercentage(
    IN p_stuID VARCHAR(20),
    IN p_courseID VARCHAR(20),
    IN p_DepID VARCHAR(20)
)
BEGIN
    SELECT
        stuID,
        courseID,
        A_status,
        (COUNT(A_status) / 15 * 100) AS Percentage
    FROM
        attendance
    WHERE
        stuID = p_stuID
        AND courseID = p_courseID
        AND DepID = p_DepID
    GROUP BY stuID, courseID, A_status;
END;

-- call PROCEDURE
CALL CalculateAttendancePercentage('TG/2021/1011', 'ENG1222','DpICT');

--------------------------------------------------------------------------------


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
CALL StudentallsubjectEligibility('TG/2021/1020');

--------------------------------------------------------------------------------

-- check each subject quize marks

CREATE PROCEDURE CheckSubjectQuizemarks (IN pcourseID VARCHAR(20))
BEGIN
select * from StudentQuiz_Marks where courseID = pcourseID;
END;

-- call procedure
CALL CheckSubjectQuizemarks('ICT1222');

--------------------------------------------------------------------------------

-- check each student all quize marks using view procedure 
CREATE PROCEDURE CheckStudentQuizemarks (IN pstuID VARCHAR(20))
BEGIN
select * from StudentQuiz_Marks where stuID = pstuID;
END;

-- call procedure
CALL CheckStudentQuizemarks('TG/2021/1020');

--------------------------------------------------------------------------------

-- one student mid exam marks 
CREATE PROCEDURE studentMid_Mark(IN pstuID VARCHAR(20) )
BEGIN
select * from studentmidterm_marks where stuID= pstuID;
END;

-- call procedure
CALL studentMid_Mark('TG/2021/1020');

--------------------------------------------------------------------------------
-- subjectvise mid marks
CREATE PROCEDURE subjectMid_Mark(IN pcourseID VARCHAR(20) )
BEGIN
select * from studentmidterm_marks where courseID= pcourseID;
END;

-- call procedure
CALL subjectMid_Mark('ICT1222');

--------------------------------------------------------------------------------
-- subject CA marks
CREATE PROCEDURE SubjectCAmarks(IN pcourseID VARCHAR(20))
BEGIN
select * from StudentCA_marks where courseID=pcourseID;
END;

CALL SubjectCAmarks('ENG1222');

--------------------------------------------------------------------------------
-- Student CA marks
CREATE PROCEDURE StudentCAmarks(IN pstuID VARCHAR(20))
BEGIN
select * from StudentCA_marks where stuID=pstuID;
END;

CALL StudentCAmarks('TG/2021/1014);










