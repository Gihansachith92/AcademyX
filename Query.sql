-- Create the StudentCA_Marks view

CREATE VIEW StudentCA_Marks AS
SELECT DISTINCT e.stuid, e.courseid, e.depid, (e.quiz1 + e.quiz2 + e.quiz3 + e.MidPractical + e.MidTheory + e.Assesments) / 5 AS `CA_Marks`
FROM exammarks e
INNER JOIN student s ON e.stuid = s.stuid
WHERE s.states != 'suspended';
