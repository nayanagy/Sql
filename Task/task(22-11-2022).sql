CREATE TABLE textail_data(slno int not null unique,shop_name varchar(30) not null unique primary key,Shop_Owner varchar(30) not null unique,location varchar(30) not null unique ,no_Of_branch int ,
brand varchar(30) not null unique,color varchar(30) not null,type_of_cloth varchar(30) not null,gender varchar(20) not null,type_of_collection varchar(30) not null ,
price bigint not null,quantity int not null,quality boolean,online_payment boolean,type_Of_payment varchar(30) not null,categories varchar(30) not null,
pattren varchar(20) not null,factory varchar(30) not null, factory_location varchar(30) not null, factory_owner  varchar(30) not null, created_on date , created_at timestamp,check(price<=5000));

SELECT * FROM textail_data;
INSERT INTO textail_data VALUES(1,"Anu textail","Anusha","Chitradurga",1,"DNMX","White","geans","Men","Pant",2000,5,true,true,"Phone_pay","Kids","Skinfit","DNMX limited","London","Aarvee",current_date(),now());
INSERT INTO textail_data VALUES(2,"Smruthi textail","Smruthi","Shimoga",2,"TeamSpirit","Black","Cotton","Women","T-shirt",5000,7,true,false,"cash","girls","FullSleves","TaemSpirit limited","banglore","Ranishree",current_date(),now());
INSERT INTO textail_data VALUES(3,"Nayana textail","Nayana","Davangere",5,"Gucchi","Blue","wool","men","sweat-shirt",4000,6,true,true,"g_pay","Adults","FullSleves","Gucchi factory","NewDhelli","Gucchi",current_date(),now());
INSERT INTO textail_data VALUES(4,"Zudio","Marjolein van Brandwijk","RR nagar",1,"Zudio","yellow","Syntetic","girls","crop top",500,3,false,true,"Phone_pay","girls","top","Zudio factory","Banglore","Marjolein",current_date(),now());
INSERT INTO textail_data VALUES(5,"trends commercial","Puneeth","Shivaji nagar",1,"Avasa","Pink","Cotton","women","Kurthi",1000,3,true,false,"cash","girls","Casual kurthi","Reliance trends","NewDhelli","Akhilesh Prasad",current_date(),now());
INSERT INTO textail_data VALUES(6,"Venkateshwara textails","Sachin","basveshwar nagar",3,"lee","balck","geans","men","pant",1500,1,true,true,"G_pay","gents","AncKel","Lee cooper","london","cooper",current_date(),now());
INSERT INTO textail_data VALUES(7,"Suresh fabrics","Suresh","Mejastic",2,"HNM","red","shirt","kids","halfSleves",300,1,false,true,"phone_pay","gents","checks","HNM Factory","chennai","Anusha",current_date(),now());
INSERT INTO textail_data VALUES(8,"Brand factory","Shwetha","Tumkur",2,"max","white","Plazo","women","freesize",400,5,true,true,"cash","girls","Printed","Reliance","Ballary","Sunil",current_date(),now());
INSERT INTO textail_data VALUES(9,"Suresh textails","Spoorthi","mandya",1,"nike","black","pullover","men","Large",600,3,false,true,"phone_pay","boys","Plain","Reliance","hospet","nishitha",current_date(),now());
INSERT INTO textail_data VALUES(10,"Ramraj textails","Sanjana","hospet",2,"puma","blue","blazer","women","Medium",900,7,true,true,"cash","girls","Printed","Reliance","hosdurga","Deelip",current_date(),now());

/* and */
SELECT * FROM textail_data WHERE Shop_name='Anu textail'  AND slno=1;
SELECT Shop_Owner FROM textail_data WHERE Shop_name='smruthi textail'  AND location="shimoga";

/* or */
SELECT Shop_Owner FROM textail_data WHERE Shop_name='smruthi textail'  or location="shimoga";
SELECT Shop_Owner FROM textail_data WHERE Shop_name='smruthi textail'  or location="davangere";
SELECT * FROM textail_data WHERE Shop_name='smruthi textail' or location="bangalore";

/* in */
SELECT * FROM textail_data WHERE Slno in(1,2,4,8);

/* not in */
SELECT * FROM textail_data WHERE Slno not in(1,2,4,5);

/* between */
SELECT * FROM textail_data WHERE slno between 5 and 8;

/* order by */
SELECT * FROM textail_data order by slno asc;
SELECT * FROM textail_data order by slno desc;

/* sum */
SELECT SUM(price) FROM textail_data;

/* count */
SELECT count(price) FROM textail_data;

/* max */
SELECT max(price) FROM textail_data;

/*min*/
SELECT min(price) FROM textail_data;

/* avg */
SELECT avg(price) FROM textail_data;

/* group by */
SELECT slno,shop_name,brand, sum(price) from textail_data GROUP BY shop_name;

/* having */
SELECT slno,shop_name,brand,color, sum(price) from textail_data GROUP BY shop_name HAVING color="White";

Create table Person_Data(slno int not null unique,Person_name varchar(20) not null unique,Person_FatherName varchar(20) not null unique,Person_MotherName varchar(20) not null unique,current_location varchar(20) not null unique,
type_of_cloth varchar(30) not null unique,brand varchar(30) not null,shop_name  varchar(30) not null unique,shop_location varchar(20) not null unique,Aadhar_no bigint not null unique,mobileNo bigint,
homeAddress varchar(30)  not null unique, Company_name varchar(20) not null unique,Company_location varchar(20) not null unique,college_name varchar(30) not null,college_location varchar(40) not null,Employee_id varchar(40) not null unique,
Shop_Owner varchar(30) not null unique,online_payment boolean,Pancard boolean, created_on date , created_at timestamp,foreign key( shop_name) references textail_data(shop_name) );

select * from Person_Data;
insert into Person_Data values(1,"Kavitha","Ramesh","Sunitha","kormangla","Kurthi","Avasa","trends commercial","Rajajinagar",276586747,998776532,"mysore","brilio","kormangla","Mit","Mysore","ka233","Ranishree",true,true,current_date(),now());
insert into Person_Data values(2,"Lalitha","suresh","Mamatha","Rajajinagar","geans","dnmx","Anu textail","basveshwarnagar",346586747,9234776532,"badami","verzio","hsr Layout","bit","Davangere","la342","Sudeep",true,false,current_date(),now());
insert into Person_Data values(3,"Raksha","Arjun","Sumathi","nagarbhavi","top","Zudio","Zudio","rrnagar",43526786,87654245,"Haveri","Sapient","banglore","sgit","Ranibennur","ra345","Akhilesh",false,true,current_date(),now());
insert into Person_Data values(4,"Ayra","Yash","Radhika","j p nagar","shirt","gucchi","Venkateshwara textails","j p nagar ",7849838274,9897352728,"mandya","TCS","Bangalure","pes","mandya","ya564","Arjunreddy",true,true,current_date(),now());
insert into Person_Data values(5,"Sinchana","sushant","Ramya","mysore","Shorts","max","Brand factory","hospet",8765432,99345621,"hospet","pdit","mysore","sgit","hospet","sin455","Sidhart",false,true,current_date(),now());
insert into Person_Data values(6,"Pankaja","Raju","Sangeeta","hosdurga","T-shirt","Avasa","Smruthi textail","hosdurga",5654346,8965432,"hosdurga","wipro","ManythaTecPark","bdit","Chitradurga","hu8997","Deniem",true,true,current_date(),now());
insert into Person_Data values(7,"Anusha","Mahesh","Suma","Dabaspete","pullover","dnmx","Suresh fabrics","RR nagara",897543,9234456,"bidar","kyndrel","srs Layout","jnnce","Durga","ra345567","Rajesh",true,false,current_date(),now());
insert into Person_Data values(8,"Smurthi","Shekar","Sudha","Rajankunte","Blazer","Zudio","Ramraj textails","shimoga",655445,99765422,"Channagiri","ibm","tumkur","jmit","Davangre","njh789","Akshara",false,true,current_date(),now());
insert into Person_Data values(9,"nayana","Madhu","Suguna","Vijayanagar "," CropTop","gucchi","Suresh textails","vijaynagar ",87874736,983456754,"madhur","gyansys","Whitefield","pesitm","Shivamogga","nas567","Yash",true,true,current_date(),now());
insert into Person_Data values(10,"Aditya","Suraj","chaya","Malleshwaram"," SweatShirt","max","Nayana textail","honnali",98775645,54675786445,"N R pura","x-workz","Kadur","SIT","hospet","syi8997","Sidhant",false,true,current_date(),now());

/* add new column */
ALTER TABLE textail_data ADD COLUMN mobileno bigint;

/* reaname column name */
ALTER TABLE textail_data RENAME COLUMN mobileno to Pho_no;

/* changeing datatype for exixting table */
ALTER TABLE textail_data MODIFY COLUMN Pho_no int;


/* inner join */
SELECT textail_data.slno as textail_data,Person_Data.slno as Person_Data FROM  textail_data inner join Person_Data  on textail_data.slno=Person_Data.slno;

/*left join */
SELECT textail_data.slno as textail_data,Person_Data.slno as Person_Data FROM  textail_data left join Person_Data  on textail_data.slno=Person_Data.slno;

/* right join */
SELECT textail_data.slno as textail_data,Person_Data.slno as Person_Data FROM  textail_data right join Person_Data  on textail_data.slno=Person_Data.slno;

/*cross join */
select textail_data.Shop_name ,Person_Data.Shop_name from textail_data,Person_Data;
/*subquries */
SELECT factory FROM textail_data WHERE Shop_name=(SELECT Shop_name FROM Person_Data WHERE slno=2);

/* views:  */
CREATE view newdata as Select a.slno,a.Shop_name,b.Person_name from textail_data as a,Person_Data as b;
select * from newdata;
drop view newdata;

/*Left remove:: remove leading space*/
SELECT LTRIM(Shop_name) FROM textail_data;

/* Rightremove:: remove trailing space*/
SELECT RTRIM(Shop_name) FROM textail_data;

/*reverse*/
select reverse(factory) from textail_data;

/*lpad*/
select lpad(factory_location,10,"(**)") from textail_data;

/*rpad*/
select rpad(factory_location,10,"@@") from textail_data;

/*like*/
SELECT * FROM textail_data where Shop_name like 's%';
SELECT * FROM textail_data where Shop_name like '%a%';
SELECT * FROM textail_data where Shop_name like '%s';

SELECT * FROM textail_data order by slno asc limit 5;/* it will fetch first 5 rows */
SELECT * FROM textail_data order by slno desc limit 5;/* it will fetch last 5rows */

/* GREATEST :*/
SELECT GREATEST(23,34,56,76,54,32,23);

/* DTAEDIFF */
SELECT datediff('2022-11-22','2001-05-11');

/* Dayname */
SELECT dayname('2022-11-22');

SELECT date('2022-11-22');

SELECT dayofyear('2022-11-22');

SELECT makedate(2022,13);

SELECT date_add("2021-10-13, 19:16:00" ,interval 5 days) as interval;

select upper(Shop_name) from textail_data;
select lower(Shop_name) from textail_data;












