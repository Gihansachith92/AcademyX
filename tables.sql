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
    ("ENG12lec00422","English II",02,15,1,0,,"DpMUL","Lec006"),
    ("ICT1212" ,"Database Management Systems",02,15,1,0,,"DpICT","Lec001"),
    ("ICT1222","Database Management Systems Practicum",02,15,0,,1,,"DpICT","Lec001"),
    ("ICT1233","Server-Side Web Development",03,15,1,1,"DpICT","Lec005"),
    ("ICT1242","Computer Architecture",02,15,1,0,"DpICT","Lec003"),
    ("ICT1253","Computer Networks",03,15,1,1,"DpICT","Lec002"),
    ("TCS1212",'Fundamentals of Management',02,15,1,0,"DpMUL","Lec007"),
    ("TMS1233","Discrete Mathematics",03,15,1,0,"DpET","lec004"),
);

INSERT INTO admin
VALUES(
    ("Admin",3487);
);

 CREATE TABLE admin(
         adminID VARCHAR(20),
         NIC INT,
         PRIMARY KEY(adminID),
         FOREIGN KEY (NIC) REFERENCES User(NIC)
         );