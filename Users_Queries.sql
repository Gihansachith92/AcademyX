--Admin - With All privileges with Grant Option for all the tables in the database
CREATE USER 'Admin'@'localhost' IDENTIFIED BY 'Ad1234';
GRANT ALL PRIVILEGES ON AcademyX TO 'Admin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;


--Dean - With All privileges without Grant for all the tables in the database

CREATE USER 'Dean'@'localhost' IDENTIFIED BY 'De1234';
GRANT ALL PRIVILEGES ON AcademyX TO 'Dean'@'localhost';
FLUSH PRIVILEGES;


--Lecturer – All privileges without Grant and user creation for all the tables in the database
CREATE USER 'Lecturer'@'localhost' IDENTIFIED BY 'Le1234';
GRANT SELECT, INSERT, UPDATE, DELETE ON AcademyX TO 'Lecturer'@'localhost';

FLUSH PRIVILEGES;


--Technical Officer - Read, write and update permissions for attendance related tables/views
CREATE USER 'TechnicalOfficer'@'localhost' IDENTIFIED BY 'Te1234';
GRANT SELECT, INSERT, UPDATE ON TechnicalOfficer.attendance_eligibility TO 'TechnicalOfficer'@'localhost';

FLUSH PRIVILEGES;



--Student - Read permission for final attendance and final marks/Grades tables/views
CREATE USER 'student'@'localhost' IDENTIFIED BY 'St1234';
GRANT SELECT ON Academyx.attendance TO 'student'@'localhost';
GRANT SELECT ON Academyx.attendance_eligibility TO 'student'@'localhost';
GRANT SELECT ON AcademyX.exammarks TO 'student'@'localhost';
GRANT SELECT ON Academyx.studentfinal_marks TO 'student'@'localhost';
GRANT SELECT ON Academyx.studentgradepoint TO 'student'@'localhost';

FLUSH PRIVILEGES;
