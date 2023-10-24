
      -- attendance table structure

      CREATE TABLE
    Attendance(
        stuID VARCHAR(20),
        courseID VARCHAR(20),
        DepID VARCHAR(20),
        percentage(%) INT,
        FOREIGN KEY (DepID) REFERENCES Department(DepID),
        FOREIGN KEY(stuID) REFERENCES Student(stuID),
        FOREIGN KEY(courseID) REFERENCES Student(courseID)
    );






INSERT INTO Attendance VALUES

( "TG/2021/1011" , "TCS1212" , "DpMUL" , 89),
( "TG/2021/1020" , "TCS1212" , "DpMUL" , 90),
( "TG/2021/1014" , "TCS1212" , "DpMUL" , 99),
( "TG/2021/1024" , "TCS1212" , "DpMUL" , 96),
( "TG/2021/1027" , "TCS1212" , "DpMUL" , 88),
( "TG/2021/1031" , "TCS1212" , "DpMUL" , 90),
( "TG/2021/1036" , "TCS1212" , "DpMUL" , 89),
( "TG/2021/1042" , "TCS1212" , "DpMUL" , 89),
( "TG/2021/1045" , "TCS1212" , "DpMUL" , 85),
( "TG/2021/1050" , "TCS1212" , "DpMUL" , 92),
( "TG/2020/980" , "TCS1212" , "DpMUL" , 80 ),
( "TG/2020/972" , "TCS1212" , "DpMUL" , 80 ),
( "TG/2020/945" , "TCS1212" , "DpMUL" , 80 ),
( "TG/2019/866" , "TCS1212" , "DpMUL" , 80 ),
( "TG/2019/854" , "TCS1212" , "DpMUL" , 80 ),
( "TG/2018/678" , "TCS1212" , "DpMUL" , 0 ),
( "TG/2018/645" , "TCS1212" , "DpMUL" , 0 ),
( "TG/2017/415" , "TCS1212" , "DpMUL" , 0 ),

( "TG/2021/1011" , "TMS1233" , "DpET" , 67), -- not enough
( "TG/2021/1020" , "TMS1233" , "DpET" , 87),
( "TG/2021/1014" , "TMS1233" , "DpET" , 98),
( "TG/2021/1024" , "TMS1233" , "DpET" , 90),
( "TG/2021/1027" , "TMS1233" , "DpET" , 98),
( "TG/2021/1031" , "TMS1233" , "DpET" , 87),
( "TG/2021/1036" , "TMS1233" , "DpET" , 90),
( "TG/2021/1042" , "TMS1233" , "DpET" , 98),
( "TG/2021/1045" , "TMS1233" , "DpET" , 99),
( "TG/2021/1050" , "TMS1233" , "DpET" , 87),
( "TG/2020/980" , "TMS1233" , "DpET" , 80 ),
( "TG/2020/972" , "TMS1233" , "DpET" , 80 ),
( "TG/2020/945" , "TMS1233" , "DpET" , 80 ),
( "TG/2019/866" , "TMS1233" , "DpET" , 80 ),
( "TG/2019/854" , "TMS1233" , "DpET" , 80 ),
( "TG/2018/678" , "TMS1233" , "DpET" , 0 ),
( "TG/2018/645" , "TMS1233" , "DpET" , 0 ),
( "TG/2017/415" , "TMS1233" , "DpET" , 0 ),


(  "TG/2021/1011" , "ICT1253" , "DpICT" , 80),
(  "TG/2021/1020" , "ICT1253" , "DpICT" , 90),
(  "TG/2021/1014" , "ICT1253" , "DpICT" , 99),
(  "TG/2021/1024" , "ICT1253" , "DpICT" , 87),
(  "TG/2021/1027" , "ICT1253" , "DpICT" , 98),
(  "TG/2021/1031" , "ICT1253" , "DpICT" , 88),
(  "TG/2021/1036" , "ICT1253" , "DpICT" , 80),
(  "TG/2021/1042" , "ICT1253" , "DpICT" , 91),
(  "TG/2021/1045" , "ICT1253" , "DpICT" , 93),
(  "TG/2021/1050" , "ICT1253" , "DpICT" , 85),
(  "TG/2020/980" , "ICT1253" , "DpICT" , 80 ),
(  "TG/2020/972" , "ICT1253" , "DpICT" , 80 ),
(  "TG/2020/945" , "ICT1253" , "DpICT" , 80 ),
(  "TG/2019/866" , "ICT1253" , "DpICT" , 80 ),
(  "TG/2019/854" , "ICT1253" , "DpICT" , 80 ),
( "TG/2018/678" , "ICT1253" , "DpICT" , 0 ),
( "TG/2018/645" , "ICT1253" , "DpICT" , 0 ),
( "TG/2017/415" , "ICT1253" , "DpICT" , 0 ),

( "TG/2021/1011" , "ICT1242" , "DpICT" , 80),
( "TG/2021/1020" , "ICT1242" , "DpICT" , 90),
(  "TG/2021/1014" , "ICT1242" , "DpICT" , 43), -- not enough
(  "TG/2021/1024" , "ICT1242" , "DpICT" , 98),
(  "TG/2021/1027" , "ICT1242" , "DpICT" , 95),
(  "TG/2021/1031" , "ICT1242" , "DpICT" , 83),
(  "TG/2021/1036" , "ICT1242" , "DpICT" , 80),
(  "TG/2021/1042" , "ICT1242" , "DpICT" , 97),
(  "TG/2021/1045" , "ICT1242" , "DpICT" , 96),
(  "TG/2021/1050" , "ICT1242" , "DpICT" , 87),
(  "TG/2020/980" , "ICT1242" , "DpICT" , 80 ),
(  "TG/2020/972" , "ICT1242" , "DpICT" , 80 ),
(  "TG/2020/945" , "ICT1242" , "DpICT" , 80 ),
( "TG/2019/866" , "ICT1242" , "DpICT" , 80 ),
( "TG/2019/854" , "ICT1242" , "DpICT" , 80 ),
( "TG/2018/678" , "ICT1242" , "DpICT" , 0 ),
( "TG/2018/645" , "ICT1242" , "DpICT" , 0 ),
( "TG/2017/415" , "ICT1242" , "DpICT" , 0 ),
