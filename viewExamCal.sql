--Exam quizes total and precentage midterm for english 
--CREATE VIEW ENGLISH_EXAM_

--SELECT QUIZ1,QUIZ2,QUIZ3,CONCAT((((QUIZ1+QUIZ2+QUIZ3)/300)*100) * 0.2) AS "20% QUIZES PRECENTAGE",Assesments,CONCAT(Assesments * 0.35) AS "35% Assesments",MidTheory,CONCAT(MidTheory * 0.45) AS "45% Assesments",CONCAT(((MidTheory * 0.45)+(Assesments * 0.35)+(((QUIZ1+QUIZ2+QUIZ3)/300)*100) * 0.2)) AS "##% ",StuID,courseID,DepID,IF(((MidTheory * 0.45)+(Assesments * 0.35)+(((QUIZ1+QUIZ2+QUIZ3)/300)*100) * 0.2) >= 50 ,"Eligibilty","NOT Eligibilty") AS "elibility" FROM exammarks
--where depID = "DpMUL" and courseID ="ENG1222";

--attendance details
CREATE TABLE attendance (
    stuID VARCHAR(20),
    courseID VARCHAR(20),
    DepID VARCHAR(20),
    sessionDate DATE,
    sessionType ENUM('Theory', 'Practical', 'Combined'),
    A_status ENUM('Present', 'Absent'),
    MeidcalID VARCHAR(20), 
    FOREIGN KEY (stuID) REFERENCES student(stuID),
    FOREIGN KEY (courseID) REFERENCES course(courseID),
    FOREIGN KEY (DepID) REFERENCES Department(DepID),
    FOREIGN KEY (MeidcalID) REFERENCES Medical(MeidcalID));



SELECT stuID, courseID,sessionType, COUNT(A_status)/15 * 100 AS "80% Percentage" , IF((COUNT(A_status)/15 * 100)>=80,"Eligible","Not Eligible") As "Eligiblity"
FROM attendance
WHERE A_status = "Present"
GROUP BY stuID, courseID,sessionType;

courseID = "ICT1242" AND DepID = "DpICT" AND A_status = 