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

('TG/2021/1011','proper',9032),
('TG/2021/1020','proper',7129),
('TG/2021/1014','proper',3485),
('TG/2021/1024','proper',6402),
('TG/2021/1027','proper',8973),
('TG/2021/1031','proper',5316),
('TG/2021/1036','proper',2657),
('TG/2021/1042','proper',4820),
('TG/2021/1045','proper',3901),
('TG/2021/1050','proper',8194),
('TG/2020/980','repeat',7265),
('TG/2020/972','repeat',1463),
('TG/2020/945','repeat',5738),
('TG/2019/866','repeat',9250),
('TG/2019/854','repeat',6709),
('TG/2018/678','suspended',2154),
('TG/2018/645','suspended',3496),
('TG/2017/415','suspended',6837) ;

