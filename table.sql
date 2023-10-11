-- Create Lecturer Table

CREATE TABLE
    Lecturer(
        LecturerId VARCHAR (10),
        LecName VARCHAR (50),
        NIC INT (15),
        DepID VARCHAR (10),
        PRIMARY KEY(LecturerID)
    );

-- Create Quize Table

CREATE TABLE
    QUIZ(
        quizeNo VARCHAR (5),
        Marks INT(3),
        stuID VARCHAR (10)
    );

