CREATE TABLE foodItems(id int not null,restarunt_name varchar(40),name varchar(20),quantity int,price int, check(price>=45 AND price<=200));
SELECT * FROM foodItems;
INSERT INTO fooditems values(1,'Snvi','vegbiriyani',2,150);
INSERT INTO fooditems values(2,'Hive','Mocktails',3,150);
INSERT INTO fooditems values(3,'AnushaHotel','Shawarma',2,150);
INSERT INTO fooditems values(4,'Nisarga restarunt','vegbiriyani',2,200);

/* lock */
LOCK TABLE fooditems read;
/* it can not insert ,update,delet thevalue after lock the table */
INSERT INTO fooditems values(5,'AnushaHotel','Shawarma',2,150);
update fooditems SET name='Dosa' WHERE name='Shawarma';
update fooditems SET id=6 WHERE id=2;
update fooditems SET restarunt_name='Royal Orched' WHERE restarunt_name='Snvi';
DELETE from fooditems where id=1;

UNLOCK TABLE;

SELECT * FROM Fooditems limit 2;/* it will fetch first 2 rows */
SELECT * FROM Fooditems order by id desc limit 2;/* it will fetch last 2 rows */

SELECT * FROM Fooditems order by name desc limit 2;/* it will fetch last 2 rows */

/* GREATEST :*/
SELECT GREATEST(23,34,56,76,54,32,23);

/* DTAEDIFF */
SELECT datediff('2022-05-18','2001-05-18');

/* Dayname */
SELECT dayname('2000-11-4');

SELECT dayofyear('2022-11-01');

