USE db_huma;

CREATE TABLE myindex (
id INT ,
myname VARCHAR(50),
myemail VARCHAR (40),
myage INT
);

CREATE TABLE mybackup(
id INT ,
myname VARCHAR(50),
myemail VARCHAR (40),
myage INT
);

SELECT * FROM myindex;

CREATE INDEX id_index on myindex(id);
DROP INDEX id_index on myindex;
CREATE CLUSTERED INDEX cid_index on myindex(id);

SELECT * FROM mybackup;

INSERT INTO myindex VALUES (1, 'Huma', 'humariaz@gmail.com', 19);

