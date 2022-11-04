/*****Primary key *******/
CREATE TABLE ClientData(slno int,id int,order_no int,client_first_name varchar(30) not null,client_last_name varchar(30),online_payment boolean,address varchar(20),contact_no bigint unique,Created_on date,Created_at timestamp,primary key(id ,order_no ));
SELECT * FROM ClientData;
INSERT INTO ClientData VALUES(1,52,10,'Smruthi','B S ',true,'N R PURA',9876543423,'2022-03-16',now());
INSERT INTO ClientData VALUES(2,45,6,'Anusha','K M',true,'Chitradurga',9876508778,'2022-04-17',now());
INSERT INTO ClientData VALUES(3,54,12,'Nayana','G ',true,'Shimoga',9876508654,'2022-08-19',now());
INSERT INTO ClientData VALUES(4,55,16,'Anushree',' M',true,'Banglore',9876508754,'2022-08-21',now());
INSERT INTO ClientData VALUES(5,74,3,'Sanjana','S',true,'Banglore',9876678778,'2022-09-17',now());
INSERT INTO ClientData VALUES(6,52,8,'Pooja','N',true,'Hospet',9876508786,'2022-05-15',now());
INSERT INTO ClientData VALUES(7,46,9,'Puneeth','R',true,'Davangere',7076508778,'2022-06-18',now());
INSERT INTO ClientData VALUES(8,49,15,'Yash','N',true,'Mysore',7032508778,'2022-03-17',now());
INSERT INTO ClientData VALUES(9,63,2,'Kavitha','K M',true,'Chitradurga',9766508778,'2022-09-27',now());
INSERT INTO ClientData VALUES(10,53,1,'Raksha','L',true,'Haveri',9876508543,'2022-09-13',now());

SELECT * FROM clientdata order by slno asc;

/************* forign key***********************/
CREATE  TABLE ShopperData(slno int,id int,order_no int,Shop_name varchar(30),Address varchar(30),home_delivery boolean,total bigint,expected_delivery date,contact_no bigint,foreign key(id ,order_no ) references clientdata(id,order_no));

INSERT INTO ShopperData VALUES(1,45,6,'Ganesh store','Shimoga',false,2000,curdate(),897654);
INSERT INTO ShopperData VALUES(2,52,10,'Dmart','Shimoga',true,5000,'2022-11-10',9127654);
INSERT INTO ShopperData VALUES(3,54,12,'More','Shimoga',false,7000,curdate(),8977654);
INSERT INTO ShopperData VALUES(4,55,16,'Venkateshwara','Shimoga',false,2000,curdate(),889654);
INSERT INTO ShopperData VALUES(5,74,3,'Prestig','ChitraDurga',false,2600,curdate(),897784);
INSERT INTO ShopperData VALUES(6,52,8,'Spar','Banglore',false,10000,curdate(),9987765);
INSERT INTO ShopperData VALUES(7,46,9,'Hello Super market','Mysore',true,3000,curdate(),7098654);
INSERT INTO ShopperData VALUES(8,49,15,'Balaji','Rajajinagar',true,4000,curdate(),897674);
INSERT INTO ShopperData VALUES(9,63,2,'VishalMart','Shimoga',true,6000,'2022-11-22',9902344);
INSERT INTO ShopperData VALUES(10,53,1,'SuperMarket','Banglor',true,8000,'2022-10-29',897654);

SELECT * FROM shopperdata;

/*Left remove:: remove leading space*/
SELECT LTRIM(Shop_name) FROM shopperdata;
SELECT LTRIM(Address) FROM shopperdata;
SELECT LTRIM(contact_no) FROM shopperdata;
SELECT LTRIM(order_no) FROM shopperdata;
SELECT LTRIM(id) FROM shopperdata;
SELECT LTRIM(total) FROM shopperdata;
SELECT LTRIM(client_last_name) FROM clientdata;
SELECT LTRIM(address) FROM clientdata;
SELECT LTRIM(client_first_name) FROM clientdata;

/* Rightremove:: remove trailing space*/
SELECT RTRIM(Shop_name) FROM shopperdata;
SELECT RTRIM(Address) FROM shopperdata;
SELECT RTRIM(contact_no) FROM shopperdata;
SELECT RTRIM(order_no) FROM shopperdata;
SELECT RTRIM(id) FROM shopperdata;
SELECT RTRIM(total) FROM shopperdata;
SELECT RTRIM(client_last_name) FROM clientdata;
SELECT RTRIM(address) FROM clientdata;
SELECT RTRIM(client_first_name) FROM clientdata;
