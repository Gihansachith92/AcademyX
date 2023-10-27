-- Create the StudentCA_Marks view

CREATE VIEW StudentCA_Marks AS
SELECT DISTINCT e.stuid, e.courseid, e.depid, (e.quiz1 + e.quiz2 + e.quiz3 + e.MidPractical + e.MidTheory + e.Assesments) / 5 AS `CA_Marks`
FROM exammarks e
INNER JOIN student s ON e.stuid = s.stuid
WHERE s.states != 'suspended';





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

