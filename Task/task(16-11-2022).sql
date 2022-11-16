CREATE TABLE Patient_data(slNO int not null unique, Patient_Id varchar(20) not null unique,Patient_name varchar(30) , Age int, Gender varchar(10) , Air_Pollution int, Alcohol_use boolean, Dust_Allergy boolean, OccuPational_Hazards int,
Genetic_Risk int,chronic_Lung_Disease int,Balanced_Diet int,Obesity int,Smoking int,Passive_Smoker int,Chest_Pain int,Coughing_of_Blood int,Fatigue int,
Weight_Loss int,Shortness_of_Breath int,Wheezing int,Swallowing_Difficulty int,Clubbing_of_Finger_Nails int,Frequent_Cold int,Dry_Cough int,Snoring int,Level Varchar(20),
Hospital_name varchar(30) ,Hospital_Location varchar(30),NO_of_doctors int,Doctor_name varchar(40) ,Patient_address varchar(40),laboratory boolean,EMR boolean,consultent_fee bigint,Medical_shop boolean,
Scanning_center boolean,Operation_theator boolean,Help_disk int,no_of_tablets int);
SELECT * FROM Patient_data;

INSERT INTO Patient_data VALUES(1,"P01","Nayana",22,"F",23,1,1,20,3,4,5,8,4,4,2,7,5,3,1,4,5,2,4,1,2,"medium","ESI","Rajajinagar",23,"Ragvendra","Basvangudi",1,1,500,1,1,1,5,23);
INSERT INTO Patient_data VALUES(2,"P02","Nishitha",23,"F",00,0,1,10,4,4,5,8,5,4,6,7,5,3,0,4,0,2,4,0,2,"Low","Ramayya","Banglore",23,"Roopesh","Nagavar",1,0,700,1,0,1,5,15);
INSERT INTO Patient_data VALUES(3,"P03","Sana",24,"F",2,4,5,6,7,8,5,8,5,4,6,7,5,3,0,4,0,2,4,0,2,"Medium","Ramayya","Banglore",23,"Roopesh","Vijaynagr",1,0,700,1,1,1,5,25);
INSERT INTO Patient_data VALUES(4,"P04","Sahana",22,"F",00,0,1,10,4,4,5,8,5,4,6,7,5,3,0,4,0,2,4,0,2,"Low","Subbayaya","Shimoga",23,"Subarao","Hosdurga",1,0,300,1,1,1,8,5);
INSERT INTO Patient_data VALUES(5,"P05","Anusha",23,"F",30,0,1,10,4,6,5,8,5,4,6,8,5,3,0,4,0,3,4,0,2,"High","Max","Banglore",23,"Jagadeesh","Chitradurga",1,0,1000,1,0,1,5,25);
INSERT INTO Patient_data VALUES(6,"P06","Sushmitha",23,"F",26,0,1,20,4,6,5,8,5,7,6,8,5,3,0,4,0,3,4,0,2,"Medium","Najappa","Shimoga",23,"Raghu","Manglore",1,0,500,1,0,1,5,00);
INSERT INTO Patient_data VALUES(7,"P07","LaLitha",23,"F",20,0,1,10,4,6,5,8,5,4,6,8,5,3,0,4,0,3,4,0,2,"High","Max","Banglore",23,"Jagadeesh","Chitradurga",1,0,1000,1,0,1,5,25);
INSERT INTO Patient_data VALUES(8,"P08","Kavitha",23,"F",27,0,1,10,4,6,5,8,5,4,6,8,5,3,0,4,0,3,4,0,2,"Medium","Esi","Banglore",23,"yash","Mysore",1,0,1000,1,0,1,5,25);
INSERT INTO Patient_data VALUES(9,"P09","Raksha",23,"F",23,0,1,10,4,6,5,8,5,4,6,8,5,3,0,4,0,3,4,0,2,"Low","Rammayya","Banglore",23,"Ramesh","Ranibennur",1,0,1000,1,0,1,5,25);
INSERT INTO Patient_data VALUES(10,"P10","Sinchana",23,"F",24,0,1,10,4,6,5,8,5,4,6,8,5,3,0,4,0,3,4,0,2,"High","Shankar","Banglore",23,"nagaraj","Mysore",1,0,1000,1,0,1,5,25);
INSERT INTO Patient_data VALUES(11,"P11","Rakshit",22,"M",23,1,1,20,3,4,5,8,4,4,2,7,5,3,1,4,5,2,4,1,2,"medium","ESI","Rajajinagar",23,"Ragvendra","Basvangudi",1,1,500,1,1,1,5,23);
INSERT INTO Patient_data VALUES(12,"P12","Pradeep",23,"M",00,0,1,10,4,4,5,8,5,4,6,7,5,3,0,4,0,2,4,0,2,"Low","Ramayya","Banglore",23,"Roopesh","Nagavar",1,0,700,1,0,1,5,15);
INSERT INTO Patient_data VALUES(13,"P13","Sunil",24,"M",2,4,5,6,7,8,5,8,5,4,6,7,5,3,0,4,0,2,4,0,2,"Medium","Ramayya","Banglore",23,"Roopesh","Vijaynagr",1,0,700,1,1,1,5,25);
INSERT INTO Patient_data VALUES(14,"P14","Santosh",22,"M",00,0,1,10,4,4,5,8,5,4,6,7,5,3,0,4,0,2,4,0,2,"Low","Subbayaya","Shimoga",23,"Subarao","Hosdurga",1,0,300,1,1,1,8,5);
INSERT INTO Patient_data VALUES(15,"P15","Mohan",25,"M",30,0,1,10,4,6,5,8,5,4,6,8,5,3,0,4,0,3,4,0,2,"High","Max","Banglore",23,"Jagadeesh","Chitradurga",1,0,1000,1,0,1,5,25);
INSERT INTO Patient_data VALUES(16,"P16","Suresh",28,"M",26,0,1,20,4,6,5,8,5,7,6,8,5,3,0,4,0,3,4,0,2,"Medium","Najappa","Shimoga",23,"Raghu","Manglore",1,0,500,1,0,1,5,00);
INSERT INTO Patient_data VALUES(17,"P17","Pavan",29,"M",20,0,1,10,4,6,5,8,5,4,6,8,5,3,0,4,0,3,4,0,2,"High","Max","Banglore",23,"Jagadeesh","Chitradurga",1,0,1000,1,0,1,5,25);
INSERT INTO Patient_data VALUES(18,"P18","Darshan",30,"M",27,0,1,10,4,6,5,8,5,4,6,8,5,3,0,4,0,3,4,0,2,"Medium","Esi","Banglore",23,"yash","Mysore",1,0,1000,1,0,1,5,25);
INSERT INTO Patient_data VALUES(19,"P19","Rakesh",40,"M",23,0,1,10,4,6,5,8,5,4,6,8,5,3,0,4,0,3,4,0,2,"Low","Rammayya","Banglore",23,"Ramesh","Ranibennur",1,0,1000,1,0,1,5,25);
INSERT INTO Patient_data VALUES(20,"P20","Ashish",50,"M",24,0,1,10,4,6,5,8,5,4,6,8,5,3,0,4,0,3,4,0,2,"High","Shankar","Banglore",23,"nagaraj","Mysore",1,0,1000,1,0,1,5,25);

/* or */
SELECT * FROM Patient_data WHERE Patient_Name='rakesh'  or slno=5;
SELECT * FROM Patient_data WHERE Patient_Name='sana'  or slno=2 or gender="F";
SELECT * FROM Patient_data WHERE Hospital_Location='Banglore'  or Hospital_name="Max";
SELECT * FROM Patient_data WHERE slno=10  or Patient_Id="p02" ;

/* and*/
SELECT * FROM Patient_data WHERE Patient_Name='Anusha'  AND slno=5;
SELECT * FROM Patient_data WHERE Patient_Name='Nishitha'  AND slno=2 and gender="F";
SELECT * FROM Patient_data WHERE Hospital_Location='Banglore'  AND Hospital_name="ESI";
SELECT * FROM Patient_data WHERE slno=10  AND Patient_Id="p10" ;

/* in */
SELECT * FROM Patient_data WHERE Slno in(1,2,4,5,20);
SELECT * FROM Patient_data WHERE Patient_Id in("p01","p11","p08");
SELECT * FROM Patient_data WHERE Hospital_Location in("banglore","shimoga");
SELECT * FROM Patient_data WHERE Hospital_name in("max","esi");
SELECT * FROM Patient_data WHERE Help_disk in(5,7);

/* not in */
SELECT * FROM Patient_data WHERE Slno not in(1,2,4,5,20);
SELECT * FROM Patient_data WHERE Patient_Id not in("p01","p11","p08");
SELECT * FROM Patient_data WHERE Hospital_Location not in("banglore","shimoga");
SELECT * FROM Patient_data WHERE Hospital_name not in("max","esi");
SELECT * FROM Patient_data WHERE Help_disk not in(5,7);

/*between*/
SELECT * FROM Patient_data WHERE slno between 10 and 20;
SELECT * FROM Patient_data WHERE Patient_Id between "p10" and "P20";
SELECT * FROM Patient_data WHERE slno between 2 and 7;
SELECT * FROM Patient_data WHERE Patient_Id between "p11" and "p16";

/* order by */
SELECT * FROM Patient_data order by slno asc;
SELECT * FROM Patient_data order by slno desc;

/* group by */
SELECT slno,Patient_Id,Patient_Name, sum(consultent_fee) from Patient_data GROUP BY Hospital_name;
SELECT slno,Patient_Name, sum(consultent_fee) from Patient_data GROUP BY Patient_Id;
SELECT slno,Patient_Id,Patient_Name, sum(consultent_fee) from Patient_data GROUP BY Hospital_Location;

/* having */
SELECT slno,Patient_Id,Hospital_name, sum(consultent_fee) from Patient_data GROUP BY Hospital_Location HAVING Hospital_name="esi";
SELECT slno,Patient_Id,Patient_Name, sum(consultent_fee) from Patient_data GROUP BY Hospital_Location HAVING Patient_Name="Nishitha";
SELECT slno,Patient_Id,Patient_Name, sum(consultent_fee) from Patient_data GROUP BY Hospital_Location HAVING slno=2;

/* sum */
SELECT SUM(slno) FROM Patient_data;
SELECT SUM(Age) FROM Patient_data;
SELECT SUM(Air_Pollution) FROM Patient_data;
SELECT SUM(chronic_Lung_Disease) FROM Patient_data;
SELECT SUM(Shortness_of_Breath) FROM Patient_data;

/* count */
SELECT count(slno) FROM Patient_data;
SELECT count(Age) FROM Patient_data;
SELECT count(Air_Pollution) FROM Patient_data;
SELECT count(chronic_Lung_Disease) FROM Patient_data;
SELECT count(consultent_fee) FROM Patient_data;

/* max */
SELECT max(slno) FROM Patient_data;
SELECT max(Age) FROM Patient_data;
SELECT max(Air_Pollution) FROM Patient_data;
SELECT max(chronic_Lung_Disease) FROM Patient_data;
SELECT max(consultent_fee) FROM Patient_data;

/* min */
SELECT min(slno) FROM Patient_data;
SELECT min(Age) FROM Patient_data;
SELECT min(chronic_Lung_Disease) FROM Patient_data;
SELECT min(consultent_fee) FROM Patient_data;
SELECT min(Air_Pollution) FROM Patient_data;

/* avg */
SELECT avg(slno) FROM Patient_data;
SELECT avg(Age) FROM Patient_data;
SELECT avg(chronic_Lung_Disease) FROM Patient_data;
SELECT avg(consultent_fee) FROM Patient_data;
SELECT avg(Air_Pollution) FROM Patient_data;

CREATE TABLE HOSPITAL_DATA(slno int, Hospital_name varchar(30), Hospital_Location varchar(20),No_of_doctors int,no_of_nurse int, Provider_ID varchar(10) ,
City varchar(20) ,State varchar(30),ZIP_Code bigint,Phone_Number bigint,Hospital_Type varchar(20) ,Emergency_Services boolean,No_of_floors int,
ratings int,ambulance boolean,no_of_ambulance int,no_of_Patient_perday int,date date ,time timestamp,clean boolean,consultency_fee int);

SELECT * FROM hospital_data;
INSERT INTO hospital_data VALUES(1,"ESI","Rajajinagar",20,50,"PR01","banglore","karnataka",577324,987654367,"Teaching_hospital",1,5,4,1,4,50,'2022-11-16',now(),1,500);
INSERT INTO hospital_data VALUES(2,"max","basvangudi",10,30,"PR02","banglore","karnataka",577323,987654367,"Psychiatric_hospital",1,5,4,0,0,50,'2022-11-16',now(),1,700);
INSERT INTO hospital_data VALUES(3,"Rammaya","vijaynagr",5,10,"PR03","banglore","karnataka",577322,987654367,"Community_hospital",1,5,4,1,8,50,'2022-11-16',now(),1,800);
INSERT INTO hospital_data VALUES(4,"Sparsha","basveshvarnagar",20,15,"PR04","banglore","karnataka",577324,987654367,"children's_hospital",1,5,7,1,4,50,'2022-11-16',now(),1,900);
INSERT INTO hospital_data VALUES(5,"Sanjivini","basveshvarnagar",20,8,"PR05","shimoga","karnataka",577224,987654367,"Field_hospital",1,5,3,1,4,50,'2022-11-16',now(),1,1000);
INSERT INTO hospital_data VALUES(6,"Malnad","Rajajinagar",20,5,"PR06","banglore","shimoga",577224,987654367,"Teaching_hospital",1,5,2,1,4,50,'2022-11-16',now(),1,500);
INSERT INTO hospital_data VALUES(7,"SDM","Rajajinagar",20,10,"PR07","banglore","karnataka",577225,987654367,"Community_hospital",1,5,7,1,4,50,'2022-11-16',now(),1,100);
INSERT INTO hospital_data VALUES(8,"Adichunchanagiri","Rajajinagar",20,20,"PR08","banglore","karnataka",577524,987654367,"Teaching_hospital",1,5,5,1,4,50,'2022-11-16',now(),1,300);
INSERT INTO hospital_data VALUES(9,"Ashray","yalahanka",20,10,"PR09","banglore","karnataka",577333,987654367,"Psychiatric_hospital",1,5,4,1,4,50,'2022-11-16',now(),1,200);
INSERT INTO hospital_data VALUES(10,"veena nurseing home","Rajajinagar",2,00,"PR10","banglore","karnataka",577334,987654367,"children's_hospital",0,5,3,0,0,50,'2022-11-16',now(),1,50);
INSERT INTO hospital_data VALUES(11,"ESI","Rajajinagar",20,50,"PR11","banglore","karnataka",577324,987654367,"Teaching_hospital",1,5,4,1,4,50,'2022-11-16',now(),1,500);
INSERT INTO hospital_data VALUES(12,"max","basvangudi",10,30,"PR12","banglore","karnataka",577323,987654367,"Psychiatric_hospital",1,5,4,0,0,50,'2022-11-16',now(),1,700);
INSERT INTO hospital_data VALUES(13,"SDM","Rajajinagar",20,10,"PR13","banglore","karnataka",577225,987654367,"Community_hospital",1,5,7,1,4,50,'2022-11-16',now(),1,100);
INSERT INTO hospital_data VALUES(14,"Adichunchanagiri","Rajajinagar",20,20,"PR14","banglore","karnataka",577524,987654367,"Teaching_hospital",1,5,5,1,4,50,'2022-11-16',now(),1,300);
INSERT INTO hospital_data VALUES(15,"Ashray","yalahanka",20,10,"PR15","banglore","karnataka",577333,987654367,"Psychiatric_hospital",1,5,4,1,4,50,'2022-11-16',now(),1,200);
INSERT INTO hospital_data VALUES(16,"veena nurseing home","Rajajinagar",2,00,"PR16","banglore","karnataka",577334,987654367,"children's_hospital",0,5,3,0,0,50,'2022-11-16',now(),1,50);
INSERT INTO hospital_data VALUES(17,"Rammaya","vijaynagr",5,10,"PR17","banglore","karnataka",577322,987654367,"Community_hospital",1,5,4,1,8,50,'2022-11-16',now(),1,800);
INSERT INTO hospital_data VALUES(18,"Sparsha","basveshvarnagar",20,15,"PR18","banglore","karnataka",577324,987654367,"children's_hospital",1,5,7,1,4,50,'2022-11-16',now(),1,900);
INSERT INTO hospital_data VALUES(19,"Sanjivini","basveshvarnagar",20,8,"PR19","shimoga","karnataka",577224,987654367,"Field_hospital",1,5,3,1,4,50,'2022-11-16',now(),1,1000);
INSERT INTO hospital_data VALUES(20,"Malnad","Rajajinagar",20,5,"PR20","banglore","shimoga",577224,987654367,"Teaching_hospital",1,5,2,1,4,50,'2022-11-16',now(),1,500);

/* inner join */
SELECT Patient_data.slno as Patient_data,hospital_data.slno as hospital_data FROM  Patient_data inner join hospital_data  on Patient_data.slno=hospital_data.slno;

SELECT Patient_data.Hospital_name as Patient_data,hospital_data.Hospital_name as hospital_data FROM  Patient_data inner join hospital_data  on Patient_data.Hospital_name=hospital_data.Hospital_name;

/*left join */
SELECT Patient_data.Hospital_name as Patient_data,hospital_data.Hospital_name as hospital_data FROM Patient_data LEFT join hospital_data  on Patient_data.Hospital_name=hospital_data.Hospital_name;

/*right join */
SELECT Patient_data.Hospital_name as Patient_data,hospital_data.Hospital_name as hospital_data FROM Patient_data RIGHT join hospital_data  on Patient_data.Hospital_name=hospital_data.Hospital_name;

/*cross join */
select Patient_data.Hospital_name ,hospital_data.Hospital_name from Patient_data,hospital_data;

/*subquries */

SELECT Patient_address FROM Patient_data WHERE Hospital_name=(SELECT Hospital_name FROM hospital_data WHERE slno=2);
SELECT Patient_address FROM Patient_data WHERE Hospital_Location=(SELECT city FROM hospital_data WHERE slno=2);
