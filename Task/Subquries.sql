CREATE table bank_details(id int,bank_id int,bank_name varchar(30),place varchar(30),no_of_cust bigint,bank_total_balance bigint);

INSERT INTO bank_details VALUES(1,401,"SBI","BTM",300,500000);
INSERT INTO bank_details VALUES(2,402,"HDFC","Rajajinagar",200,600000);
INSERT INTO bank_details VALUES(3,403,"ICICI","JPNagar",250,400000);
INSERT INTO bank_details VALUES(4,404,"Axis","jaynagar",498,700000);
INSERT INTO bank_details VALUES(5,405,"SBI","MEJASTIC",380,480000);
INSERT INTO bank_details VALUES(6,406,"SBI","Kormangala",275,786590);
INSERT INTO bank_details VALUES(7,407,"Baroda","Vijaynagar",547,960000);
INSERT INTO bank_details VALUES(8,408,"UNION","Basvangudi",800,67546);
INSERT INTO bank_details VALUES(9,409,"SBI","Banshankari",400,87654);
INSERT INTO bank_details VALUES(10,410,"SBI","ElectronicCity",500,490000);


CREATE TABLE cust_details(id int, cust_name varchar(30),b_id int,c_location varchar(30),c_balance bigint,cust_id int,Primary Key(b_id,cust_id));

INSERT INTO cust_details Values(1,"Nayana",401,"Rajajinagar",3000,201);
INSERT INTO cust_details Values(2,"Nishitha",402,"BTM",2000,202);
INSERT INTO cust_details Values(3,"Namratha",403,"Vijaynagar",5000,203);
INSERT INTO cust_details Values(4,"Anusha",404,"Basavangudi",7000,204);
INSERT INTO cust_details Values(5,"Smruthi",405,"Yalahanka",4000,205);
INSERT INTO cust_details Values(6,"Kavitha",406,"Mejastic",3600,206);
INSERT INTO cust_details Values(7,"Aishwarya",407,"Vidyaranyapuram",4050,207);
INSERT INTO cust_details Values(8,"Raksha",408,"JPNagar",5500,208);
INSERT INTO cust_details Values(9,"Pallavi",409,"ElectronicCity",4750,209);
INSERT INTO cust_details Values(10,"Sana",410,"Hebbal",3890,210);


CREATE TABLE loan_details(id int,loan_type varchar(30),cust_id int,loan_amount bigint,b_id int,foreign key(b_id,cust_id) references cust_details(b_id,cust_id));

INSERT INTO loan_details VALUES(1,"Agriculture",201,235674,401);
INSERT INTO loan_details VALUES(2,"PersonalLoan",202,455674,402);
INSERT INTO loan_details VALUES(3,"EducationLoan",203,335674,403);
INSERT INTO loan_details VALUES(4,"BusinessLoan",204,535674,404);
INSERT INTO loan_details VALUES(5,"Agriculture",205,835674,405);
INSERT INTO loan_details VALUES(6,"Agriculture",206,237874,406);
INSERT INTO loan_details VALUES(7,"GoldLoan",207,2356546,407);
INSERT INTO loan_details VALUES(8,"Agriculture",208,23598,408);
INSERT INTO loan_details VALUES(9,"Agriculture",209,235454,409);
INSERT INTO loan_details VALUES(10,"BusinessLoan",210,278674,410);


SELECT * FROM bank_details;
SELECT * FROM cust_details;
SELECT* FROM loan_details;


/* subquries :quey in a qury
:always inner query will exicute first
:both the table has same column and same data 
	: if we want more than 1 row use in oerator */
SELECT bank_name FROM bank_details WHERE bank_id=(SELECT b_id FROM cust_details WHERE cust_id=201);
/* using in operator */
SELECT bank_name FROM bank_details WHERE bank_id in(SELECT b_id FROM cust_details WHERE cust_id in(201,202,203));

SELECT loan_type from loan_details where cust_id=(select cust_id from cust_details WHERE cust_name="nishitha");