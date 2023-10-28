--Exam quizes total and precentage midterm for english 
--CREATE VIEW ENGLISH_EXAM_

SELECT QUIZ1,QUIZ2,QUIZ3,CONCAT((((QUIZ1+QUIZ2+QUIZ3)/300)*100) * 0.2) AS "20% QUIZES PRECENTAGE",Assesments,CONCAT(Assesments * 0.35) AS "35% Assesments",MidTheory,CONCAT(MidTheory * 0.45) AS "45% Assesments",CONCAT(((MidTheory * 0.45)+(Assesments * 0.35)+(((QUIZ1+QUIZ2+QUIZ3)/300)*100) * 0.2)) AS "##% ",StuID,courseID,DepID,IF(((MidTheory * 0.45)+(Assesments * 0.35)+(((QUIZ1+QUIZ2+QUIZ3)/300)*100) * 0.2) >= 50 ,"Passed","Failed") AS "elibility" FROM exammarks
where depID = "DpMUL" and courseID ="ENG1222";

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

--english for monday

INSERT INTO attendance VALUES 
    ("TG/2021/1011","ENG1222","DpMUL","2024-01-01","Theory","Present",NULL),
    ("TG/2021/1011","ENG1222","DpMUL","2024-01-08","Theory","Present",NULL),
    ("TG/2021/1011","ENG1222","DpMUL","2024-01-15","Theory","Present",NULL),
    ("TG/2021/1011","ENG1222","DpMUL","2024-01-22","Theory","Present",NULL),
    ("TG/2021/1011","ENG1222","DpMUL","2024-01-29","Theory","Present",NULL),

    ("TG/2021/1011","ENG1222","DpMUL","2024-02-05","Theory","Present",NULL),
    ("TG/2021/1011","ENG1222","DpMUL","2024-02-12","Theory","Present",NULL),
    ("TG/2021/1011","ENG1222","DpMUL","2024-02-19","Theory","Present",NULL),
    ("TG/2021/1011","ENG1222","DpMUL","2024-03-26","Theory","Present",NULL),
    ("TG/2021/1011","ENG1222","DpMUL","2024-03-04","Theory","Present",NULL),

    ("TG/2021/1011","ENG1222","DpMUL","2024-03-11","Theory","Present",NULL),
    ("TG/2021/1011","ENG1222","DpMUL","2024-03-18","Theory","Present",NULL),
    ("TG/2021/1011","ENG1222","DpMUL","2024-03-25","Theory","Present",NULL),
    ("TG/2021/1011","ENG1222","DpMUL","2024-04-01","Theory","Present",NULL),
    ("TG/2021/1011","ENG1222","DpMUL","2024-04-08","Theory","Present",NULL),

 
    ("TG/2021/1020","ENG1222","DpMUL","2024-01-01","Theory","Present",NULL),
    ("TG/2021/1020","ENG1222","DpMUL","2024-01-08","Theory","Present",NULL),
    ("TG/2021/1020","ENG1222","DpMUL","2024-01-15","Theory","Present",NULL),
    ("TG/2021/1020","ENG1222","DpMUL","2024-01-22","Theory","Present",NULL),
    ("TG/2021/1020","ENG1222","DpMUL","2024-01-29","Theory","Present",NULL),

    ("TG/2021/1020","ENG1222","DpMUL","2024-02-05","Theory","Present",NULL),
    ("TG/2021/1020","ENG1222","DpMUL","2024-02-12","Theory","Present",NULL),
    ("TG/2021/1020","ENG1222","DpMUL","2024-02-19","Theory","Present",NULL),
    ("TG/2021/1020","ENG1222","DpMUL","2024-03-26","Theory","Present",NULL),
    ("TG/2021/1020","ENG1222","DpMUL","2024-03-04","Theory","Absent",NULL),

    ("TG/2021/1020","ENG1222","DpMUL","2024-03-11","Theory","Present",NULL),
    ("TG/2021/1020","ENG1222","DpMUL","2024-03-18","Theory","Present",NULL),
    ("TG/2021/1020","ENG1222","DpMUL","2024-03-25","Theory","Present",NULL),
    ("TG/2021/1020","ENG1222","DpMUL","2024-04-01","Theory","Present",NULL),
    ("TG/2021/1020","ENG1222","DpMUL","2024-04-08","Theory","Present",NULL),

   
    ("TG/2021/1014","ENG1222","DpMUL","2024-01-01","Theory","Present",NULL),
    ("TG/2021/1014","ENG1222","DpMUL","2024-01-08","Theory","Absent",NULL),
    ("TG/2021/1014","ENG1222","DpMUL","2024-01-15","Theory","Present",NULL),
    ("TG/2021/1014","ENG1222","DpMUL","2024-01-22","Theory","Present",NULL),
    ("TG/2021/1014","ENG1222","DpMUL","2024-01-29","Theory","Present",NULL),

    ("TG/2021/1014","ENG1222","DpMUL","2024-02-05","Theory","Present",NULL),
    ("TG/2021/1014","ENG1222","DpMUL","2024-02-12","Theory","Present",NULL),
    ("TG/2021/1014","ENG1222","DpMUL","2024-02-19","Theory","Present",NULL),
    ("TG/2021/1014","ENG1222","DpMUL","2024-03-26","Theory","Present",NULL),
    ("TG/2021/1014","ENG1222","DpMUL","2024-03-04","Theory","Present",NULL),

    ("TG/2021/1014","ENG1222","DpMUL","2024-03-11","Theory","Present",NULL),
    ("TG/2021/1014","ENG1222","DpMUL","2024-03-18","Theory","Present",NULL),
    ("TG/2021/1014","ENG1222","DpMUL","2024-03-25","Theory","Present",NULL),
    ("TG/2021/1014","ENG1222","DpMUL","2024-04-01","Theory","Present",NULL),
    ("TG/2021/1014","ENG1222","DpMUL","2024-04-08","Theory","Present",NULL),

 
    ("TG/2021/1024","ENG1222","DpMUL","2024-01-01","Theory","Present",NULL),
    ("TG/2021/1024","ENG1222","DpMUL","2024-01-08","Theory","Present",NULL),
    ("TG/2021/1024","ENG1222","DpMUL","2024-01-15","Theory","Present",NULL),
    ("TG/2021/1024","ENG1222","DpMUL","2024-01-22","Theory","Present",NULL),
    ("TG/2021/1024","ENG1222","DpMUL","2024-01-29","Theory","Present",NULL),

    ("TG/2021/1024","ENG1222","DpMUL","2024-02-05","Theory","Present",NULL),
    ("TG/2021/1024","ENG1222","DpMUL","2024-02-12","Theory","Present",NULL),
    ("TG/2021/1024","ENG1222","DpMUL","2024-02-19","Theory","Absent",NULL),
    ("TG/2021/1024","ENG1222","DpMUL","2024-03-26","Theory","Present",NULL),
    ("TG/2021/1024","ENG1222","DpMUL","2024-03-04","Theory","Present",NULL),

    ("TG/2021/1024","ENG1222","DpMUL","2024-03-11","Theory","Present",NULL),
    ("TG/2021/1024","ENG1222","DpMUL","2024-03-18","Theory","Present",NULL),
    ("TG/2021/1024","ENG1222","DpMUL","2024-03-25","Theory","Present",NULL),
    ("TG/2021/1024","ENG1222","DpMUL","2024-04-01","Theory","Present",NULL),
    ("TG/2021/1024","ENG1222","DpMUL","2024-04-08","Theory","Present",NULL),

 
    ("TG/2021/1027","ENG1222","DpMUL","2024-01-01","Theory","Present",NULL),
    ("TG/2021/1027","ENG1222","DpMUL","2024-01-08","Theory","Present",NULL),
    ("TG/2021/1027","ENG1222","DpMUL","2024-01-15","Theory","Present",NULL),
    ("TG/2021/1027","ENG1222","DpMUL","2024-01-22","Theory","Present",NULL),
    ("TG/2021/1027","ENG1222","DpMUL","2024-01-29","Theory","Present",NULL),

    ("TG/2021/1027","ENG1222","DpMUL","2024-02-05","Theory","Present",NULL),
    ("TG/2021/1027","ENG1222","DpMUL","2024-02-12","Theory","Present",NULL),
    ("TG/2021/1027","ENG1222","DpMUL","2024-02-19","Theory","Present",NULL),
    ("TG/2021/1027","ENG1222","DpMUL","2024-03-26","Theory","Present",NULL),
    ("TG/2021/1027","ENG1222","DpMUL","2024-03-04","Theory","Present",NULL),

    ("TG/2021/1027","ENG1222","DpMUL","2024-03-11","Theory","Present",NULL),
    ("TG/2021/1027","ENG1222","DpMUL","2024-03-18","Theory","Present",NULL),
    ("TG/2021/1027","ENG1222","DpMUL","2024-03-25","Theory","Present",NULL),
    ("TG/2021/1027","ENG1222","DpMUL","2024-04-01","Theory","Present",NULL),
    ("TG/2021/1027","ENG1222","DpMUL","2024-04-08","Theory","Present",NULL),

    
   
    ("TG/2021/1031","ENG1222","DpMUL","2024-01-01","Theory","Present",NULL),
    ("TG/2021/1031","ENG1222","DpMUL","2024-01-08","Theory","Present",NULL),
    ("TG/2021/1031","ENG1222","DpMUL","2024-01-15","Theory","Present",NULL),
    ("TG/2021/1031","ENG1222","DpMUL","2024-01-22","Theory","Present",NULL),
    ("TG/2021/1031","ENG1222","DpMUL","2024-01-29","Theory","Present",NULL),

    ("TG/2021/1031","ENG1222","DpMUL","2024-02-05","Theory","Present",NULL),
    ("TG/2021/1031","ENG1222","DpMUL","2024-02-12","Theory","Present",NULL),
    ("TG/2021/1031","ENG1222","DpMUL","2024-02-19","Theory","Present",NULL),
    ("TG/2021/1031","ENG1222","DpMUL","2024-03-26","Theory","Present",NULL),
    ("TG/2021/1031","ENG1222","DpMUL","2024-03-04","Theory","Present",NULL),

    ("TG/2021/1031","ENG1222","DpMUL","2024-03-11","Theory","Present",NULL),
    ("TG/2021/1031","ENG1222","DpMUL","2024-03-18","Theory","Present",NULL),
    ("TG/2021/1031","ENG1222","DpMUL","2024-03-25","Theory","Absent",NULL),
    ("TG/2021/1031","ENG1222","DpMUL","2024-04-01","Theory","Present",NULL),
    ("TG/2021/1031","ENG1222","DpMUL","2024-04-08","Theory","Present",NULL),

 
    ("TG/2021/1036","ENG1222","DpMUL","2024-01-01","Theory","Present",NULL),
    ("TG/2021/1036","ENG1222","DpMUL","2024-01-08","Theory","Present",NULL),
    ("TG/2021/1036","ENG1222","DpMUL","2024-01-15","Theory","Present",NULL),
    ("TG/2021/1036","ENG1222","DpMUL","2024-01-22","Theory","Present",NULL),
    ("TG/2021/1036","ENG1222","DpMUL","2024-01-29","Theory","Present",NULL),

    ("TG/2021/1036","ENG1222","DpMUL","2024-02-05","Theory","Present",NULL),
    ("TG/2021/1036","ENG1222","DpMUL","2024-02-12","Theory","Present",NULL),
    ("TG/2021/1036","ENG1222","DpMUL","2024-02-19","Theory","Present",NULL),
    ("TG/2021/1036","ENG1222","DpMUL","2024-03-26","Theory","Present",NULL),
    ("TG/2021/1036","ENG1222","DpMUL","2024-03-04","Theory","Present",NULL),

    ("TG/2021/1036","ENG1222","DpMUL","2024-03-11","Theory","Present",NULL),
    ("TG/2021/1036","ENG1222","DpMUL","2024-03-18","Theory","Present",NULL),
    ("TG/2021/1036","ENG1222","DpMUL","2024-03-25","Theory","Absent",NULL),
    ("TG/2021/1036","ENG1222","DpMUL","2024-04-01","Theory","Present",NULL),
    ("TG/2021/1036","ENG1222","DpMUL","2024-04-08","Theory","Present",NULL),


    ("TG/2021/1042","ENG1222","DpMUL","2024-01-01","Theory","Present",NULL),
    ("TG/2021/1042","ENG1222","DpMUL","2024-01-08","Theory","Present",NULL),
    ("TG/2021/1042","ENG1222","DpMUL","2024-01-15","Theory","Present",NULL),
    ("TG/2021/1042","ENG1222","DpMUL","2024-01-22","Theory","Present",NULL),
    ("TG/2021/1042","ENG1222","DpMUL","2024-01-29","Theory","Present",NULL),

    ("TG/2021/1042","ENG1222","DpMUL","2024-02-05","Theory","Present",NULL),
    ("TG/2021/1042","ENG1222","DpMUL","2024-02-12","Theory","Present",NULL),
    ("TG/2021/1042","ENG1222","DpMUL","2024-02-19","Theory","Absent",NULL),
    ("TG/2021/1042","ENG1222","DpMUL","2024-03-26","Theory","Present",NULL),
    ("TG/2021/1042","ENG1222","DpMUL","2024-03-04","Theory","Present",NULL),

    ("TG/2021/1042","ENG1222","DpMUL","2024-03-11","Theory","Present",NULL),
    ("TG/2021/1042","ENG1222","DpMUL","2024-03-18","Theory","Present",NULL),
    ("TG/2021/1042","ENG1222","DpMUL","2024-03-25","Theory","Present",NULL),
    ("TG/2021/1042","ENG1222","DpMUL","2024-04-01","Theory","Present",NULL),
    ("TG/2021/1042","ENG1222","DpMUL","2024-04-08","Theory","Present",NULL),

  
    ("TG/2021/1045","ENG1222","DpMUL","2024-01-01","Theory","Present",NULL),
    ("TG/2021/1045","ENG1222","DpMUL","2024-01-08","Theory","Present",NULL),
    ("TG/2021/1045","ENG1222","DpMUL","2024-01-15","Theory","Present",NULL),
    ("TG/2021/1045","ENG1222","DpMUL","2024-01-22","Theory","Present",NULL),
    ("TG/2021/1045","ENG1222","DpMUL","2024-01-29","Theory","Present",NULL),

    ("TG/2021/1045","ENG1222","DpMUL","2024-02-05","Theory","Present",NULL),
    ("TG/2021/1045","ENG1222","DpMUL","2024-02-12","Theory","Present",NULL),
    ("TG/2021/1045","ENG1222","DpMUL","2024-02-19","Theory","Present",NULL),
    ("TG/2021/1045","ENG1222","DpMUL","2024-03-26","Theory","Present",NULL),
    ("TG/2021/1045","ENG1222","DpMUL","2024-03-04","Theory","Present",NULL),

    ("TG/2021/1045","ENG1222","DpMUL","2024-03-11","Theory","Present",NULL),
    ("TG/2021/1045","ENG1222","DpMUL","2024-03-18","Theory","Present",NULL),
    ("TG/2021/1045","ENG1222","DpMUL","2024-03-25","Theory","Present",NULL),
    ("TG/2021/1045","ENG1222","DpMUL","2024-04-01","Theory","Present",NULL),
    ("TG/2021/1045","ENG1222","DpMUL","2024-04-08","Theory","Present",NULL),

    ("TG/2021/1050","ENG1222","DpMUL","2024-01-01","Theory","Present",NULL),
    ("TG/2021/1050","ENG1222","DpMUL","2024-01-08","Theory","Present",NULL),
    ("TG/2021/1050","ENG1222","DpMUL","2024-01-15","Theory","Present",NULL),
    ("TG/2021/1050","ENG1222","DpMUL","2024-01-22","Theory","Present",NULL),
    ("TG/2021/1050","ENG1222","DpMUL","2024-01-29","Theory","Present",NULL),

    ("TG/2021/1050","ENG1222","DpMUL","2024-02-05","Theory","Present",NULL),
    ("TG/2021/1050","ENG1222","DpMUL","2024-02-12","Theory","Present",NULL),
    ("TG/2021/1050","ENG1222","DpMUL","2024-02-19","Theory","Present",NULL),
    ("TG/2021/1050","ENG1222","DpMUL","2024-03-26","Theory","Present",NULL),
    ("TG/2021/1050","ENG1222","DpMUL","2024-03-04","Theory","Present",NULL),

    ("TG/2021/1050","ENG1222","DpMUL","2024-03-11","Theory","Present",NULL),
    ("TG/2021/1050","ENG1222","DpMUL","2024-03-18","Theory","Present",NULL),
    ("TG/2021/1050","ENG1222","DpMUL","2024-03-25","Theory","Present",NULL),
    ("TG/2021/1050","ENG1222","DpMUL","2024-04-01","Theory","Present",NULL),
    ("TG/2021/1050","ENG1222","DpMUL","2024-04-08","Theory","Present",NULL);