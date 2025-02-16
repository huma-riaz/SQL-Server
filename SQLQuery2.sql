use db_huma;

CREATE TABLE std(
id INT PRIMARY KEY IDENTITY,
myname varchar(50) UNIQUE,
myemail varchar(60) NOT NULL, 
myage int check (myage > 15),
mycity varchar(40)
);

SELECT * FROM std;

INSERT INTO std
(myname,myemail,myage,mycity) VALUES
('Shahzaib','shahzaib@gmail.com',20,'Hyderabad'),
('Shayan','shayan@gmail.com',18,'Karachi'),
('Haris','haris@gmail.com',19,'Karachi'),
('Haseeb','haseeb@gmail.com',22,'Quetta'),
('A.Rehman','rehman@gmail.com',21,'Karachi'),
('Kamran','kamran@gmail.com',24,'Karachi'),
('Aliza Rafiq','alizarafiq@gmail.com',22,'Hydrabad'),
('Aliza Anwar','alizaanwar@gmail.com',21,'Karachi'),
('Huma Riaz','huma@gmail.com',20,'Karachi')