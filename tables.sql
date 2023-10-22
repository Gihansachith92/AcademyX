 CREATE TABLE course
    ( 
    courseID VARCHAR(10),
    Name VARCHAR(20),
    Credit INT,
    Week INT ,
    Theory INT,
    Practical INT,
    stuID VARCHAR(10),
    DepID VARCHAR(5),
    LecturerId VARCHAR(10),
    FOREIGN KEY(stuID) REFERENCES student(stuID),
    FOREIGN KEY(DepID) REFERENCES Department(DepID),
    FOREIGN KEY(LecturerId) REFERENCES lecturer(LecturerId),
    PRIMARY KEY(courseID));

CREATE TABLE eligibility(
     CAStatus VARCHAR(10),
     courseID varchar(10),
     stuID varchar(10),
     FOREIGN KEY(courseID) REFERENCES course(courseID),
     FOREIGN KEY(stuID) REFERENCES student(stuID),
     PRIMARY KEY(CAStatus));


CREATE TABLE notice(
    noticeID VARCHAR(5),
    title VARCHAR(10),
    Description VARCHAR(25),
    Date date,
    stuID varchar(10),
    LecturerId VARCHAR (10),
    FOREIGN key(LecturerId) REFERENCES lecturer(LecturerId),
    FOREIGN key(stuID) REFERENCES student(stuID),
    PRIMARY KEY(noticeID));


-- //student deatils

(876543210987 ,"kasun123@gmail.com","kusan" , "kalhara" ,"2001-01-01",Student,M),

(345612789043 ,"pramitha123@gmail.com ","pramitha" , "jayaweera" ,"2002-02-01","Student","M"),

(890124567890 ,"tarik345@gmail.com" ,"tarik" , "suppa" ,"1997-03-01","Student","M"),

(674239801234 ,"minhathSSS@gmail.com ","minhath" , "ahmed" ,"2001-04-01","Student","M"),

(219384765432 ,"saduniperera12@gmail.com" ,"saduni" , "perera" ,"2001-07-01","Student","F"),

(543216789012 ,"niluka2001@gmail.com" ,"niluka de" ,"silva" ,"2002-09-30","Student","F"),

(765432123498 ,"sadun432@gmail.com ",sadun , "perera" ,"2000-07-01","Student","M"),

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

