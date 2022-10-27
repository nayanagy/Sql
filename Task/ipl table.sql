CREATE DATABASE aug_22;

use aug_22;

CREATE TABLE ipl_teams(id_teams int, team_name varchar(20), venue varchar(20),opositin varchar(30), days varchar(20));
/* systax to fetch the data 
SELECT * FROM table_name; (*) indicates all columns from table*/

SELECT * FROM ipl_teams;
SELECT id_teams,venue FROM ipl_teams;

INSERT  INTO ipl_teams VALUES(1,'RCB','Bengaluru','Mumbai','Sunday');
INSERT  INTO ipl_teams VALUES(2,'CSK','chennai','Bangaluru','Monday');
INSERT  INTO ipl_teams(id_teams,venue) VALUES(3,'Bengaluru');
INSERT  INTO ipl_teams(opositin,days) VALUES('Mumbai','Sunday');
