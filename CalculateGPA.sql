connect course table x gradePoint

    Create view papercut as
    SELECT x.stuid, x.courseid, x.depid, x.grade, x.Grade_Point, y.Credit , CONCAT(Grade_Point*Credit) as "result"
    FROM studentgradepoint as x
    INNER JOIN course as y ON x.courseid = y.courseid
    where stuid = "TG/2021/1036";
Query OK, 0 rows affected (0.01 sec)

mysql> select * from papercut;
+--------------+----------+-------+-------+-------------+--------+-------------------+
| stuid        | courseid | depid | grade | Grade_Point | Credit | result            |
+--------------+----------+-------+-------+-------------+--------+-------------------+
| TG/2021/1036 | TCS1212  | DpMUL | C+    | 2.3         |      2 | 4.6               |
| TG/2021/1036 | TMS1233  | DpET  | B+    | 3.3         |      3 | 9.899999999999999 |
| TG/2021/1036 | ICT1222  | DpICT | A+    | 4.0         |      2 | 8                 |
| TG/2021/1036 | ICT1233  | DpICT | A     | 4.0         |      3 | 12                |
| TG/2021/1036 | ICT1212  | DpICT | B     | 3.0         |      2 | 6                 |
+--------------+----------+-------+-------+-------------+--------+-------------------+

SELECT stuid, ROUND(sum(result)/19, 2)
    FROM papercut
    GROUP BY stuid
    ORDER BY ROUND(sum(result)/19, 2);
+--------------+--------------------------+
| stuid        | ROUND(sum(result)/19, 2) |
+--------------+--------------------------+
| TG/2021/1027 |                     1.03 |
| TG/2021/1020 |                     1.43 |
| TG/2019/854  |                      1.6 |
| TG/2021/1042 |                     1.63 |
| TG/2020/980  |                     1.66 |
| TG/2021/1014 |                     1.77 |
| TG/2021/1024 |                     2.02 |
| TG/2021/1036 |                     2.13 |
| TG/2021/1031 |                     2.46 |
| TG/2021/1045 |                     2.66 |
| TG/2020/945  |                     2.77 |
| TG/2020/972  |                     2.84 |
| TG/2019/866  |                     2.85 |
| TG/2021/1011 |                     3.03 |
| TG/2021/1050 |                     3.07 |
+--------------+--------------------------+


--1 

Create view GradeCreaditMulSGPA as
SELECT x.stuid, x.courseid, x.depid, x.grade, x.Grade_Point, y.Credit , CONCAT(Grade_Point*Credit) as "CreditMulSGPA"
FROM studentgradepoint as x
INNER JOIN course as y ON x.courseid = y.courseid;
 

--3 for gpa
Create view StudentSGPA AS
SELECT stuid, ROUND(sum(CreditMulSGPA)/19, 2) as "SGPA"
FROM GradeCreaditMulSGPA
GROUP BY stuid
ORDER BY ROUND(sum(CreditMulSGPA)/19, 2);


--For CGPA

Create view GradeCreaditMulCGPA as
SELECT x.stuid, x.courseid, x.depid, x.grade, x.Grade_Point, y.Credit , CONCAT(Grade_Point*Credit) as "CreditMulCGPA"
FROM studentgradepoint as x
INNER JOIN course as y ON x.courseid = y.courseid
where  x.courseid != "ENG1222";

Create view StudentCGPA AS
SELECT stuid, ROUND(sum(CreditMulCGPA)/19, 2) as "CGPA"
FROM GradeCreaditMulCGPA
GROUP BY stuid
ORDER BY ROUND(sum(CreditMulCGPA)/19, 2);