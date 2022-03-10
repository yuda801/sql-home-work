#drop database school;
CREATE DATABASE school;
use school;

CREATE TABLE classes(
classNumber INT NOT NULL,
className VARCHAR(255),
classObjective VARCHAR(255),
classTeacher VARCHAR(255),
PRIMARY KEY(classNumber)
);

INSERT INTO classes(classNumber,className, classObjective)
VALUES
(1, 'A', 'Phisics'),
(2, 'B', 'English'),
(3, 'C', 'Hebrew');

CREATE TABLE teachers(
firstName VARCHAR(255),
lastName VARCHAR(255),
IDnumber INT,
classNumber INT,
PRIMARY KEY(IDnumber),
foreign key (classNumber) references classes(classNumber)
);
#drop table teachers;

INSERT INTO teachers(firstName, lastName, IDnumber, classNumber)
VALUES
('Teacher1', 'teacher1', 987654321, 2),
('Teacher2', 'teacher2', 876543219, 1),
('Teacher3', 'teacher3', 765432198, 3);

#drop table students;
CREATE TABLE students(
firstName VARCHAR(255),
lastName VARCHAR(255),
IDnumber INT,
classNum INT,
teacherID INT,
PRIMARY KEY(IDnumber),
FOREIGN KEY (classNum) references classes(classNumber),
FOREIGN KEY (teacherID) references teachers(IDnumber)
);

INSERT INTO students(firstName, lastName, IDnumber, classNum, teacherID)
VALUES
('Avi', 'Chen', 123456789, 1,987654321),
('Israel', 'Israeli', 234567891, 2,987654321),
('Moshe', 'Moshon', 345678912, 3, 876543219),
('Meir', 'Meiri', 456789123, 3, 876543219);

select * from students where teacherID = 987654321;
select * from teachers where classNumber = 1;








