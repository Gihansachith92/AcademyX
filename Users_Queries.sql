--Admin - With All privileges with Grant Option for all the tables in the database
CREATE USER 'Admin'@'localhost' IDENTIFIED BY 'Ad1234';
GRANT ALL PRIVILEGES ON project TO 'Admin'@'localhost' WITH GRANT OPTION;



--Dean - With All privileges without Grant for all the tables in the database

CREATE USER 'Dean'@'localhost' IDENTIFIED BY 'De1234';
GRANT ALL PRIVILEGES ON project TO 'Dean'@'localhost';



--Lecturer – All privileges without Grant and user creation for all the tables in the database
CREATE USER 'Lecturer'@'localhost' IDENTIFIED BY 'Le1234';
GRANT SELECT, INSERT, UPDATE, DELETE ON project TO 'Lecturer'@'localhost';



--Technical Officer - Read, write and update permissions for attendance related tables/views
CREATE USER 'TechnicalOfficer'@'localhost' IDENTIFIED BY 'Te1234';
GRANT SELECT, INSERT, UPDATE ON TechnicalOfficer.attendance_eligibility TO 'TechnicalOfficer'@'localhost';



--Student - Read permission for final attendance and final marks/Grades tables/views
CREATE USER 'Student'@'localhost' IDENTIFIED BY 'St1234';
GRANT SELECT ON project.attendance_eligibility TO 'Student'@'localhost';
GRANT SELECT ON project.StudentFinal_Marks TO 'Student'@'localhost';
GRANT SELECT ON project.StudentGradePoint TO 'Student'@'localhost';
