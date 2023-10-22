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

    