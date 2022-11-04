CREATE TABLE CONTIENT_DETAIL(id int,name varchar(30),no_of_countries int,main_city varchar(30),population bigint,check(no_of_countries>=5 AND no_of_countries<=60));
SELECT * FROM CONTIENT_DETAIL;
INSERT into CONTIENT_DETAIL VALUES(1,'Africa',54,'Lagos',776000000);
INSERT into CONTIENT_DETAIL VALUES(2,'Antarctica',0,'McMurdostation',1258);/*check condition fail because no_of_countries is =0*/
INSERT into CONTIENT_DETAIL VALUES(3,'Asia',47,'Delhi',3674000000);
INSERT into CONTIENT_DETAIL VALUES(4,'Australia',14,'Camberra',31000000);
INSERT into CONTIENT_DETAIL VALUES(5,'Europe',43,'Amsterdam',342000000);
INSERT into CONTIENT_DETAIL VALUES(6,'North America',23,'Mexico',483000000);
INSERT into CONTIENT_DETAIL VALUES(7,'South America',12,'Buenos Aires',342000000);

/***REVERSE : rerese of a string*/
SELECT reverse(name) from CONTIENT_DETAIL;
SELECT reverse(no_of_countries) from CONTIENT_DETAIL;
SELECT reverse(Main_city) from CONTIENT_DETAIL;
SELECT reverse(population) from CONTIENT_DETAIL;
SELECT reverse(id) from CONTIENT_DETAIL;

/*LPAD */
SELECT lpad('New ',10,'Sagar') as Lpad;
SELECT lpad('Xworkz',18,'-Rajajinagar') as Lpad;
SELECT lpad('Mall',9,'Oroin');
SELECT lpad('HyperMarket',15,'Lulu');
SELECT lpad(name,20,'**')from CONTIENT_DETAIL;

/*RPAD*/
SELECT rpad('New ',10,'Sagar') as rpad;
SELECT rpad('Xworkz',18,'-Rajajinagar') as rpad;
SELECT rpad('Mall',9,'Oroin');
SELECT rpad('HyperMarket',15,'Lulu');
SELECT rpad(name,20,'**')from CONTIENT_DETAIL;

/*Limit*/
SELECT * FROM CONTIENT_DETAIL limit 2;
SELECT * FROM CONTIENT_DETAIL limit 3;
SELECT * FROM CONTIENT_DETAIL order by id desc limit 4;
SELECT * FROM CONTIENT_DETAIL order by id desc limit 2;
SELECT * FROM CONTIENT_DETAIL limit 4;

/* greatest*/
SELECT GREATEST(id) FROM CONTIENT_DETAIL;
SELECT GREATEST(1,2,56,789,456,899,543,8900);
SELECT GREATEST(1000090,2786547,56,789,456,899,543,8900);
SELECT GREATEST(17865,2098765,5667543,789,456,899,543,8900);
SELECT GREATEST(1766543,28776554,5689876,789,456,899,543,8900);

/* DTAEDIFF */
SELECT datediff('2022-05-18','2001-05-18');
SELECT datediff('2022-09-11','1998-09-11');
SELECT datediff('2022-05-25','1995-05-25');
SELECT datediff('2022-01-02','2001-01-02');
SELECT datediff('2022-05-27','2000-05-27');

/* Dayname */
SELECT dayname('2000-11-4');
SELECT dayname('2022-11-4');
SELECT dayname('2001-05-18');
SELECT dayname('1998-09-11');
SELECT dayname('1996-08-20');

/*day of year */
SELECT dayofyear('2022-11-01');
SELECT dayofyear('2022-11-04');
SELECT dayofyear('2001-05-18');
SELECT dayofyear('2022-12-01');
SELECT dayofyear('2023-01-01');

/* lock */
LOCK TABLE CONTIENT_DETAIL read;
UNLOCK TABLE;

/*Makedate*/
SELECT makedate(2022,200);

/*FORMAT*/
select FORMAT (56789.9876,2);
select FORMAT (5677865.9876,4);
select FORMAT (756789.987456,3);

/* DTAEADD*/
select  DATE_ADD('2022-11-03',interval 5 day);/* current date after 5 days */
select  DATE_ADD('2022-11-03 09:15:20',interval 5 minute);/*current time after 5 minute*/
select  DATE_ADD('2022-11-03 09:15:20',interval 1 quarter);/* 1 quarter is 3 months */
select  DATE_ADD('2022-11-03 09:15:20',interval 5 second);
select  DATE_ADD('2022-11-03 09:15:20',interval -5 day);
select  DATE_ADD('2022-11-03 09:15:20',interval -5 second);
select  DATE_ADD('2022-11-03 09:15:20',interval -1 quarter);
select  DATE_ADD('2022-11-03 09:15:20',interval -5 minute);
select  DATE_ADD('2022-11-03 09:15:20',interval 5 week);
select  DATE_ADD('2022-11-03 09:15:20',interval -5 week);
select  DATE_ADD('2022-11-03 09:15:20',interval 5 year);
select  DATE_ADD('2022-11-03 09:15:20',interval -5 year);
select  DATE_ADD('2022-11-03 09:15:20',interval 5 month);
select  DATE_ADD('2022-11-03 09:15:20',interval -5 month);
select  DATE_ADD('2022-11-03 09:15:20',interval 5 hour);
select  DATE_ADD('2022-11-03 09:15:20',interval -5 hour);

/* SET OERATURS :it is used to combain data from 2 tables
	1)UNION: combines the result set of 2 or more select quries and it will return unique values.
    A        B          UNIOIN RESULT
    1		 2				1
    3		 4				2
    4		 3				3
    4		 1				4
    
	2)UNIOIN ALL : */
    
    CREATE TABLE A(id int);
    INSERT INTO A VALUES(1),(3),(5),(4),(8),(9);
    
    CREATE TABLE B(ID INT);
    INSERT INTO B VALUES(1),(3),(5),(4),(8),(4),(7);
    
    SELECT * FROM A
    Union
    SELECT * FROM B;
    
/* union all */
SELECT * FROM A
Union all
SELECT * FROM B;

/* we can do n nu.of tables but datatype should be same */

SELECT id FROM A
Union 
SELECT id FROM B
Union 
SELECT id FROM CONTIENT_DETAIL;



