USE db_huma;

SELECT * FROM std;

SELECT DISTINCT(mycity) from std;

SELECT TOP 5 * FROM std;

SELECT TOP 20 * FROM std;

SELECT * INTO backup_user from std;

SELECT * FROM backup_user;


SELECT myname,myemail into new_backup FROM std;
SELECT * FROM new_backup;

SELECT count(mycity) FROM std GROUP BY mycity;

SELECT count(mycity) as MyCity FROM std GROUP BY mycity; 


