 CREATE TABLE course
    -> ( 
       courseID VARCHAR(10),
    -> Name VARCHAR(20),
    -> Credit INT,
    -> Week INT ,
       Theory INT,
       Practical INT,
    -> stuID VARCHAR(10),
    -> DepID VARCHAR(5),
    -> LecturerId VARCHAR(10),
    -> FOREIGN KEY(stuID) REFERENCES student(stuID),
    -> FOREIGN KEY(DepID) REFERENCES Department(DepID),
    -> FOREIGN KEY(LecturerId) REFERENCES lecturer(LecturerId),
    -> PRIMARY KEY(courseID));
Query OK, 0 rows affected (0.02 sec)

CREATE TABLE eligibility(
    -> CAStatus VARCHAR(10),
    -> courseID varchar(10),
    -> stuID varchar(10),
    -> FOREIGN KEY(courseID) REFERENCES course(courseID),
    -> FOREIGN KEY(stuID) REFERENCES student(stuID),
    -> PRIMARY KEY(CAStatus));
Query OK, 0 rows affected (0.03 sec)

CREATE TABLE notice(
    -> noticeID VARCHAR(5),
    -> title VARCHAR(10),
    -> Description VARCHAR(25),
    -> Date date,
    -> stuID varchar(10),
    -> LecturerId VARCHAR (10),
    -> FOREIGN key(LecturerId) REFERENCES lecturer(LecturerId),
    -> FOREIGN key(stuID) REFERENCES student(stuID),
    -> PRIMARY KEY(noticeID));
Query OK, 0 rows affected (0.03 sec)





