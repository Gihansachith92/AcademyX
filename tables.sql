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
    GPA FLOAT,
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
        LecName VARCHAR (50),
        NIC INT (15),
        DepID VARCHAR (10),
        PRIMARY KEY(LecturerID)
    );



