   -- Exam table creation

  CREATE TABLE Exam(
        ExamID VARCHAR(20),
        mid VARCHAR(20),
        final VARCHAR(20),
        marks VARCHAR(20),
        stuID VARCHAR(20),
        PRIMARY KEY(ExamID),
        FOREIGN KEY (stuID) REFERENCES Student(stuID)
         );




   -- admin table creation

     CREATE TABLE admin(
         adminID VARCHAR(20),
         AdminName VARCHAR(20),
         NIC INT,
         PRIMARY KEY(adminID),
         FOREIGN KEY (NIC) REFERENCES User(NIC)
         );


   -- Department table creation

     CREATE TABLE Department(
        DepID VARCHAR(20),
        name VARCHAR(30),
        PRIMARY KEY(DepID)
         );



         

INSERT INTO Student Values

("TG/2021/1011","proper",9032),
("TG/2021/1020","proper",7129),
("TG/2021/1014","proper",3485),
("TG/2021/1024","proper",6402),
("TG/2021/1027","proper",8973),
("TG/2021/1031","proper",5316),
("TG/2021/1036","proper",2657),
("TG/2021/1042","proper",4820),
("TG/2021/1045","proper",3901),
("TG/2021/1050","proper",8194),
("TG/2020/980","repeat",7265),
("TG/2020/972","repeat",1463),
("TG/2020/945","repeat",5738),
("TG/2019/866","repeat",9250),
("TG/2019/854","repeat",6709),
("TG/2018/678","suspended",2154),
("TG/2018/645","suspended",3496),
("TG/2017/415","suspended",6837) ;



INSERT INTO ExamMarks
      ( 85 , 65 , 70 , 0 , 65 , 0 , 60 , 20 , "TG/2021/1011" , "ENG1222","DpMUL"),
      ( 84 , 75 , 60 , 0 , 70 , 0 , 40 , 45 , "TG/2021/1020" , "ENG1222","DpMUL"),
      ( 60 , 70 , 65 , 0 , 70 , 0 , 55 , 60 , "TG/2021/1014" , "ENG1222","DpMUL"),
      ( 70 , 80 , 40 , 0 , 80 , 0 , 65 , 45 , "TG/2021/1024" , "ENG1222","DpMUL"),
      ( 80 , 85 , 45 , 0 , 65 , 0 , 55 , 50 , "TG/2021/1027" , "ENG1222","DpMUL"),
      ( 90 , 75 , 30 , 0 , 75 , 0 , 75 , 30 , "TG/2021/1031" , "ENG1222","DpMUL"),
      ( 65 , 70 , 55 , 0 , 20 , 0 , 65 , 45 , "TG/2021/1036" , "ENG1222","DpMUL"),
      ( 75 , 65 , 65 , 0 , 80 , 0 , 55 , 35 , "TG/2021/1042" , "ENG1222","DpMUL"),
      ( 70 , 60 , 55 , 0 , 85 , 0 , 90 , 10 , "TG/2021/1045" , "ENG1222","DpMUL"),
      ( 85 , 75 , 75 , 0 , 90 , 0 , 85 , 30 , "TG/2021/1050" , "ENG1222","DpMUL"),

      (  60, 55 , 65 , 0 , 55 , 0 , 75 , 50 , "TG/2020/980" ,"ENG1222","DpMUL"),
      (  60, 70 , 40 , 0 , 75 , 0 ,  60 , 55, "TG/2020/972", "ENG1222","DpMUL"),
      (  30, 65 , 45 , 0 , 60 , 0 , 80 , 40 , "TG/2020/945" , "ENG1222","DpMUL"),
      (  70 , 65 , 55 , 0 , 90 , 0 , 90 , 40 , "TG/2019/866", "ENG1222","DpMUL"),
      (  85 , 75 , 55 , 0 , 70 , 0 , 40 , 20 , "TG/2019/854", "ENG1222","DpMUL"),

      ( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/678"  , "ENG1222","DpMUL"),
      ( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/645"  , "ENG1222","DpMUL"),
      ( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/415"  , "ENG1222","DpMUL");



INSERT INTO ExamMarks
      ( 85 , 60 , 70 , 0 , 65 , 0 , 70 , 80 , "TG/2021/1011" , "ICT1212","DpICT"),
      ( 75 , 70 , 65 , 0 , 55 , 0 , 35 , 60 , "TG/2021/1020" , "ICT1212","DpICT"),
      ( 80 , 75 , 40 , 0 , 70 , 0 , 70 , 75 , "TG/2021/1014" , "ICT1212","DpICT"),
      ( 85 , 65 , 60 , 0 , 80 , 0 , 65 , 70 , "TG/2021/1024" , "ICT1212","DpICT"),
      ( 90 , 85 , 65 , 0 , 80 , 0 , 90 , 65 , "TG/2021/1027" , "ICT1212","DpICT"),
      ( 80 , 90 , 50 , 0 , 65 , 0 , 75 , 45 , "TG/2021/1031" , "ICT1212","DpICT"),
      ( 65 , 45 , 60 , 0 , 70 , 0 , 70 , 55 , "TG/2021/1036" , "ICT1212","DpICT"),
      ( 75 , 40 , 40 , 0 , 90 , 0 , 70 , 80 , "TG/2021/1042" , "ICT1212","DpICT"),
      ( 80 , 20 , 50 , 0 , 80 , 0 , 65 , 75 , "TG/2021/1045" , "ICT1212","DpICT"),
      ( 85 , 50 , 90 , 0 , 70 , 0 , 55 , 80 , "TG/2021/1050" , "ICT1212","DpICT"),

      ( 50 , 70 , 80 , 0 , 65 , 0 , 55 , 65 , "TG/2020/980"  , "ICT1212","DpICT"),
      ( 60 , 80 , 70 , 0 , 75 , 0 , 65 , 90 , "TG/2020/972"  , "ICT1212","DpICT"),
      ( 70 , 90 , 60 , 0 , 80 , 0 , 75 , 80 , "TG/2020/945"  , "ICT1212","DpICT"),
      ( 90 , 75 , 65 , 0 , 65 , 0 , 85 , 85 , "TG/2019/866"  , "ICT1212","DpICT"),
      ( 80 , 75 , 65 , 0 , 45 , 0 , 75 , 80 , "TG/2019/854"  , "ICT1212","DpICT"),

      ( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/678"  , "ICT1212","DpICT"),
      ( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2018/645"  , "ICT1212","DpICT"),
      ( 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , "TG/2017/415"  , "ICT1212","DpICT");




