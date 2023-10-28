



-- Create the StudentQuiz_Marks view
CREATE VIEW StudentQuiz_Marks AS
SELECT e.stuid, e.courseid, e.depid, 
        ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 AS `Five_Percent_Average_Quiz_Score`
FROM exammarks e
INNER JOIN student s ON e.stuid = s.stuid
WHERE s.states != 'suspended';



-- Create the StudentAssessment_Marks view with a 5% adjusted assessment mark
CREATE VIEW StudentAssessment_Marks AS
SELECT e.stuid, e.courseid, e.depid, 
    (e.Assesments * 0.05) AS `Adjusted_Assessment_Mark`
FROM exammarks e
INNER JOIN student s ON e.stuid = s.stuid
WHERE s.states != 'suspended';


-- Create the StudentMidterm_Marks view with 20% weighted MidPractical and MidTheory scores

CREATE VIEW StudentMidterm_Marks AS
SELECT e.stuid, e.courseid, e.depid, 
    ((e.MidTheory + e.MidPractical) * 0.20) AS `MidMark`
FROM exammarks e
INNER JOIN student s ON e.stuid = s.stuid
WHERE s.states != 'suspended';




-- Create the StudentCA_Marks view  level 1
CREATE VIEW StudentCA_Marks AS
SELECT e.stuid, e.courseid, e.depid,
             ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 AS `Quiz_Score` ,
             (e.Assesments * 0.05) AS `Assessment_Mark` ,
             ((e.MidTheory + e.MidPractical) * 0.20) AS `MidMark`
     FROM exammarks e
     INNER JOIN student s ON e.stuid = s.stuid
     WHERE s.states != 'suspended';


-- Create the StudentCA_Marks view  level 2
SELECT e.stuid, e.courseid, e.depid,
       ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 AS `Quiz_Score`,
       (e.Assesments * 0.05) AS `Assessment_Mark`,
       ((e.MidTheory + e.MidPractical) * 0.20) AS `MidMark`,
       ((
           ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 +
           (e.Assesments * 0.05) +
           ((e.MidTheory + e.MidPractical) * 0.20)
       )) as `CA_Marks`
FROM exammarks e
INNER JOIN student s ON e.stuid = s.stuid
WHERE s.states != 'suspended';




-- Create the StudentCA_Marks view 
CREATE VIEW StudentCA_Marks AS
SELECT e.stuid, e.courseid, e.depid,
    ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 AS `Quiz_Score`,
    (e.Assesments * 0.05) AS `Assessment_Mark`,
    ((e.MidTheory + e.MidPractical) * 0.20) AS `MidMark`,
    (
        ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 +
        (e.Assesments * 0.05) +
        ((e.MidTheory + e.MidPractical) * 0.20)
    ) as `CA_Marks`,
    CASE
        WHEN (
            ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 +
            (e.Assesments * 0.05) +
            ((e.MidTheory + e.MidPractical) * 0.20)
        ) >= 15 THEN 'Eligible'
        ELSE 'Not_Eligible'
    END AS `Eligibility_Status`
FROM exammarks e
INNER JOIN student s ON e.stuid = s.stuid
WHERE s.states != 'suspended';



-- Create the StudentEnd_Marks view with a 70% adjusted assessment mark
CREATE VIEW StudentEnd_Marks AS
SELECT e.stuid, e.courseid, e.depid, 
    ((e.EndPractical  + e.EndTheory ) * 0.70) AS `EndMark`
FROM exammarks e
INNER JOIN student s ON e.stuid = s.stuid
WHERE s.states != 'suspended';




-- Create the StudentFinal_Marks view
-- create view StudentFinal_Marks AS
-- select c.stuid, c.courseid, c.depid, (c.CA_Marks + e.EndMark) as FinalMark
-- from studentca_marks c, StudentEnd_Marks e 
-- where c.Eligibility_Status = 'Eligible' and 
-- c.stuid = e.stuid and
-- c.courseid = e.courseid and
-- c.depid = e.depid;

-- Create the StudentFinal_Marks view
create view StudentFinal_Marks AS
select c.stuid, c.courseid, c.depid, (c.CA_Marks + e.EndMark) as FinalMark
from studentca_marks c, StudentEnd_Marks e , attendance_eligibility a
where c.Eligibility_Status = 'Eligible' and a.Eligiblity = 'Eligible' and
c.stuid = e.stuid and
c.courseid = e.courseid and
c.depid = e.depid and
a.stuid = e.stuid and
a.stuid = c.stuid and
a.courseid = e.courseid and
a.courseid = c.courseid ;




-- create the StudentGradePoint view
create view StudentGradePoint AS 
select  stuid, courseid, depid ,
   case
      when(FinalMark>= 85 and FinalMark<= 100) then 'A+'
      when(FinalMark>= 80 and FinalMark<= 84.999999) then 'A'
      when(FinalMark>= 75 and FinalMark<= 79.999999) then 'A-'
      when(FinalMark>= 70 and FinalMark<= 74.999999) then 'B+'
      when(FinalMark>= 65 and FinalMark<= 69.999999) then 'B'
      when(FinalMark>= 60 and FinalMark<= 64.999999) then 'B-'
      when(FinalMark>= 55 and FinalMark<= 59.999999) then 'C+'
      when(FinalMark>= 50 and FinalMark<= 54.999999) then 'C'
      when(FinalMark>= 45 and FinalMark<= 49.999999) then 'C-'
      when(FinalMark>= 40 and FinalMark<= 44.999999) then 'D+'
      when(FinalMark>= 35 and FinalMark<= 39.999999) then 'D'
      when(FinalMark>= 0 and FinalMark<= 34.999999) then 'F'
      ELSE 'Not_Valid'
   end   AS 'Grade' ,

  case
      when(FinalMark>= 85 and FinalMark<= 100) then 4.0
      when(FinalMark>= 80 and FinalMark<= 84.999999) then 4.0
      when(FinalMark>= 75 and FinalMark<= 79.999999) then 3.7
      when(FinalMark>= 70 and FinalMark<= 74.999999) then 3.3
      when(FinalMark>= 65 and FinalMark<= 69.999999) then 3.0
      when(FinalMark>= 60 and FinalMark<= 64.999999) then 2.7
      when(FinalMark>= 55 and FinalMark<= 59.999999) then 2.3
      when(FinalMark>= 50 and FinalMark<= 54.999999) then 2.0
      when(FinalMark>= 45 and FinalMark<= 49.999999) then 1.7
      when(FinalMark>= 40 and FinalMark<= 44.999999) then 1.3
      when(FinalMark>= 35 and FinalMark<= 39.999999) then 1.0
      when(FinalMark>= 0 and FinalMark<= 34.999999) then 0
      ELSE 'Not_Valid'
   end   AS 'Grade_Point'

from studentfinal_marks;


