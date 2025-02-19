CREATE DATABASE db_wed;
USE db_wed;

CREATE TABLE courses(
id INT PRIMARY KEY IDENTITY,
my_name VARCHAR (50) NOT NULL
);

CREATE TABLE student (
id INT PRIMARY KEY IDENTITY,
x_name VARCHAR (60),
course INT,
FOREIGN KEY (course) REFERENCES courses(id)
);

INSERT INTO courses VALUES ('HTML'), ('ADSE'), ('HDSE');

SELECT * FROM courses;

INSERT into student values('Zain',1),('Asad',2),('Omar',1);
INSERT into student VALUES ('Bilal', 2) , ('Hassan', 3);

SELECT * FROM student;

DELETE FROM courses where id=4;

SELECT x_name as StdName from student;

JOIN courses on courses.id = student.course;



