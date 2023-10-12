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