--Exam quizes total and precentage midterm for english 
--CREATE VIEW ENGLISH_EXAM_

SELECT QUIZ1,QUIZ2,QUIZ3,CONCAT((((QUIZ1+QUIZ2+QUIZ3)/300)*100) * 0.2) AS "20% QUIZES PRECENTAGE",Assesments,CONCAT(Assesments * 0.35) AS "35% Assesments",MidTheory,CONCAT(MidTheory * 0.45) AS "45% Assesments",CONCAT(((MidTheory * 0.45)+(Assesments * 0.35)+(((QUIZ1+QUIZ2+QUIZ3)/300)*100) * 0.2)) AS "##% ",StuID,courseID,DepID,IF(((MidTheory * 0.45)+(Assesments * 0.35)+(((QUIZ1+QUIZ2+QUIZ3)/300)*100) * 0.2) >= 50 ,"Passed","Failed") AS "elibility" FROM exammarks
where depID = "DpMUL" and courseID ="ENG1222";

