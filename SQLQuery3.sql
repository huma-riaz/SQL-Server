CREATE DATABASE  db_tuesday;
use db_tuesday;

CREATE TABLE courses(
id INT PRIMARY KEY IDENTITY,
my_name VARCHAR(50) NOT NULL
);

CREATE TABLE student(
id INT PRIMARY KEY IDENTITY,
u_name VARCHAR(100),
course INT,
FOREIGN KEY (course) REFERENCES courses(id)
);

INSERT INTO courses VALUES ('First'), ('Second'), ('Third');

SELECT * FROM courses;

INSERT INTO student VALUES ('Ali',1), ('Laiba',2), ('Saad',1);

INSERT INTO student VALUES ('Bilal',2), ('Kiran',1);

SELECT * FROM student;

DELETE FROM courses where id = 2;

SELECT u_name AS std_name FROM student;

JOIN courses on courses.id = student.course;

SELECT * FROM courses;
SELECT * FROM student;