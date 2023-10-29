
-- Calculate Percentage of attenedance quary test input
    SELECT (COUNT(Date)/15)*100 AS Percentage 
    FROM attendance
    WHERE stuID = "TG/2021/1011" AND courseID = "ICT1253";

-- Attendance Percentage Procedure
CREATE PROCEDURE Attendance_Percentage(IN StuID VARCHAR(20),IN courseID VARCHAR(20))
BEGIN
SELECT stuID,courseID,(COUNT(Date)/15)*100 AS Percentage 
FROM attendance
WHERE stuID = @stuID AND courseID = courseID;
END;//


-- Call Procedure
CALL Attendance_Percentage1 ('TG/2021/1014', 'ICT1253')//

-- Create View retrive all notice
CREATE VIEW notices AS
SELECT * FROM notice ORDER BY Date DESC;


SELECT StuID,courseID,(COUNT(Date)/15)*100 AS "80%Percentage" , IF((COUNT(Date)/15 * 100)>=80,"Eligible","Not Eligible") As "Eligiblity"
FROM Attendance ;
