-- User table creation

CREATE TABLE User
   (NIC INT,
    Email VARCHAR(50),
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    DateOfBirth DATE,
    Roles VARCHAR(20),
    PRIMARY KEY (NIC) );


-- Student table creation

CREATE TABLE Student
   (stuID VARCHAR(10),
    States VARCHAR(20),
    NIC INT,
    PRIMARY KEY (stuID),
    FOREIGN KEY (NIC) REFERENCES User(NIC)  );


-- Assignment table creation

CREATE TABLE Assignment
   (AssignmentID VARCHAR(5),
    courseID VARCHAR(10),
    Marks FLOAT,
    PRIMARY KEY (AssignmentID),
    FOREIGN KEY (courseID) REFERENCES Course(courseID)  );


-- Create Lecturer Table

CREATE TABLE
    Lecturer(
        LecturerId VARCHAR (10),
        NIC INT (15),
        DepID VARCHAR (10),
        PRIMARY KEY(LecturerID),
        FOREIGN KEY (NIC) REFERENCES User(NIC),
        FOREIGN KEY (DepID) REFERENCES Department(DepID)
    );


   -- Exam table creation

  CREATE TABLE ExamMarks( 
        Quiz1 decimal(3,2),
        Quiz2 decimal(3,2),
        Quiz3 decimal(3,2),
        MidPractical decimal(3,2),
        MidTheory decimal(3,2),
        EndPractical decimal(3,2),
        EndTheory decimal(3,2),
        Assesments decimal(3,2),
        stuID VARCHAR(10),
        courseID VARCHAR(10),
        DepID VARCHAR(10),
        FOREIGN KEY (stuID) REFERENCES Student(stuID),
        FOREIGN KEY (courseID) REFERENCES Course(courseID),
        FOREIGN KEY (DepID) REFERENCES Department(DepID)
         );    



