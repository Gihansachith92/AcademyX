   -- Exam table creation

  CREATE TABLE Exam(
        ExamID VARCHAR(10),
        mid VARCHAR(10),
        final VARCHAR(10),
        marks VARCHAR(10),
        stuID VARCHAR(10),
        PRIMARY KEY(ExamID),
        FOREIGN KEY (stuID) REFERENCES Student(stuID)
         );




   -- admin table creation

     CREATE TABLE admin(
         adminID VARCHAR(5),
         AdminName VARCHAR(20),
         NIC INT,
         PRIMARY KEY(adminID),
         FOREIGN KEY (NIC) REFERENCES User(NIC)
         );


   -- Department table creation

     CREATE TABLE Department(
        DepID VARCHAR(5) ,
        name VARCHAR(20),
        PRIMARY KEY(DepID)
         );



         

INSERT INTO Student Values

('TG/21/1011','proper',9032),
('TG/21/1014','proper',3485),
('TG/21/1020','proper',7129),
('TG/21/1024','proper',6402),
('TG/21/1027','proper',8973),
('TG/21/1031','proper',5316),
('TG/21/1036','proper',2657),
('TG/21/1042','proper',4820),
('TG/21/1045','proper',3901),
('TG/21/1050','proper',8194),
('TG/20/980','repeat',7265),
('TG/20/972','repeat',1463),
('TG/20/945','repeat',5738),
('TG/19/866','repeat',9250),
('TG/19/854','repeat',6709),
('TG/18/678','suspended',2154),
('TG/18/645','suspended',3496),
('TG/17/415','suspended',6837) ;

