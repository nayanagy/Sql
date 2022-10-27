CREATE DATABASE task1;

use task1;

CREATE TABLE cloths(id int, brand varchar(20), size int, quality varchar(30), quantity int, categories varchar(30), price bigint, fiber varchar(20),color varchar(20),length int);
SELECT * FROM cloths;
INSERT INTO cloths values(1,'DNMX',28,'Good',3,'pant',800,'geans','Blue','46');
INSERT INTO cloths values(2,'TeamSpirit',30,'Good',1,'T-shirt',400,'cotton','Black','45');
INSERT INTO cloths values(3,'Lee',32,'Good',1,'pant',1800,'geans','Black','42');
INSERT INTO cloths values(4,'Rio',30,'Good',3,'Top',579,'Nilon','White','43');
INSERT INTO cloths values(5,'Avasa',34,'Good',6,'Kurtha',900,'cotton','Yellow','38');
INSERT INTO cloths values(6,'Puma',26,'Good',1,'SweetShirt',1500,'wool','White','45');
INSERT INTO cloths values(7,'Nike',24,'Good',5,'T-Shirt',900,'cotton','Blue','49');
INSERT INTO cloths(id,quality,categories,price) values(8,'bad','TOP',200);
INSERT INTO cloths(id,size,categories,price) values(9,28,'sharts',150);
INSERT INTO cloths(categories,price) values('tops',300);