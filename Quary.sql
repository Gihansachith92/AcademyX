-- -- Calculate Percentage of attenedance quary test input
--     SELECT (COUNT(Date)/15)*100 AS Percentage 
--     FROM attendance
--     WHERE stuID = "TG/2021/1011" AND courseID = "ICT1212";

-- -- Attendance Percentage Procedure
-- CREATE PROCEDURE Attendance_Percentage(IN StuID VARCHAR(20),IN courseID VARCHAR(20))
-- BEGIN
-- SELECT stuID,courseID,(COUNT(Date)/15)*100 AS Percentage 
-- FROM attendance
-- WHERE stuID = @stuID AND courseID = courseID;
-- END;//



-- Call Procedure

CALL Attendance_Percentage1 ('TG/2021/1014', 'ICT1253')//

-- Create View retrive all notice
CREATE VIEW notices AS
SELECT * FROM notice ORDER BY Date DESC;


-- attendance check procedure

CREATE PROCEDURE Subject_attendance(IN StuID VARCHAR(20),IN courseID VARCHAR(20),IN DepID VARCHAR(20))
BEIGN
select stuID,courseID,DepID,sessionDate,sessionType,A_status,MeidcalID from attendance
where stuID = @StuID AND courseID =@courseID AND DepID = @DepID;
END;//
