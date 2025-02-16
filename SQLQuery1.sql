CREATE DATABASE db_huma;

USE db_huma;

CREATE TABLE users(
id int, 
username varchar(100),
useremail varchar(50),
userage int
);

INSERT INTO users 
(id, username, useremail, userage) VALUES 
(1, 'Huma' , 'riazhuma@gmail.com' , 19);

SELECT * from users;

INSERT INTO users VALUES (2, 'Hassan', 'hassanriaz@gmail.com', 20);

INSERT INTO users VALUES (3, 'Bilal' , 'bilal101riaz@gmail.com' , 22),
(4 , 'Kiran' , 'riazkiran@gmail.com' , 24),
(5 , 'Laiba' , 'laibamalik@gmail.com' , 20)

SELECT username FROM users;

SELECT username as MyName, useremail as MyEmail, userage as Myage from users ;

ALTER TABLE users ADD MyCity varchar(50);
ALTER TABLE users DROP COLUMN MyCity;

SELECT * from users;

UPDATE users SET username = 'Bilal Riaz' , useremail = 'bilalriaz10@gmail.com' where id = 3; 

ALTER TABLE users ADD usercity varchar(60);

DELETE from users where id = 5;

EXECUTE sp_rename 'users', 'myuser';
SELECT * from myuser;


