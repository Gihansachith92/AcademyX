 CREATE TABLE course
    ( 
    courseID VARCHAR(20),
    CNames VARCHAR(100),
    Credit INT,
    Week INT ,
    Theory INT,
    Practical INT,
    DepID VARCHAR(20),
    LecturerId VARCHAR(20),
    FOREIGN KEY(DepID) REFERENCES Department(DepID),
    FOREIGN KEY(LecturerId) REFERENCES lecturer(LecturerId),
    PRIMARY KEY(courseID));

CREATE TABLE eligibility(
     CAStatus VARCHAR(10),
     courseID varchar(20),
     stuID varchar(20),
     FOREIGN KEY(courseID) REFERENCES course(courseID),
     FOREIGN KEY(stuID) REFERENCES student(stuID),
     PRIMARY KEY(CAStatus));


CREATE TABLE notice(
    noticeID VARCHAR(20),
    title VARCHAR(20),
    Description VARCHAR(100),
    Date date,
    stuID varchar(20),
    LecturerId VARCHAR (20),
    FOREIGN key(LecturerId) REFERENCES lecturer(LecturerId),
    FOREIGN key(stuID) REFERENCES student(stuID),
    PRIMARY KEY(noticeID));


-- //student deatils

(876543210987 ,"kasun123@gmail.com","kusan" , "kalhara" ,"2001-01-01","Student","M"),

(345612789043 ,"pramitha123@gmail.com ","pramitha" , "jayaweera" ,"2002-02-01","Student","M"),

(890124567890 ,"tarik345@gmail.com" ,"tarik" , "suppa" ,"1997-03-01","Student","M"),

(674239801234 ,"minhathSSS@gmail.com ","minhath" , "ahmed" ,"2001-04-01","Student","M"),

(219384765432 ,"saduniperera12@gmail.com" ,"saduni" , "perera" ,"2001-07-01","Student","F"),

(543216789012 ,"niluka2001@gmail.com" ,"niluka de" ,"silva" ,"2002-09-30","Student","F"),

(765432123498 ,"sadun432@gmail.com ","sadun" , "perera" ,"2000-07-01","Student","M"),

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

(456789098765 ,"hiruni888@gmail.com ", "hiruni" , "herath" ,"2001-05-13","Student","F")

-- course details
INSERT INTO course(courseID,CName,Credit,Week,Theory,Practical,DepID,LecturerId)
VALUES(
    ("ENG1222","English II",02,15,1,0,,"DpMUL","Lec006"),
    ("ICT1212" ,"Database Management Systems Theory",02,15,1,0,"DpICT","Lec001"),
    ("ICT1222","Database Management Systems Practicum",02,15,0,1,"DpICT","Lec001"),
    ("ICT1233","Server-Side Web Development",03,15,0,1,"DpICT","Lec005"),
    ("ICT1242","Computer Architecture",02,15,1,0,"DpICT","Lec003"),
    ("ICT1253","Computer Networks",03,15,1,0,"DpICT","Lec002"),
    ("TCS1212",'Fundamentals of Management',02,15,1,0,"DpMUL","Lec007"),
    ("TMS1233","Discrete Mathematics",03,15,1,0,"DpET","lec004"),
);

INSERT INTO admin
VALUES ("Admin",3487);

 CREATE TABLE admin(
         adminID VARCHAR(20),
         NIC INT,
         PRIMARY KEY(adminID),
         FOREIGN KEY (NIC) REFERENCES User(NIC)
         );

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

-- dbms pratical and Server-Side Web Development

INSERT INTO ExamMarks
VALUES(
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
    
);

-- SERVER SIDE
 INSERT INTO ExamMarks
VALUES(
    (30,50,10,78,0,90,0,67,"TG/2021/1011","ICT1233","DpICT"),

    (30,20,10,55,0,26,0,55,"TG/2021/1020","ICT1233","DpICT"),

    (35,25,75,63,0,72,0,77,"TG/2021/1014","ICT1233","DpICT"),

    (30,10,60,50,0,34,0,90,"TG/2021/1024","ICT1233","DpICT"),

    (00,10,10,35,0,56.9,0,95,"TG/2021/1027","ICT1233","DpICT"),

    (100,100,100,78,0,90,0,85,"TG/2021/1031","ICT1233","DpICT"),

    (80,75,80,78,0,90,0,32,"TG/2021/1036","ICT1233","DpICT"),

    (75,35,55,44,0,10,0,52,"TG/2021/1042","ICT1233","DpICT"),

    (65,75,85,67,0,90,0,45,"TG/2021/1045","ICT1233","DpICT"),

    (95,55,60,91,0,79,0,65,"TG/2021/1050","ICT1233","DpICT"),

    (65,35,75,10,0,80,0,43,"TG/2020/980","ICT1233","DpICT"),

    (45,15,85,56,0,89,0,86,"TG/2020/972","ICT1233","DpICT"),

    (90,90,90,90,0,99,0,59,"TG/2020/945","ICT1233","DpICT"),

    (65,55,50,65,0,65,0,82,"TG/2019/866","ICT1233","DpICT"),

    (55,45,65,72,0,66,0,92,"TG/2019/854","ICT1233","DpICT"),

    (0,0,0,0,0,0,0,0,"TG/2018/678","ICT1233","DpICT"),

    (0,0,0,0,0,0,0,0,"TG/2018/645","ICT1233","DpICT"),

    (0,0,0,0,0,0,0,0,"TG/2017/415","ICT1233","DpICT"), 
    
);