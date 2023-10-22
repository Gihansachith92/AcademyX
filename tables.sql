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

(3487 , "admin96@gmail.com" , "Sadun" , "Wikramasinhe" , "1995-03-12" , "Admin" , "M"),

(5021 , "deanfot@gmail.com" , "Sudesh" , "Harshana" , "1975-06-09" , "Dean" , "M"),

(6198 ,"nisal34@gmail.com", "Nisal" , "Rajitha" , "1997-11-22" , "Technical Officer" , "M"),

(7342 , "Raveesha22@gmail.com" , "Raveesha" , "Kalpani" , "1998-03-08" , "Technical Officer" , "F"),

(1569 , "Kalpa8@gmail.com" , "Kalpa" , "Shamil" , "1997-12-24" , "Technical Officer" , "M"),

(8230 , "Nuwan12@gmail.com" , "Nuwan" , "Laksiri" , "1984-11-14" , "Lecturer" , "M"),

(4675 , "Chanduni32@gmail.com" , "Chanduni" , "Gamage" , "1994-01-13" , "Lecturer" , "F"),

(9804 , "Nimesha99@gmail.com" , "Nimesha" , "Manage" , "1997-10-17" , "Lecturer" , "F"),

(2856 , "Harshana49@gmail.com" , "Harshana" , "Senewirathna" , "1988-02-13" , "Lecturer" , "M"),

(5731 , "Rumeshika59@gmail.com" , "Rumeshika" , "Dilhani" , "1992-05-19" , "Lecturer" , "F"),

(6298 , "Hiranya44@gmail.com" , "Hiranya" , "Amarasinhe" , "1993-08-29" , "Lecturer" , "F"),

(1746 , "Nilanthi76@gmail.com" , "Nilanthi" , "Adikaram" , "1980-05-07" , "Lecturer" , "F"),

(9032,"kasun123@gmail.com","kusan" , "kalhara" ,"2001-01-01","Student", "M"),

(3485 ,"pramitha123@gmail.com ","pramitha" , "jayaweera" ,"2002-02-01","Student","M"),

(7129 ,"tarik345@gmail.com" ,"tarik" , "suppa" ,"1997-03-01","Student","M"),

(6402 ,"minhathSSS@gmail.com ","minhath" , "ahmed" ,"2001-04-01","Student","M"),

(8973 ,"saduniperera12@gmail.com" ,"saduni" , "perera" ,"2001-07-01","Student","F"),

(5316 ,"niluka2001@gmail.com" ,"niluka de" ,"silva" ,"2002-09-30","Student","F"),

(2657 ,"sadun432@gmail.com ", "sadun" , "perera" ,"2000-07-01","Student","M"),

(4820 ,"ayodya9001@gmail.com ","ayodya", "fernando" ,"1998-06-21","Student","F"),

(3901 ,"manith827@gmail.com ","manith" , "abewickrama" ,"2001-05-20","Student","M"),

(8194 ,"hemalperera@gmail.com" ,"hemal" , "perera" ,"2001-03-15","Student","M"),

(7265 ,"shashi000@gmail.com" ,"shashi" , "nishadi" ,"2004-11-23","Student","F"),

(1463 ,"kawshyPerera@gmail.com" ,"kawshy" , "perera" ,"2001-11-11","Student","F"),

(5738 ,"dineth871@gmail.com ","dineth", "pushpakumara" ,"2001-01-01","Student","M"),

(9250 ,"kavindya65@gmail.com ","kavindya" ,"malshi","2001-09-04","Student","F"),

(6709 ,"kavindu444@gmail.com ","kavindu" , "ekanayake" ,"2001-05-01","Student","M"),

(2154 ,"janaka234@gmail.com" ,"janaka" , "gamage","2002-02-06","Student","M"),

(3496 ,"lakindu891@gmail.com ","lakindu" , "keshan" ,"2000-12-12","Student","M"),

(6837 ,"hiruni888@gmail.com ", "hiruni" , "herath" ,"2001-05-13","Student","F");



-- department table data insertion

INSERT INTO Department VALUES 
("DpICT" , "ICT Department"),
("DpET" , "ET Department"),
("DpMUL" , "Multideciplinary Dep");


-- lecturer table data insertion

INSERT INTO Lecturer VALUES
("Lec001", 8230 , "DpICT"),
("Lec002", 4675 , "DpICT"),
("Lec003", 9804 , "DpICT"),
("lec004", 2856 , "DpET"),
("Lec005", 5731 , "DpICT"),
("Lec006", 6298 , "DpMUL"),
("Lec007", 1746 , "DpMUL");





