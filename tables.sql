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
   (stuID VARCHAR(20),
    States VARCHAR(20),
    NIC INT,
    PRIMARY KEY (stuID),
    FOREIGN KEY (NIC) REFERENCES User(NIC)  );


-- Assignment table creation

-- CREATE TABLE Assignment
--    (AssignmentID VARCHAR(20),
--     courseID VARCHAR(20),
--     Marks FLOAT,
--     PRIMARY KEY (AssignmentID),
--     FOREIGN KEY (courseID) REFERENCES Course(courseID)  );


-- Create Lecturer Table

CREATE TABLE
    Lecturer(
        LecturerId VARCHAR (20),
        NIC INT ,
        DepID VARCHAR (20),
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
        stuID VARCHAR(20),
        courseID VARCHAR(20),
        DepID VARCHAR(20),
        FOREIGN KEY (stuID) REFERENCES Student(stuID),
        FOREIGN KEY (courseID) REFERENCES Course(courseID),
        FOREIGN KEY (DepID) REFERENCES Department(DepID)
         );    


  -- admin table creation

     CREATE TABLE admin(
         adminID VARCHAR(20),
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
("DpMUL" , "Multideciplinary Department");


-- lecturer table data insertion

INSERT INTO Lecturer VALUES
("Lec001", 8230 , "DpICT"),
("Lec002", 4675 , "DpICT"),
("Lec003", 9804 , "DpICT"),
("lec004", 2856 , "DpET"),
("Lec005", 5731 , "DpICT"),
("Lec006", 6298 , "DpMUL"),
("Lec007", 1746 , "DpMUL");



-- examMarks table data insertion

INSERT INTO ExamMarks VALUES
( 80 , 70 , 60 , 0 , 60 , 0 , 70 , 80 , "TG/2021/1011" , "TCS1212" , "DpMUL"),
( 70 , 60 , 50 , 0 , 50 , 0 , 60 , 70 , "TG/2021/1020" , "TCS1212" , "DpMUL"),
( 60 , 50 , 40 , 0 , 40 , 0 , 50 , 60 , "TG/2021/1014" , "TCS1212" , "DpMUL"),
( 50 , 40 , 30 , 0 , 30 , 0 , 40 , 50 , "TG/2021/1024" , "TCS1212" , "DpMUL"),
( 40 , 30 , 20 , 0 , 20 , 0 , 30 , 40 , "TG/2021/1027" , "TCS1212" , "DpMUL"),
( 70 , 80 , 50 , 0 , 80 , 0 , 70 , 80 , "TG/2021/1031" , "TCS1212" , "DpMUL"),
( 50 , 70 , 00 , 0 , 70 , 0 , 50 , 60 , "TG/2021/1036" , "TCS1212" , "DpMUL"),
( 80 , 70 , 90 , 0 , 60 , 0 , 70 , 80 , "TG/2021/1042" , "TCS1212" , "DpMUL"),
( 70 , 60 , 50 , 0 , 50 , 0 , 60 , 70 , "TG/2021/1045" , "TCS1212" , "DpMUL"),
( 60 , 50 , 90 , 0 , 40 , 0 , 50 , 90 , "TG/2021/1050" , "TCS1212" , "DpMUL"),
( 50 , 80 , 30 , 0 , 30 , 0 , 40 , 50 , "TG/2020/980" , "TCS1212" , "DpMUL"),
( 60 , 30 , 70 , 0 , 20 , 0 , 30 , 60 , "TG/2020/972" , "TCS1212" , "DpMUL"),
( 30 , 60 , 90 , 0 , 10 , 0 , 20 , 70 , "TG/2020/945" , "TCS1212" , "DpMUL"),
( 60 , 80 , 00 , 0 , 00 , 0 , 10 , 90 , "TG/2019/866" , "TCS1212" , "DpMUL"),
( 80 , 70 , 60 , 0 , 60 , 0 , 70 , 80 , "TG/2019/854" , "TCS1212" , "DpMUL"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/678" , "TCS1212" , "DpMUL"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/645" , "TCS1212" , "DpMUL"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/415" , "TCS1212" , "DpMUL"),

( 40 , 70 , 80 , 0 , 70 , 0 , 80 , 90 , "TG/2021/1011" , "TMS1233" , "DpET"),
( 70 , 20 , 80 , 0 , 80 , 0 , 80 , 70 , "TG/2021/1020" , "TMS1233" , "DpET"),
( 20 , 50 , 60 , 0 , 60 , 0 , 60 , 60 , "TG/2021/1014" , "TMS1233" , "DpET"),
( 80 , 70 , 60 , 0 , 60 , 0 , 70 , 80 , "TG/2021/1024" , "TMS1233" , "DpET"),
( 70 , 60 , 50 , 0 , 50 , 0 , 60 , 70 , "TG/2021/1027" , "TMS1233" , "DpET"),
( 60 , 50 , 40 , 0 , 80 , 0 , 50 , 60 , "TG/2021/1031" , "TMS1233" , "DpET"),
( 50 , 40 , 80 , 0 , 80 , 0 , 70 , 50 , "TG/2021/1036" , "TMS1233" , "DpET"),
( 40 , 80 , 50 , 0 , 40 , 0 , 60 , 80 , "TG/2021/1042" , "TMS1233" , "DpET"),
( 30 , 70 , 80 , 0 , 80 , 0 , 50 , 60 , "TG/2021/1045" , "TMS1233" , "DpET"),
( 90 , 10 , 60 , 0 , 70 , 0 , 80 , 40 , "TG/2021/1050" , "TMS1233" , "DpET"),
( 80 , 70 , 60 , 0 , 60 , 0 , 70 , 80 , "TG/2020/980" , "TMS1233" , "DpET"),
( 70 , 60 , 50 , 0 , 50 , 0 , 60 , 70 , "TG/2020/972" , "TMS1233" , "DpET"),
( 60 , 50 , 40 , 0 , 80 , 0 , 50 , 60 , "TG/2020/945" , "TMS1233" , "DpET"),
( 50 , 40 , 70 , 0 , 90 , 0 , 80 , 50 , "TG/2019/866" , "TMS1233" , "DpET"),
( 40 , 30 , 20 , 0 , 20 , 0 , 30 , 40 , "TG/2019/854" , "TMS1233" , "DpET"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/678" , "TMS1233" , "DpET"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/645" , "TMS1233" , "DpET"),
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/415" , "TMS1233" , "DpET"),


( 80 , 70 , 60 , 70 , 60 , 55 , 70 , 80 , "TG/2021/1011" , "ICT1253" , "DpICT"),
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
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/415" , "ICT1253" , "DpICT"),

( 45 , 70 , 60 , 0 , 63 , 0 , 5 , 20 , "TG/2021/1011" , "ICT1242" , "DpICT"),
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
( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/415" , "ICT1242" , "DpICT"),



    (80,70,80,78,0,90,0,75,"TG/2021/1011","ICT1222","DpICT"),

    (90,25,90,76,0,56,0,76,"TG/2021/1020","ICT1222","DpICT"),

    (50,60,70,65,0,76,0,86,"TG/2021/1014","ICT1222","DpICT"),

    (30,10,60,50,0,34,0,72,"TG/2021/1024","ICT1222","DpICT"),

    (00,10,10,35,0,36,0,50,"TG/2021/1027","ICT1222","DpICT"),

    (100,100,100,78,0,90,0,98,"TG/2021/1031","ICT1222","DpICT"),

    (80,70,80,78,0,90,0,25,"TG/2021/1036","ICT1222","DpICT"),

    (75,35,55,44,0,10,0,57,"TG/2021/1042","ICT1222","DpICT"),

    (65,15,85,67,0,90,0,45,"TG/2021/1045","ICT1222","DpICT"),

    (95,55,60,91,0,79,0,81,"TG/2021/1050","ICT1222","DpICT"),

    (85,35,75,10,0,80,0,69,"TG/2020/980","ICT1222","DpICT"),

    (100,100,100,100,0,100,0,48,"TG/2020/972","ICT1222","DpICT"),

    (90,90,90,90,0,99,0,65,"TG/2020/945","ICT1222","DpICT"),

    (65,55,50,65,0,65,0,58,"TG/2019/866","ICT1222","DpICT"),

    (55,45,65,72,0,66,0,78,"TG/2019/854","ICT1222","DpICT"),

    (0,0,0,0,0,0,0,0,"TG/2018/678","ICT1222","DpICT"),

    (0,0,0,0,0,0,0,0,"TG/2018/645","ICT1222","DpICT"),

    (0,0,0,0,0,0,0,0,"TG/2017/415","ICT1222","DpICT"), 
    

    (30,50,10,78,0,90,0,67,"TG/2021/1011","ICT1233","DpICT"),

    (30,20,10,55,0,26,0,55,"TG/2021/1020","ICT1233","DpICT"),

    (35,25,75,63,0,72,0,77,"TG/2021/1014","ICT1233","DpICT"),

    (30,10,60,50.3,0,34,0,90,"TG/2021/1024","ICT1233","DpICT"),

    (00,10,10,35,0,56.9,0,95,"TG/2021/1027","ICT1233","DpICT"),

    (100,100,100,78,0,90,0,85,"TG/2021/1031","ICT1233","DpICT"),

    (80,75,80,78,0,90,0,32,"TG/2021/1036","ICT1233","DpICT"),

    (75,35,55,44.5,0,10,0,52,"TG/2021/1042","ICT1233","DpICT"),

    (65,75,85,67,0,90,0,45,"TG/2021/1045","ICT1233","DpICT"),

    (95,55,60,91.2,0,79,0,65,"TG/2021/1050","ICT1233","DpICT"),

    (65,35,75,10,0,80,0,43,"TG/2020/980","ICT1233","DpICT"),

    (100,100,100,100,0,100,0,100,"TG/2020/972","ICT1233","DpICT"),

    (90,90,90,90,0,99,0,59,"TG/2020/945","ICT1233","DpICT"),

    (65,55,50,65,0,65,0,82,"TG/2019/866","ICT1233","DpICT"),

    (55,45,65,72,0,66,0,92,"TG/2019/854","ICT1233","DpICT"),

    (0,0,0,0,0,0,0,0,"TG/2018/678","ICT1233","DpICT"),

    (0,0,0,0,0,0,0,0,"TG/2018/645","ICT1233","DpICT"),

    (0,0,0,0,0,0,0,0,"TG/2017/415","ICT1233","DpICT"), 

    
      ( 85 , 65 , 70 , 0 , 65 , 0 , 60 , 20 , 'TG/2021/1011' , 'ENG1222' , 'DpMUL'),
      ( 84 , 75 , 60 , 0 , 70 , 0 , 40 , 45 , 'TG/2021/1020' , 'ENG1222' , 'DpMUL'),
      ( 60 , 70 , 65 , 0 , 70 , 0 , 55 , 60 , 'TG/2021/1014' , 'ENG1222' , 'DpMUL'),
      ( 70 , 80 , 40 , 0 , 80 , 0 , 65 , 45 , 'TG/2021/1024' , 'ENG1222' , 'DpMUL'),
      ( 80 , 85 , 45 , 0 , 65 , 0 , 55 , 50 , 'TG/2021/1027' , 'ENG1222' , 'DpMUL'),
      ( 90 , 75 , 30 , 0 , 75 , 0 , 75 , 30 , 'TG/2021/1031' , 'ENG1222' , 'DpMUL'),
      ( 65 , 70 , 55 , 0 , 20 , 0 , 65 , 45 , 'TG/2021/1036'  , 'ENG1222' , 'DpMUL'),
      ( 75 , 65 , 65 , 0 , 80 , 0 , 55 , 35 , 'TG/2021/1042' , 'ENG1222' , 'DpMUL'),
      ( 70 , 60 , 55 , 0 , 85 , 0 , 90 , 10 , 'TG/2021/1045' , 'ENG1222' , 'DpMUL'),
      ( 85 , 75 , 75 , 0 , 90 , 0 , 85 , 30 , 'TG/2021/1050' , 'ENG1222' , 'DpMUL'),

      (  60, 55 , 65 , 0 , 55 , 0 , 75 , 50 , 'TG/2020/980' ,'ENG1222' , 'DpMUL'),
      (  60, 70 , 40 , 0 , 75 , 0 ,  60 , 55 , 'TG/2020/972', 'ENG1222' , 'DpMUL'),
      (  30, 65 , 45 , 0 , 60 , 0 , 80 , 40 , 'TG/2020/945' , 'ENG1222' , 'DpMUL'),
      (  70 , 65 , 55 , 0 , 90 , 0 , 90 , 40 , 'TG/2019/866' , 'ENG1222' , 'DpMUL'),
      (  85 , 75 , 55 , 0 , 70 , 0 , 40 , 20 , 'TG/2019/854' , 'ENG1222' , 'DpMUL'),

      ( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 'TG/2018/678'  , 'ENG1222'  ,  'DpMUL'),
      ( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 'TG/2018/645'  , 'ENG1222'  ,  'DpMUL'),
      ( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 'TG/2017/415'  , 'ENG1222'  ,  'DpMUL'),

      ( 85 , 60 , 70 , 0 , 65 , 0 , 70 , 80 , 'TG/2021/1011' , 'ICT1212' , 'DpICT'),
      ( 75 , 70 , 65 , 0 , 55 , 0 , 35 , 60 , 'TG/2021/1020' , 'ICT1212' , 'DpICT'),
      ( 80 , 75 , 40 , 0 , 70 , 0 , 70 , 75 , 'TG/2021/1014' , 'ICT1212' , 'DpICT'),
      ( 85 , 65 , 60 , 0 , 80 , 0 , 65 , 70 , 'TG/2021/1024' , 'ICT1212' , 'DpICT'),
      ( 90 , 85 , 65 , 0 , 80 , 0 , 90 , 65 , 'TG/2021/1027' , 'ICT1212' , 'DpICT'),
      ( 80 , 90 , 50 , 0 , 65 , 0 , 75 , 45 , 'TG/2021/1031' , 'ICT1212' , 'DpICT'),
      ( 65 , 45 , 60 , 0 , 70 , 0 , 70 , 55 , 'TG/2021/1036'  , 'ICT1212' , 'DpICT'),
      ( 75 , 40 , 40 , 0 , 90 , 0 , 70 , 80 , 'TG/2021/1042' , 'ICT1212' , 'DpICT'),
      ( 80 , 20 , 50 , 0 , 80 , 0 , 65 , 75 , 'TG/2021/1045' , 'ICT1212' , 'DpICT'),
      ( 85 , 50 , 90 , 0 , 70 , 0 , 55 , 80 , 'TG/2021/1050' , 'ICT1212' , 'DpICT'),

      ( 50 , 70 , 80 , 0 , 65 , 0 , 55 , 65 , 'TG/2020/980'  , 'ICT1212' , 'DpICT'),
      ( 60 , 80 , 70 , 0 , 75 , 0 , 65 , 90 , 'TG/2020/972'  , 'ICT1212' , 'DpICT'),
      ( 70 , 90 , 60 , 0 , 80 , 0 , 75 , 80 , 'TG/2020/945'  , 'ICT1212' , 'DpICT'),
      ( 90 , 75 , 65 , 0 , 65 , 0 , 85 , 85 , 'TG/2019/866'  , 'ICT1212' , 'DpICT'),
      ( 80 , 75 , 65 , 0 , 45 , 0 , 75 , 80 , 'TG/2019/854'  , 'ICT1212' , 'DpICT'),

      ( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 'TG/2018/678'  , 'ICT1212' , 'DpICT'),
      ( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 'TG/2018/645'  , 'ICT1212' , 'DpICT'),
      ( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 'TG/2017/415'  , 'ICT1212' , 'DpICT');
    







