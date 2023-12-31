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
        stuID VARCHAR(20),
        courseID VARCHAR(20),
        DepID VARCHAR(20),
        Submitdate DATE,
        Description VARCHAR(100),
        FOREIGN KEY(courseID) REFERENCES Course(courseID),
        FOREIGN KEY(stuID) REFERENCES Student(stuID),
        FOREIGN KEY(DepID) REFERENCES Department(DepID),
        PRIMARY KEY(MeidcalID));



 
-- Medical data
INSERT INTO MEDICAL VALUES
("MED001","TG/2021/1014","ICT1233","DpICT","2023-07-20","Medical certificate for flu"),
("MED002","TG/2021/1036","ICT1233","DpICT","2023-05-21","Sick leave request"),
("MED003","TG/2021/1011","ICT1212","DpICT","2023-05-11","Doctor s note for a medical appointment"),
("MED004","TG/2021/1020","ICT1212","DpICT","2023-03-29","Medical leave due to injury");


-- Create coursemedical

CREATE TABLE
    coursemedical(
        MeidcalID VARCHAR(20),
        courseID VARCHAR(20),
        stuID VARCHAR(20),
        FOREIGN KEY(MeidcalID) REFERENCES Medical(MeidcalID),
        FOREIGN KEY(courseID) REFERENCES Course(courseID),
        FOREIGN KEY(stuID) REFERENCES Student(stuID);
    );

INSERT INTO coursemedical VALUES
    ('MED001','ICT1212','TG/2021/1024'),
    ('MED002','ICT1212','TG/2021/1014'),
    ('MED003','ICT1253','TG/2021/1011'),
    ('MED004','ICT1253','TG/2021/1014'),
    ('MED005','ICT1242','TG/2021/1024');

-- Create attendance table

CREATE TABLE
    Attendance(
        stuID VARCHAR(20),
        courseID VARCHAR(20),
        Date DATE,
        FOREIGN KEY(stuID) REFERENCES Student(stuID),
        FOREIGN KEY(courseID) REFERENCES Student(courseID),
    );

INSERT INTO ExamMarks() VALUES
( 80 , 70 , 60 , 70 , 60 , 55 , 70 , 80 , "TG/2021/1011" , "ICT1253" , "DpICT"),
( 80 , 40 , 25 , 50 , 60 , 65 , 23 , 74 , "TG/2021/1020" , "ICT1253" , "DpICT"),
( 40 , 80 , 30 , 34 , 20 , 45 , 46 , 23 , "TG/2021/1014" , "ICT1253" , "DpICT"),
( 50 , 60 , 60 , 34 , 90 , 65 , 57 , 12 , "TG/2021/1024" , "ICT1253" , "DpICT"),
( 75 , 10 , 45 , 43 , 00 , 15 , 86 , 85 , "TG/2021/1027" , "ICT1253" , "DpICT"),
( 80 , 30 , 35 , 65 , 30 , 96 , 96 , 69 , "TG/2021/1031" , "ICT1253" , "DpICT"),
( 70 , 60 , 25 , 34 , 23 , 75 , 44 , 35 , "TG/2021/1036" , "ICT1253" , "DpICT"),
( 20 , 30 , 25 , 75 , 70 , 25 , 43 , 97 , "TG/2021/1042" , "ICT1253" , "DpICT"),
( 40 , 80 , 90 , 45 , 68 , 35 , 23 , 23 , "TG/2021/1045" , "ICT1253" , "DpICT"),
( 20 , 60 , 70 , 25 , 68 , 25 , 74 , 74 , "TG/2021/1050" , "ICT1253" , "DpICT"),
( 80 , 30 , 50 , 74 , 67 , 15 , 86 , 35 , "TG/2020/980" , "ICT1253" , "DpICT"),
( 70 , 70 , 10 , 75 , 45 , 24 , 75 , 35 , "TG/2020/972" , "ICT1253" , "DpICT"),
( 10 , 80 , 25 , 45 , 78 , 35 , 34 , 24 , "TG/2020/945" , "ICT1253" , "DpICT"),
( 30 , 90 , 15 , 85 , 80 , 95 , 85 , 23 , "TG/2019/866" , "ICT1253" , "DpICT"),
( 60 , 70 , 20 , 35 , 45 , 85 , 12 , 12 , "TG/2019/854" , "ICT1253" , "DpICT"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/678" , "ICT1253" , "DpICT"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/645" , "ICT1253" , "DpICT"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/415" , "ICT1253" , "DpICT");

INSERT INTO ExamMarks() VALUES
( 45 , 70 , 60 , 0 , 63 , 0 , 5 , 20 , "TG/2021/1011" , "ICT1242" , "DpICT"),
( 30 , 40 , 65 , 0 , 20 , 0 , 4 , 75 , "TG/2021/1020" , "ICT1242" , "DpICT"),
( 60 , 80 , 30 , 0 , 25 , 0 , 65 , 53 , "TG/2021/1014" , "ICT1242" , "DpICT"),
( 60 , 60 , 60 , 0 , 76 , 0 , 34 , 13 , "TG/2021/1024" , "ICT1242" , "DpICT"),
( 08 , 10 , 25 , 0 , 45 , 0 , 34 , 83 , "TG/2021/1027" , "ICT1242" , "DpICT"),
( 80 , 30 , 75 , 0 , 34 , 0 , 56 , 76 , "TG/2021/1031" , "ICT1242" , "DpICT"),
( 65 , 60 , 25 , 0 , 00 , 0 , 67 , 23 , "TG/2021/1036" , "ICT1242" , "DpICT"),
( 25 , 30 , 75 , 0 , 35 , 0 , 78 , 23 , "TG/2021/1042" , "ICT1242" , "DpICT"),
( 45 , 80 , 40 , 0 , 65 , 0 , 23 , 76 , "TG/2021/1045" , "ICT1242" , "DpICT"),
( 20 , 60 , 20 , 0 , 15 , 0 , 86 , 57 , "TG/2021/1050" , "ICT1242" , "DpICT"),
( 80 , 30 , 30 , 0 , 15 , 0 , 12 , 34 , "TG/2020/980" , "ICT1242" , "DpICT"),
( 75 , 70 , 60 , 0 , 65 , 0 , 75 , 23 , "TG/2020/972" , "ICT1242" , "DpICT"),
( 25 , 80 , 45 , 0 , 75 , 0 , 76 , 27 , "TG/2020/945" , "ICT1242" , "DpICT"),
( 24 , 90 , 35 , 0 , 21, 0 , 12 , 23 , "TG/2019/866" , "ICT1242" , "DpICT"),
( 60 , 70 , 70 , 0 , 5 , 0 , 54 , 87 , "TG/2019/854" , "ICT1242" , "DpICT"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/678" , "ICT1242" , "DpICT"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/645" , "ICT1242" , "DpICT"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/415" , "ICT1242" , "DpICT");


CREATE TABLE notice(
    noticeID VARCHAR(20),
    title VARCHAR(20),
    Description VARCHAR(100),
    Date date,
    LecturerId VARCHAR (20),
    FOREIGN key(LecturerId) REFERENCES lecturer(LecturerId),
    FOREIGN key(stuID) REFERENCES student(stuID),
    PRIMARY KEY(noticeID));


INSERT INTO notice VALUES
    ('N001', 'Important Notice', 'This is an important notice for all students.', '2023-10-23','lec001'),
    ('N002', 'Meeting Reminder', 'Reminder of the upcoming meeting.', '2023-10-25','lec006'),
    ('N003', 'Assignment Deadline', 'The deadline for the assignment is approaching.', '2023-10-28', 'lec004'),
    ('N004', 'Guest Lecture', 'Guest lecturer presentation on the 30th.', '2023-10-30','lec007');






INSERT INTO Attendance (stuID, courseID, Date)
VALUES
('TG/2021/1011', 'ICT1253', '2023-05-01'),
('TG/2021/1011', 'ICT1253', '2023-05-08'),
('TG/2021/1011', 'ICT1253', '2023-05-15'),
('TG/2021/1011', 'ICT1253', '2023-05-22'),
('TG/2021/1011', 'ICT1253', '2023-05-29'),
('TG/2021/1011', 'ICT1253', '2023-06-06'),
('TG/2021/1011', 'ICT1253', '2023-06-13'),
('TG/2021/1011', 'ICT1253', '2023-06-27'),
('TG/2021/1011', 'ICT1253', '2023-07-03'),
('TG/2021/1011', 'ICT1253', '2023-07-10'),
('TG/2021/1011', 'ICT1253', '2023-07-17'),
('TG/2021/1011', 'ICT1253', '2023-07-24'),
('TG/2021/1011', 'ICT1253', '2023-08-01'),
('TG/2021/1011', 'ICT1253', '2023-12-08'),

('TG/2021/1020', 'ICT1253', '2023-05-01'),
('TG/2021/1020', 'ICT1253', '2023-05-08'),
('TG/2021/1020', 'ICT1253', '2023-05-15'),
('TG/2021/1020', 'ICT1253', '2023-05-22'),
('TG/2021/1020', 'ICT1253', '2023-05-29'),
('TG/2021/1020', 'ICT1253', '2023-06-06'),
('TG/2021/1020', 'ICT1253', '2023-06-13'),
('TG/2021/1020', 'ICT1253', '2023-06-20'),
('TG/2021/1020', 'ICT1253', '2023-06-27'),
('TG/2021/1020', 'ICT1253', '2023-07-03'),
('TG/2021/1020', 'ICT1253', '2023-07-10'),
('TG/2021/1020', 'ICT1253', '2023-07-17'),
('TG/2021/1020', 'ICT1253', '2023-07-24'),
('TG/2021/1020', 'ICT1253', '2023-08-01'),
('TG/2021/1020', 'ICT1253', '2023-12-08'),

('TG/2021/1014', 'ICT1253', '2023-05-01'),
('TG/2021/1014', 'ICT1253', '2023-05-08'),
('TG/2021/1014', 'ICT1253', '2023-05-15'),
('TG/2021/1014', 'ICT1253', '2023-05-22'),
('TG/2021/1014', 'ICT1253', '2023-05-29'),
('TG/2021/1014', 'ICT1253', '2023-06-06'),
('TG/2021/1014', 'ICT1253', '2023-06-13'),
('TG/2021/1014', 'ICT1253', '2023-06-20'),
('TG/2021/1014', 'ICT1253', '2023-06-27'),
('TG/2021/1014', 'ICT1253', '2023-07-03'),
('TG/2021/1014', 'ICT1253', '2023-07-10'),
('TG/2021/1014', 'ICT1253', '2023-07-17'),
('TG/2021/1014', 'ICT1253', '2023-08-01'),
('TG/2021/1014', 'ICT1253', '2023-12-08'),

('TG/2021/1024', 'ICT1253', '2023-05-01'),
('TG/2021/1024', 'ICT1253', '2023-05-08'),
('TG/2021/1024', 'ICT1253', '2023-05-15'),
('TG/2021/1024', 'ICT1253', '2023-05-22'),
('TG/2021/1024', 'ICT1253', '2023-05-29'),
('TG/2021/1024', 'ICT1253', '2023-06-06'),
('TG/2021/1024', 'ICT1253', '2023-06-13'),
('TG/2021/1024', 'ICT1253', '2023-06-20'),
('TG/2021/1024', 'ICT1253', '2023-06-27'),
('TG/2021/1024', 'ICT1253', '2023-07-03'),
('TG/2021/1024', 'ICT1253', '2023-07-10'),
('TG/2021/1024', 'ICT1253', '2023-07-17'),
('TG/2021/1024', 'ICT1253', '2023-07-24'),
('TG/2021/1024', 'ICT1253', '2023-08-01'),
('TG/2021/1024', 'ICT1253', '2023-12-08');



INSERT INTO Attendance (stuID, courseID, Date)
VALUES
('TG/2021/1011', 'ICT1242', '2023-05-02'),
('TG/2021/1011', 'ICT1242', '2023-05-09'),
('TG/2021/1011', 'ICT1242', '2023-05-16'),
('TG/2021/1011', 'ICT1242', '2023-05-23'),
('TG/2021/1011', 'ICT1242', '2023-05-30'),
('TG/2021/1011', 'ICT1242', '2023-06-07'),
('TG/2021/1011', 'ICT1242', '2023-06-14'),
('TG/2021/1011', 'ICT1242', '2023-06-21'),
('TG/2021/1011', 'ICT1242', '2023-06-28'),
('TG/2021/1011', 'ICT1242', '2023-07-04'),
('TG/2021/1011', 'ICT1242', '2023-07-11'),
('TG/2021/1011', 'ICT1242', '2023-07-18'),
('TG/2021/1011', 'ICT1242', '2023-07-25'),
('TG/2021/1011', 'ICT1242', '2023-08-02'),
('TG/2021/1011', 'ICT1242', '2023-12-09'),

('TG/2021/1020', 'ICT1242', '2023-05-03'),
('TG/2021/1020', 'ICT1242', '2023-05-09'),
('TG/2021/1020', 'ICT1242', '2023-05-16'),
('TG/2021/1020', 'ICT1242', '2023-05-23'),
('TG/2021/1020', 'ICT1242', '2023-05-30'),
('TG/2021/1020', 'ICT1242', '2023-06-07'),
('TG/2021/1020', 'ICT1242', '2023-06-14'),
('TG/2021/1020', 'ICT1242', '2023-06-21'),
('TG/2021/1020', 'ICT1242', '2023-06-28'),
('TG/2021/1020', 'ICT1242', '2023-07-04'),
('TG/2021/1020', 'ICT1242', '2023-07-11'),
('TG/2021/1020', 'ICT1242', '2023-07-18'),
('TG/2021/1020', 'ICT1242', '2023-07-25'),
('TG/2021/1020', 'ICT1242', '2023-08-02'),
('TG/2021/1020', 'ICT1242', '2023-12-09'),

('TG/2021/1014', 'ICT1242', '2023-05-02'),
('TG/2021/1014', 'ICT1242', '2023-05-09'),
('TG/2021/1014', 'ICT1242', '2023-05-16'),
('TG/2021/1014', 'ICT1242', '2023-05-23'),
('TG/2021/1014', 'ICT1242', '2023-05-30'),
('TG/2021/1014', 'ICT1242', '2023-06-07'),
('TG/2021/1014', 'ICT1242', '2023-06-14'),
('TG/2021/1014', 'ICT1242', '2023-06-21'),
('TG/2021/1014', 'ICT1242', '2023-06-28'),
('TG/2021/1014', 'ICT1242', '2023-07-04'),
('TG/2021/1014', 'ICT1242', '2023-07-11'),
('TG/2021/1014', 'ICT1242', '2023-07-18'),
('TG/2021/1014', 'ICT1242', '2023-07-25'),
('TG/2021/1014', 'ICT1242', '2023-08-02'),
('TG/2021/1014', 'ICT1242', '2023-12-09'),


('TG/2021/1024', 'ICT1242', '2023-05-02'),
('TG/2021/1024', 'ICT1242', '2023-05-09'),
('TG/2021/1024', 'ICT1242', '2023-05-16'),
('TG/2021/1024', 'ICT1242', '2023-05-23'),
('TG/2021/1024', 'ICT1242', '2023-05-30'),
('TG/2021/1024', 'ICT1242', '2023-06-07'),
('TG/2021/1024', 'ICT1242', '2023-06-14'),
('TG/2021/1024', 'ICT1242', '2023-06-21'),

('TG/2021/1024', 'ICT1242', '2023-07-04'),
('TG/2021/1024', 'ICT1242', '2023-07-11'),
('TG/2021/1024', 'ICT1242', '2023-07-18'),
('TG/2021/1024', 'ICT1242', '2023-07-25'),
('TG/2021/1024', 'ICT1242', '2023-08-02'),
('TG/2021/1024', 'ICT1242', '2023-12-09');



INSERT INTO Attendance (stuID, courseID, Date)
VALUES
('TG/2021/1011', 'ICT1212', '2023-05-03'),
('TG/2021/1011', 'ICT1212', '2023-05-10'),
('TG/2021/1011', 'ICT1212', '2023-05-17'),
('TG/2021/1011', 'ICT1212', '2023-05-24'),
('TG/2021/1011', 'ICT1212', '2023-05-31'),
('TG/2021/1011', 'ICT1212', '2023-06-08'),
('TG/2021/1011', 'ICT1212', '2023-06-15'),
('TG/2021/1011', 'ICT1212', '2023-06-22'),
('TG/2021/1011', 'ICT1212', '2023-06-29'),
('TG/2021/1011', 'ICT1212', '2023-07-05'),
('TG/2021/1011', 'ICT1212', '2023-07-12'),
('TG/2021/1011', 'ICT1212', '2023-07-19'),
('TG/2021/1011', 'ICT1212', '2023-07-26'),
('TG/2021/1011', 'ICT1212', '2023-08-03'),
('TG/2021/1011', 'ICT1212', '2023-12-10'),

('TG/2021/1020', 'ICT1212', '2023-05-03'),
('TG/2021/1020', 'ICT1212', '2023-05-10'),
('TG/2021/1020', 'ICT1212', '2023-05-17'),
('TG/2021/1020', 'ICT1212', '2023-05-24'),
('TG/2021/1020', 'ICT1212', '2023-05-31'),
('TG/2021/1020', 'ICT1212', '2023-06-08'),
('TG/2021/1020', 'ICT1212', '2023-06-15'),
('TG/2021/1020', 'ICT1212', '2023-06-22'),
('TG/2021/1020', 'ICT1212', '2023-06-29'),
('TG/2021/1020', 'ICT1212', '2023-07-05'),
('TG/2021/1020', 'ICT1212', '2023-07-12'),
('TG/2021/1020', 'ICT1212', '2023-07-19'),
('TG/2021/1020', 'ICT1212', '2023-07-26'),
('TG/2021/1020', 'ICT1212', '2023-08-03'),
('TG/2021/1020', 'ICT1212', '2023-12-10'),

('TG/2021/1014', 'ICT1212', '2023-05-03'),
('TG/2021/1014', 'ICT1212', '2023-05-10'),
('TG/2021/1014', 'ICT1212', '2023-05-17'),
('TG/2021/1014', 'ICT1212', '2023-05-24'),
('TG/2021/1014', 'ICT1212', '2023-05-31'),
('TG/2021/1014', 'ICT1212', '2023-06-08'),
('TG/2021/1014', 'ICT1212', '2023-06-15'),
('TG/2021/1014', 'ICT1212', '2023-06-22'),
('TG/2021/1014', 'ICT1212', '2023-06-29'),
('TG/2021/1014', 'ICT1212', '2023-07-05'),
('TG/2021/1014', 'ICT1212', '2023-07-12'),
('TG/2021/1014', 'ICT1212', '2023-07-19'),
('TG/2021/1014', 'ICT1212', '2023-07-26'),
('TG/2021/1014', 'ICT1212', '2023-08-03'),
('TG/2021/1014', 'ICT1212', '2023-12-10'),


('TG/2021/1024', 'ICT1212', '2023-05-03'),
('TG/2021/1024', 'ICT1212', '2023-05-10'),
('TG/2021/1024', 'ICT1212', '2023-05-17'),
('TG/2021/1024', 'ICT1212', '2023-05-24'),
('TG/2021/1024', 'ICT1212', '2023-05-31'),
('TG/2021/1024', 'ICT1212', '2023-06-08'),
('TG/2021/1024', 'ICT1212', '2023-06-15'),
('TG/2021/1024', 'ICT1212', '2023-06-22'),
('TG/2021/1024', 'ICT1212', '2023-06-29'),
('TG/2021/1024', 'ICT1212', '2023-07-05'),
('TG/2021/1024', 'ICT1212', '2023-07-12'),
('TG/2021/1024', 'ICT1212', '2023-07-19'),
('TG/2021/1024', 'ICT1212', '2023-08-03'),
('TG/2021/1024', 'ICT1212', '2023-12-10');
