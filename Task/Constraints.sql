/***********CONSTRAINTS***********/
/*NOT NULL */
CREATE TABLE t20worldcup(id int not null,name varchar(20) not null,opponent varchar(20),venue varchar(20),captain varchar(20));
SELECT * FROM t20worldcup;
ALTER TABLE t20worldcup RENAME column name to team_name;
INSERT INTO t20worldcup VALUES(1,'INDIA','Australia','Sydney','ROHIT');
INSERT INTO t20worldcup(id,team_name,opponent, captain) VALUES(2,'NewZealand','Southafrica','Williamson');

/* UNIQUE  */
CREATE TABLE crecket(id int not null,team_name varchar(20) unique,opponent varchar(20),captain varchar(20));
INSERT INTO crecket VALUES(1,'INDIA','Australia','ROHIT');
INSERT INTO crecket VALUES(2,null,'Pakisthan','ROHIT');
INSERT INTO crecket VALUES(3,'NewZealand','Southafrica','Williom');
INSERT INTO crecket VALUES(4,'srilanka','Ingland','Buttler');
SELECT * FROM crecket;


CREATE TABLE olympics(id int not null,games_name varchar(20) unique,no_of_medals int unique,country varchar(20) unique,no_of_players int not null);
SELECT * FROM olympics;
INSERT INTO olympics VALUES(1,'Crecket',4,'INDIA',11);
INSERT INTO olympics VALUES(2,'HOKEY',3,'NewZealand',7);
INSERT INTO olympics VALUES(1,null,0,null,0);
INSERT INTO olympics VALUES(1,'BallBatmitten',5,null,2);

/* CHECK */
CREATE TABLE serials(id int not null unique,name varchar(20) unique,channels varchar(20),no_of_eoisodes int, check(no_of_eoisodes>=1000));
SELECT*FROM serials;
INSERT INTO serials VALUES(1,'Agnisakshi','ColorsKannada',1050);
INSERT INTO serials VALUES(2,'Gattimela','ZeeKannada',1000);
INSERT INTO serials VALUES(3,'Olavina Nildana','ColorsKannada',200);/* it will show error because check condition  we enter >1000 so here it is 200 */ 
INSERT INTO serials VALUES(4,'Kamali','Zeekannada',1500);

/* Distinct */
SELECT DISTINCT (channels) FROM serials;/* it will print only unique values or remove duplicate values */

