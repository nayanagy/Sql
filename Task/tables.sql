CREATE TABLE Client_details(slno int,id int,order_no int,client_first_name varchar(30) not null,client_last_name varchar(30),online_payment boolean,address varchar(20),contact_no bigint unique,Created_on date,Created_at timestamp,primary key(id ,order_no ));
INSERT INTO Client_details VALUES(1,52,10,'Smruthi','B S ',true,'N R PURA',9876543423,'2022-03-16',now());
INSERT INTO Client_details VALUES(2,45,6,'Anusha','K M',true,'Chitradurga',9876508778,'2022-04-17',now());
INSERT INTO Client_details VALUES(3,54,12,'Nayana','G ',true,'Shimoga',9876508654,'2022-08-19',now());
INSERT INTO Client_details VALUES(4,55,16,'Anushree',' M',true,'Banglore',9876508754,'2022-08-21',now());
INSERT INTO Client_details VALUES(5,74,3,'Sanjana','S',true,'Banglore',9876678778,'2022-09-17',now());
INSERT INTO Client_details VALUES(6,52,8,'Pooja','N',true,'Hospet',9876508786,'2022-05-15',now());
INSERT INTO Client_details VALUES(7,46,9,'Puneeth','R',true,'Davangere',7076508778,'2022-06-18',now());
INSERT INTO Client_details VALUES(8,49,15,'Yash','N',true,'Mysore',7032508778,'2022-03-17',now());
INSERT INTO Client_details VALUES(9,63,2,'Kavitha','K M',true,'Chitradurga',9766508778,'2022-09-27',now());
INSERT INTO Client_details VALUES(10,53,1,'Raksha','L',true,'Haveri',9876508543,'2022-09-13',now());

SELECT * FROM Client_details order by slno asc;

create table Mall_details(slno int not null,m_name varchar(30) not null,location varchar(30) not null,contact_no bigint not null,no_of_floors int not null,no_of_shops int not null,AC boolean not null,elivator boolean not null ,no_Of_customers int not null,brands varchar(30) not null,primary key(m_name));
insert into Mall_details values(1,"lulu","bengaluru",988098976,5,20,true,true,123,"zudio");
insert into Mall_details values(2,"Mantri mall","bengaluru",988098976,4,40,true,true,143,"trends");
insert into Mall_details values(3,"Forum","bengaluru",988098976,5,20,true,true,123,"Peter england");
insert into Mall_details values(4,"orion","bengaluru",988098976,5,20,true,true,123,"Miniso");
insert into Mall_details values(5,"Garuda","bengaluru",988098976,5,20,true,true,123,"dnmx");
insert into Mall_details values(6,"GT word","bengaluru",988098976,5,20,true,true,123,"Max");
insert into Mall_details values(7,"gopalan","bengaluru",988098976,5,20,true,true,123,"Gucchi");
insert into Mall_details values(8,"CC mall","shivamoga",988098976,5,20,true,true,123,"teams");
insert into Mall_details values(9,"Mall of mysuru","Mysuru",988098976,5,20,true,true,123,"puma");
insert into Mall_details values(10,"Dmart","bengaluru",988098976,5,20,true,true,123,"nick");

CREATE  TABLE Shoppe_details(slno int,id int,order_no int,Shop_name varchar(30),Address varchar(30),home_delivery boolean,total bigint,expected_delivery date,contact_no bigint,foreign key(id ,order_no ) references clientdata(id,order_no));

INSERT INTO Shoppe_details VALUES(1,45,6,'Ganesh store','Shimoga',false,2000,curdate(),897654);
INSERT INTO Shoppe_details VALUES(2,52,10,'Dmart','Shimoga',true,5000,'2022-11-10',9127654);
INSERT INTO Shoppe_details VALUES(3,54,12,'More','Shimoga',false,7000,curdate(),8977654);
INSERT INTO Shoppe_details VALUES(4,55,16,'Venkateshwara','Shimoga',false,2000,curdate(),889654);
INSERT INTO Shoppe_details VALUES(5,74,3,'Prestig','ChitraDurga',false,2600,curdate(),897784);
INSERT INTO Shoppe_details VALUES(6,52,8,'Spar','Banglore',false,10000,curdate(),9987765);
INSERT INTO Shoppe_details VALUES(7,46,9,'Hello Super market','Mysore',true,3000,curdate(),7098654);
INSERT INTO Shoppe_details VALUES(8,49,15,'Balaji','Rajajinagar',true,4000,curdate(),897674);
INSERT INTO Shoppe_details VALUES(9,63,2,'VishalMart','Shimoga',true,6000,'2022-11-22',9902344);
INSERT INTO Shoppe_details VALUES(10,53,1,'SuperMarket','Banglor',true,8000,'2022-10-29',897654);

SELECT * FROM Shoppe_details;
SELECT * FROM Client_details;
SELECT * FROM Mall_details;
