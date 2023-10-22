-- Create Lecturer Table

-- CREATE TABLE
--     Lecturer(
--         LecturerId VARCHAR (10),
--         LecName VARCHAR (50),
--         NIC INT (15),
--         DepID VARCHAR (10),
--         PRIMARY KEY(LecturerID)
--     );

-- Create ExamMarks Table

-- CREATE TABLE ExamMarks(
--         Quiz1 decimal(3,2),
--         Quiz2 decimal(3,2),
--         Quiz3 decimal(3,2),
--         MidPractical decimal(3,2),
--         MidTheory decimal(3,2),
--         EndPractical decimal(3,2),
--         EndTheory decimal(3,2),
--         Assesments decimal(3,2),
--         stuID VARCHAR(10),
--         courseID VARCHAR(10),
--         DepID VARCHAR(10),
--         FOREIGN KEY (stuID) REFERENCES Student(stuID),
--         FOREIGN KEY (courseID) REFERENCES Course(courseID),
--         FOREIGN KEY (DepID) REFERENCES Department(DepID)
--          );

-- Craete Medical TABLE

CREATE TABLE
    Medical(
        MeidcalID VARCHAR(20),
        Submitdate DATE,
        Description VARCHAR(100),
        stuID VARCHAR(20),
        PRIMARY KEY(MeidcalID)
    );

-- Create coursemedical

CREATE TABLE
    coursemedical(
        MeidcalID VARCHAR(20),
        courseID VARCHAR(20),
        FOREIGN KEY(MeidcalID) REFERENCES Medical(MeidcalID),
        FOREIGN KEY(courseID) REFERENCES Course(courseID)
    );


-- Create attendance table

CREATE TABLE
    Attendance(
        stuID VARCHAR(20),
        courseID VARCHAR(20),
        Date DATE,
        FOREIGN KEY(stuID) REFERENCES Student(stuID),
        FOREIGN KEY(courseID) REFERENCES Student(courseID),
    );

INSERT INTO student() VALUES
( 80 , 70 , 60 , 70 , 60 , 55 , 70 , 80 , "TG/2021/1011" , "ICT1253" , "DpICT"),
( 80 , 40 , 25 , 10 , 60 , 65 , 23 , 74 , "TG/2021/1020" , "ICT1253" , "DpICT"),
( 40 , 80 , 30 , 10 , 20 , 45 , 46 , 23 , "TG/2021/1014" , "ICT1253" , "DpICT"),
( 50 , 60 , 60 , 10 , 90 , 65 , 57 , 12 , "TG/2021/1024" , "ICT1253" , "DpICT"),
( 75 , 10 , 45 , 10 , 00 , 15 , 86 , 85 , "TG/2021/1027" , "ICT1253" , "DpICT"),
( 80 , 30 , 35 , 10 , 30 , 96 , 96 , 69 , "TG/2021/1031" , "ICT1253" , "DpICT"),
( 70 , 60 , 25 , 10 , 23 , 75 , 44 , 35 , "TG/2021/1036" , "ICT1253" , "DpICT"),
( 20 , 30 , 25 , 10 , 70 , 25 , 43 , 97 , "TG/2021/1042" , "ICT1253" , "DpICT"),
( 40 , 80 , 90 , 10 , 68 , 35 , 23 , 23 , "TG/2021/1045" , "ICT1253" , "DpICT"),
( 20 , 60 , 70 , 10 , 68 , 25 , 74 , 74 , "TG/2021/1050" , "ICT1253" , "DpICT"),
( 80 , 30 , 50 , 10 , 67 , 15 , 86 , 35 , "TG/2020/980" , "ICT1253" , "DpICT"),
( 70 , 70 , 10 , 10 , 45 , 24 , 75 , 35 , "TG/2020/972" , "ICT1253" , "DpICT"),
( 10 , 80 , 25 , 10 , 78 , 35 , 34 , 24 , "TG/2020/945" , "ICT1253" , "DpICT"),
( 30 , 90 , 15 , 10 , 80 , 95 , 85 , 23 , "TG/2019/866" , "ICT1253" , "DpICT"),
( 60 , 70 , 20 , 10 , 45 , 85 , 12 , 12 , "TG/2019/854" , "ICT1253" , "DpICT"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/678" , "ICT1253" , "DpICT"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/645" , "ICT1253" , "DpICT"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/415" , "ICT1253" , "DpICT");



