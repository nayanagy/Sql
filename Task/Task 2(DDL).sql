CREATE DATABASE task2;
use task2;

CREATE TABLE pgdata(pg_name varchar(30),pg_location varchar(30),rent_per_month bigint,advance bigint,joining_date date,closing_time time,created_at timestamp,no_people_in_room int,wifi int,washing_machine int);
SELECT * FROM pgdata;

/* insert values for all cloumns */
INSERT INTO pgdata VALUES ("veena baskar pg","Rajajinagar",5500,2000,current_date(),current_time(),now(),4,1,1);
INSERT INTO pgdata VALUES ("veena pg","Rajajinagar",6500,2000,'2022-07-22','09:30:10',now(),4,1,1);
INSERT INTO pgdata VALUES ("kushi pg","Vijaynagar",7000,3000,'2022-08-01','10:00',now(),2,0,1);
INSERT INTO pgdata VALUES ("Hitu pg","Vijaynagar",5000,2000,'2021-09-22','09:30',now(),6,1,0);
INSERT INTO pgdata VALUES ("guru pg","Jooganhalli",6500,1000,'2022-08-22','10:00',now(),3,1,0);

/* insert values for only selected columns */
INSERT INTO pgdata(pg_name,pg_location,rent_per_month) VALUES ("anusha pg","BTM layout",4000);
INSERT INTO pgdata(pg_name,pg_location,rent_per_month,washing_machine,created_at) VALUES ("Deepika pg","Basavangudi",6000,0,now());

/* add new column */
ALTER TABLE pgdata ADD COLUMN slno int;

/* drop existing column */
ALTER TABLE pgdata DROP COLUMN slno;

/* reaname column name */
ALTER TABLE pgdata RENAME COLUMN rent_per_month to rent;

/* reanme table name */
RENAME TABLE pgdata to PG;
SELECT * FROM PG;

/* changeing datatype for exixting table */
ALTER TABLE PG MODIFY COLUMN advance int;

/* add default value to new column */
ALTER TABLE PG ADD COLUMN ratings int default 5;
