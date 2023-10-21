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


  -- admin table creation

     CREATE TABLE admin(
         adminID VARCHAR(5),
         NIC INT,
         PRIMARY KEY(adminID),
         FOREIGN KEY (NIC) REFERENCES User(NIC)
         );


-- User table data insertion

INSERT INTO User Values 

(482957103864 , "admin96@gmail.com" , "Sadun" , "Wikramasinhe" , "1995-03-12" , "Admin" , "M"),

(765213409287 , "deanfot@gmail.com" , "Sudesh" , "Harshana" , "1975-06-09" , "Dean" , "M"),

(128976534092 ,"nisal34@gmail.com", "Nisal" , "Rajitha" , "1997-11-22" , "Technical Officer" , "M"),

(903874125623 , "Raveesha22@gmail.com" , "Raveesha" , "Kalpani" , "1998-03-08" , "Technical Officer" , "F"),

(567890123456 , "Kalpa8@gmail.com" , "Kalpa" , "Shamil" , "1997-12-24" , "Technical Officer" , "M"),

(341276890543 , "Nuwan12@gmail.com" , "Nuwan" , "Laksiri" , "1984-11-14" , "Lecturer" , "M"),

(209384765123 , "Chanduni32@gmail.com" , "Chanduni" , "Gamage" , "1994-01-13" , "Lecturer" , "F"),

(654321098765 , "Nimesha99@gmail.com" , "Nimesha" , "Manage" , "1997-10-17" , "Lecturer" , "F"),

(987654321001 , "Harshana49@gmail.com" , "Harshana" , "Senewirathna" , "1988-02-13" , "Lecturer" , "M"),

(432187654320 , "Rumeshika59@gmail.com" , "Rumeshika" , "Dilhani" , "1992-05-19" , "Lecturer" , "F"),

(765432198765 , "Hiranya44@gmail.com" , "Hiranya" , "Amarasinhe" , "1993-08-29" , "Lecturer" , "F"),

(123456789012 , "Nilanthi76@gmail.com" , "Nilanthi" , "Adikaram" , "1980-05-07" , "Lecturer" , "F"),

(876543210987 ,"kasun123@gmail.com","kusan" , "kalhara" ,"2001-01-01","Student", "M"),

(345612789043 ,"pramitha123@gmail.com ","pramitha" , "jayaweera" ,"2002-02-01","Student","M"),

(890124567890 ,"tarik345@gmail.com" ,"tarik" , "suppa" ,"1997-03-01","Student","M"),

(674239801234 ,"minhathSSS@gmail.com ","minhath" , "ahmed" ,"2001-04-01","Student","M"),

(219384765432 ,"saduniperera12@gmail.com" ,"saduni" , "perera" ,"2001-07-01","Student","F"),

(543216789012 ,"niluka2001@gmail.com" ,"niluka de" ,"silva" ,"2002-09-30","Student","F"),

(765432123498 ,"sadun432@gmail.com ", "sadun" , "perera" ,"2000-07-01","Student","M"),

(234567890123 ,"ayodya9001@gmail.com ","ayodya", "fernando" ,"1998-06-21","Student","F"),

(123456789001 ,"manith827@gmail.com ","manith" , "abewickrama" ,"2001-05-20","Student","M"),

(543210987654 ,"hemalperera@gmail.com" ,"hemal" , "perera" ,"2001-03-15","Student","M"),

(890123456789 ,"shashi000@gmail.com" ,"shashi" , "nishadi" ,"2004-11-23","Student","F"),

(987612304567 ,"kawshyPerera@gmail.com" ,"kawshy" , "perera" ,"2001-11-11","Student","F"),

(567890432198 ,"dineth871@gmail.com ","dineth", "pushpakumara" ,"2001-01-01","Student","M"),

(123498765432 ,"kavindya65@gmail.com ","kavindya" ,"malshi","2001-09-04","Student","F"),

(765432109876 ,"kavindu444@gmail.com ","kavindu" , "ekanayake" ,"2001-05-01","Student","M"),

(109876543210 ,"janaka234@gmail.com" ,"janaka" , "gamage","2002-02-06","Student","M"),

(123012345678 ,"lakindu891@gmail.com ","lakindu" , "keshan" ,"2000-12-12","Student","M"),

(456789098765 ,"hiruni888@gmail.com ", "hiruni" , "herath" ,"2001-05-13","Student","F");


