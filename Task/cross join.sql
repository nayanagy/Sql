CREATE TABLE a(id int);
 insert into a values (1), (2), (3), (4), (5), (6);
 select * from a;
 
 Create table c(id int );
 insert into c values (1), (2), (3), (4), (5), (6);
 select * from c;
 
 /* Syntax for inner join
	SELECT table1_name.coloumn_name,table2_name.coloumn_name from table1
    inner join table2 on tablename1.column_name=table2.coloumn_name;*/
    
    SELECT a.id,c.id from a inner join c on a.id=c.id
	SELECT a.id,c.id from a left join c on a.id=c.id;

    
 SELECT a.id as tablea,c.id as tablec from a inner join c on a.id=c.id;
 
 
 CREATE TABLE bank (b_id int primary key,b_name varchar (30)unique,location varchar(40),manager varchar(30));
INSERT INTO bank VALUES (101,'HDFC','BTM','Vinods');
INSERT INTO bank VALUES (102,'SBI','RajajiNagar','Afreen');
INSERT INTO bank VALUES (103,'Laxmichitfunds','Malleshwaram','Shrilaxmi');
INSERT INTO bank VALUES (104,'ICICI','JP Nagar','Pooja');
INSERT INTO bank VALUES (105,'Swissbank','Majestic','sahana');

CREATE TABLE customers (id int not null,c_name varchar (20)unique,b_id int,acc_type varchar (30),foreign key(b_id)references bank (b_id));
INSERT INTO customers VALUES (1,'Shubham',101,'savings');
INSERT INTO customers VALUES (2,'Kavitha',102,'current');
INSERT INTO customers VALUES (3,'Chaitra',101,'savings');
INSERT INTO customers VALUES (4,'Shashi',103,'zero account');

 SELECT bank.b_name,bank.location,customers.c_name,customers.acc_type from bank inner join  customers on bank.b_id=customers.id;
 
  CREATE TABLE banks (b_id int,b_name varchar (30)unique,location varchar(40),manager varchar(30));
INSERT INTO banks VALUES (1,'HDFC','BTM','Vinods');
INSERT INTO banks VALUES (2,'SBI','RajajiNagar','Afreen');
INSERT INTO banks VALUES (3,'Laxmichitfunds','Malleshwaram','Shrilaxmi');
INSERT INTO banks VALUES (4,'ICICI','JP Nagar','Pooja');
INSERT INTO banks VALUES (5,'Swissbank','Majestic','sahana');
SELECT * FROM banks;

CREATE TABLE customer (id int not null,c_name varchar (20)unique,b_id int,acc_type varchar (30),foreign key(b_id)references bank (b_id));
INSERT INTO customer VALUES (1,'Shubham',101,'savings');
INSERT INTO customer VALUES (2,'Kavitha',102,'current');
INSERT INTO customer VALUES (3,'Chaitra',101,'savings');
INSERT INTO customer VALUES (4,'Shashi',103,'zero account');

SELECT banks.b_name,banks.location,customer.c_name,customer.acc_type from banks inner join  customer on banks.b_id=customer.id;
SELECT banks.b_name,banks.location,customer.c_name,customer.acc_type from banks left outer join  customer on banks.b_id=customer.id;
SELECT banks.b_name,banks.location,customer.c_name,customer.acc_type from banks right outer join  customer on banks.b_id=customer.id;


/* Cross join :  it will give particiaon product from table */
Select banks.b_name,customer.c_name from banks,customer;