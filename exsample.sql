CREATE TABLE employee(
    e_id VARCHAR(20),
    e_d_id VARCHAR(20),
    e_name VARCHAR(20),
    e_desig VARCHAR(20),
    e_salary INT,
    PRIMARY KEY(e_id));

INSERT INTO employee
VALUES
("e01", "d01", "ranjana", "programmer", 35000),
("e02", "d02", "Kumara", "Analyst", 42000),
("e03", "d02", "Saman", "Analyst", 62000),
("e04" ,"d01", "Kasun", "programmer", 43000);


CREATE TABLE dept(
    d_id VARCHAR(20),
    d_name VARCHAR(20),
    d_manager VARCHAR(20),
    PRIMARY KEY(d_id));


INSERT INTO dept
VALUES
("d01","implementation", "e01"), 
("d02","Testing", "e03");

CREATE TABLE product(
    p_id VARCHAR(20),
    p_pr_id VARCHAR(20),
    p_name VARCHAR(20),
    p_price INT,
    PRIMARY KEY(p_id));

INSERT INTO product
VALUES
("p01" ,"pr01" ,"IControlsystem" ,225000),
("p02" ,"pr02" ,"Payroll system" ,150000);

CREATE TABLE project(
 pr_id VARCHAR(20),
 pr_name VARCHAR(20),
 pr_leader VARCHAR(20),
 PRIMARY KEY(pr_id));

INSERT INTO project
VALUES
("pr01", "inv01", "e02"),
("pr02", "Pay01", "e03");


CREATE TABLE work(
w_pr_id  VARCHAR(20),
w_e_id  VARCHAR(20));

INSERT INTO WORK
VALUES
("pr01" ,"e01"), 
("pr02" ,"e01" ),
("pr01" ,"e02" ),
("pr01" ,"e04" ),
("pr02" ,'e03' ),
("pr01" ,"e03" );

ALTER TABLE 

CREATE TABLE student(
    studentID INT,
    studentName VARCHAR(20),
    mobileNo VARCHAR(20),
);

INSERT INTO student(studentID,studentName,mobileNo)
VALUES
(1,'KAMAL',"0713337773"),
(2,'SUNIL',"0711234333"),
(3,'MALA',""),
(4,'KAMAL',"" ),
(5,'KAMAL',"");

CREATE TABLE subject(
    subID VARCHAR(20),
    subjects VARCHAR(20),
    PRIMARY KEY(subID));

INSERT INTO subject
VALUES
("SUB001","SINHALA"),
("SUB002","MATHS"),
("SUB003","SCIENCE"),
("SUB004","TAMIL"),
("SUB005","ENGLISH");

CREATE TABLE MARKS(
    studentID INT,
    subID VARCHAR(20),
    MARKS INT,
    FOREIGN KEY(studentID) REFERENCES student(studentID),
    FOREIGN KEY(subID) REFERENCES subject(subID));

INSERT INTO MARKS
VALUES
(2,"SUB001",76),
(2,"SUB002",50),
(2,"SUB003",64),
(2,"SUB004",48),
(2,"SUB005",52),
(3,"SUB001",67),
(3,"SUB002",38),
(3,"SUB003",76),
(3,"SUB004",27),
(3,"SUB005",87),
(4,"SUB001",35),
(4,"SUB002",69),
(4,"SUB003",44),
(4,"SUB004",75),
(4,"SUB005",36);

("TG/2021/1011","ICT1222","DpICT",85),
("TG/2021/1020","ICT1222","DpICT",81),
("TG/2021/1014","ICT1222","DpICT",90),
("TG/2021/1024","ICT1222","DpICT",87),
("TG/2021/1027","ICT1222","DpICT",100),
("TG/2021/1031","ICT1222","DpICT",80),
("TG/2021/1036","ICT1222","DpICT",83),
("TG/2021/1042","ICT1222","DpICT",95),
("TG/2021/1045","ICT1222","DpICT",82),
("TG/2021/1050","ICT1222","DpICT",94),
("TG/2020/980" ,"ICT1222","DpICT",80),
("TG/2020/972" ,"ICT1222","DpICT",80),
("TG/2020/945" ,"ICT1222","DpICT",80),
("TG/2019/866" ,"ICT1222","DpICT",80),
("TG/2019/854" ,"ICT1222","DpICT",80),
("TG/2018/678" ,"ICT1222","DpICT",0),
("TG/2018/645" ,"ICT1222","DpICT",0),
("TG/2017/415" ,"ICT1222","DpICT",0),

("TG/2021/1011","ICT1233","DpICT",81),
("TG/2021/1020","ICT1233","DpICT",90),
("TG/2021/1014","ICT1233","DpICT",75),  //kid
("TG/2021/1024","ICT1233","DpICT",86),
("TG/2021/1027","ICT1233","DpICT",97),
("TG/2021/1031","ICT1233","DpICT",98),
("TG/2021/1036","ICT1233","DpICT",68), // kid
("TG/2021/1042","ICT1233","DpICT",82),
("TG/2021/1045","ICT1233","DpICT",95),
("TG/2021/1050","ICT1233","DpICT",93),
("TG/2020/980" ,"ICT1233","DpICT",80),
("TG/2020/972" ,"ICT1233","DpICT",80),
("TG/2020/945" ,"ICT1233","DpICT",80),
("TG/2019/866" ,"ICT1233","DpICT",80),
("TG/2019/854" ,"ICT1233","DpICT",80),
("TG/2018/678" ,"ICT1233","DpICT",0),
("TG/2018/645" ,"ICT1233","DpICT",0),
("TG/2017/415" ,"ICT1233","DpICT",0),

("TG/2021/1011" , "ENG1222","DpMUL",80),
("TG/2021/1020" , "ENG1222","DpMUL",80),
("TG/2021/1014" , "ENG1222","DpMUL",82),
("TG/2021/1024" , "ENG1222","DpMUL",89),
("TG/2021/1027" , "ENG1222","DpMUL",90),
("TG/2021/1031" , "ENG1222","DpMUL",91),
("TG/2021/1036" , "ENG1222","DpMUL",88),
("TG/2021/1042" , "ENG1222","DpMUL",95),
("TG/2021/1045" , "ENG1222","DpMUL",99),
("TG/2021/1050" , "ENG1222","DpMUL",87),
("TG/2020/980"  , "ENG1222","DpMUL",80),
("TG/2020/972"  , "ENG1222","DpMUL",80),
("TG/2020/945"  , "ENG1222","DpMUL",80),
("TG/2019/866"  , "ENG1222","DpMUL",80),
("TG/2019/854"  , "ENG1222","DpMUL",80),
("TG/2018/678"  , "ENG1222","DpMUL",0),
("TG/2018/645"  , "ENG1222","DpMUL",0),
("TG/2017/415"  , "ENG1222","DpMUL",0),


("TG/2021/1011" , "ICT1212","DpICT",72), //kid
("TG/2021/1020" , "ICT1212","DpICT",78), //kid
("TG/2021/1014" , "ICT1212","DpICT",84),
("TG/2021/1024" , "ICT1212","DpICT",89),
("TG/2021/1027" , "ICT1212","DpICT",90),
("TG/2021/1031" , "ICT1212","DpICT",100),
("TG/2021/1036" , "ICT1212","DpICT",81),
("TG/2021/1042" , "ICT1212","DpICT",93),
("TG/2021/1045" , "ICT1212","DpICT",98),
("TG/2021/1050" , "ICT1212","DpICT",88),
("TG/2020/980"  , "ICT1212","DpICT",80),
("TG/2020/972"  , "ICT1212","DpICT",80),
("TG/2020/945"  , "ICT1212","DpICT",80),
("TG/2019/866"  , "ICT1212","DpICT",80),
("TG/2019/854"  , "ICT1212","DpICT",80),
("TG/2018/678"  , "ICT1212","DpICT",0),
("TG/2018/645"  , "ICT1212","DpICT",0),
("TG/2017/415"  , "ICT1212","DpICT",0);

CREATE TABLE
    Medical(
        MeidcalID VARCHAR(20),
        stuID VARCHAR(20),
        courseID VARCHAR(20),
        DepID VARCHAR(20),
        Submitdate DATE,
        Description VARCHAR(100),
        FOREIGN KEY(courseID) REFERENCES Course(courseID),
        FOREIGN KEY(stuID) REFERENCES Student(stuID),
        FOREIGN KEY(DepID) REFERENCES Department(DepID),
        PRIMARY KEY(MeidcalID));


INSERT INTO MEDICAL VALUES
("MED001","TG/2021/1014","ICT1233","DpICT","2023-07-20","UNA"),
("MED002","TG/2021/1036","ICT1233","DpICT","2023-05-21","BADA RIDENWA"),
("MED003","TG/2021/1011","ICT1212","DpICT","2023-05-11","OLUWA RIDENWA"),
("MED004","TG/2021/1020","ICT1212","DpICT","2023-03-29","PUKA RIDNEWA");
