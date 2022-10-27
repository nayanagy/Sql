CREATE DATABASE task3;

CREATE TABLE Student(slno int,Student_name varchar(40),usn varchar(34),college_name varchar(45),mbl_no bigint,Blood_group char,Dtae_of_birth date,stream varchar(30),college_fee long,Hostel_fee long);
SELECT * FROM Student;

INSERT INTO Student VALUES(1,'Anusha','4PM18CS004','PESITM',9654763387,'B','2000-11-04','CSE',80000,54000);
INSERT INTO Student VALUES(2,'Nayana','4PM18CS056','PESITM',9854763675,'B','2000-6-08','CSE',90000,54000);
INSERT INTO Student VALUES(3,'Smruthi','4PM18CS080','PESITM',7084763387,'A','2001-12-18','CSE',80000,0000);
INSERT INTO Student VALUES(4,'Nishitha','4PM18CS065','PESITM',9654763387,'B','2001-01-23','CSE',50000,54500);
INSERT INTO Student VALUES(5,'Pallavi','4PM18CS068','PESITM',6463476338,'A','2000-08-18','CSE',80000,00000);
INSERT INTO Student VALUES(6,'Swathi','4JN19IS087','JNNCE',9684763387,'o','1999-11-04','ISE',70000,55000);
INSERT INTO Student VALUES(7,'Soumya','4PM18EC004','PESITM',6364763387,'A','2000-04-04','ECE',45000,54000);
INSERT INTO Student VALUES(8,'Ramya','4PM18EC004','PESITM',8764763387,'B','1999-11-04','ECE',100000,53000);
INSERT INTO Student VALUES(9,'Manoj','4JN18IS004','JNNCE',7633873456,'o','2000-11-04','CSE',80000,54000);
INSERT INTO Student VALUES(10,'Sushmitha','4AT16Cv004','AIT',9865763387,'B','1998-11-04','Civil',45000,10000);
INSERT INTO Student VALUES(11,'Kavitha','4MT16EC064','MIT',6354763387,'B','1999-11-22','ECE',80000,5000);
INSERT INTO Student VALUES(12,'Rakshitha','4AT17Cv004','AIT',7054763387,'o','1998-06-19','Civil',70000,54000);
INSERT INTO Student VALUES(13,'Shravya','4MT17CS004','MIT',7067546754,'B','1998-11-04','CSE',80000,64000);
INSERT INTO Student VALUES(14,'Rani','4PM18CS078','PESITM',9654763377,'A','2001-12-04','CSE',90000,54000);
INSERT INTO Student VALUES(15,'Preetham','4PM18CS056','PESITM',9687763387,'B','1999-08-04','CSE',85000,54000);
INSERT INTO Student VALUES(16,'Puneeth','4PM18CS092','PESITM',9654764487,'A','1999-11-04','CSE',60000,54000);
INSERT INTO Student VALUES(17,'Sunil','4PM18CS053','PESITM',9987763387,'B','1999-11-04','CSE',88000,54000);
INSERT INTO Student VALUES(18,'Rohan','4PM18CS088','PESITM',9654798487,'A','2000-07-09','CSE',80000,54000);
INSERT INTO Student VALUES(19,'Shama','4PM18CS104','PESITM',6364763380,'B','2001-12-07','CSE',80000,000);
INSERT INTO Student VALUES(20,'Neetu','4PM18CS053','PESITM',9659863387,'B','2001-11-04','CSE',40000,0000);

/* sort the value by aecending order */
SELECT * FROM Student order by slno asc;

/* sort the value by descending order */
SELECT * FROM Student order by slno desc;

/* change column name*/
ALTER TABLE Student  RENAME COLUMN Dtae_of_birth to Date_of_birth;


/* Between operator */
SELECT * FROM Student WHERE slno between 10 and 20;
SELECT * FROM Student WHERE Student_name between 'A' and 's';

/*             OPERATORS       */
/*  1)  AND : If both conditions is true
			cond1		cond2		result
            true  (1)	true  (1)	true  (1)
            true  (1)	False (0)	false (0)
            False (0)	true  (1)	false (0)
            false (0)	false (0) 	false (0)    */
            
SELECT * FROM Student WHERE Student_name='Anusha'  AND slno=1;
SELECT * FROM Student WHERE Student_name='Sunil'  AND slno=17;
SELECT * FROM Student WHERE Student_name='Nayana'  AND college_name='PESITM';
SELECT * FROM Student WHERE mbl_no=9854763675 AND slno=2;
SELECT * FROM Student WHERE Student_name='Manoj'  AND Date_of_birth='2000-11-04';

/* 2) OR Operator: if one ofthe condition is true
			cond1		cond2		result
              1 		  1				1
              1			  0				1
              0			  1  			1
              0           0             0      */

SELECT * FROM Student WHERE Slno=1 or Student_name='Anusha';
SELECT * FROM Student WHERE Slno=2 or Student_name='Smurthi';
SELECT * FROM Student WHERE Student_name='Smurthi' or stream='ISE';
SELECT * FROM Student WHERE Student_name='Smruthi' or college_fee=000;
SELECT * FROM Student WHERE Blood_group='A' or Student_name='Vidya';

/*  IN : used to avoid the multiple use of OR operator  */
SELECT * FROM Student WHERE Slno in(1,2,4,5,20);
SELECT * FROM Student WHERE Student_name in('Anusha','Nayana','Puneeth');
SELECT * FROM Student WHERE stream in('CSE','ISE');
SELECT * FROM Student WHERE stream in('ECE','Civil');
SELECT * FROM Student WHERE Hostel_fee in(0000,54000);

/* NOT IN : doesnot display selected data of rows. */
SELECT * FROM Student WHERE Slno not in (21,23,7);
SELECT * FROM Student WHERE Student_name not in ('Anusha','Nayana');
SELECT * FROM Student WHERE college_name not in ('PESITM','JNNCE');
SELECT * FROM Student WHERE Blood_group not in ('A','B');
SELECT * FROM Student WHERE Hostel_fee not in (0000);

/*	****************	Aggregate Functions : to perform the calucalation on a column**********************  */
/*  1) COUNT :: Return no.of rows in a table or column */

SELECT COUNT(*) FROM Student;  /* print total no.of rows in table*/
SELECT COUNT(*) AS NO_of_rows FROM Student;/* change column name COUNT(*) into No_of_rows(means alias name:: using symbol As)*/
SELECT COUNT(college_name) AS No_of_colleges FROM Student;/*print total row of college_name */
SELECT COUNT(stream) AS No_of_stream FROM Student;/*print total row of stream */
SELECT COUNT('A') AS Noof_A_bloodgroup FROM Student;/*print total row of bloodgroup using data  */
SELECT COUNT(slno) AS total_row FROM Student;

/*   SUM  ::  Return all the sum of data of column **********   only for numeric data */

SELECT SUM(slno) FROM Student;/* print sum of all slno */
SELECT SUM(usn) FROM Student;
SELECT SUM(college_fee) FROM Student;  /* print total or sum of  college_fee */
SELECT SUM(Hostel_fee) FROM Student;  /* print sum of hostel fee */
SELECT SUM(Student_name) FROM Student;  /* it print 000 because Student_name is varchar .SUM is used only numeric digit*/

/*   AVG  :: Return the Average value from column  */
SELECT AVG(college_fee) FROM Student;  /* print average value of college fee */
SELECT AVG(Hostel_fee) FROM Student;  /* print average value of hostel fee */
SELECT AVG(slno) FROM Student;		/*  print average value of slno */ 
SELECT AVG(stream) FROM Student;  /* print 0 because stream is varchar .avg is only applicable for numeric values*/
SELECT AVG(mbl_no) FROM Student;

/* MAX :: It will return maximum value in the column  */

SELECT MAX(college_fee) FROM student;	/*print maximum value of college fee */
SELECT MAX(Hostel_fee) FROM student;    /*print maximum value of Hostel fee */
SELECT MAX(slno) FROM student;			/*print maximum value of slno */
SELECT MAX(mbl_no) FROM student;		/*print maximum value of Mobile number */
SELECT MAX(Student_name) FROM student;       /*****************************/
SELECT MAX(stream) FROM student;      /****************************/

/* MIN :: It will be Return min value from column   */

SELECT MIN(college_fee) FROM student;  /*  print minimum value of college fee */
SELECT MIN(Hostel_fee) FROM student;
SELECT MIN(slno) FROM student;
SELECT MIN(Student_name) FROM student;/* it print anusha because first row insert  */
SELECT MIN(stream) FROM student;	/* it print civil ************?????????????*/

/*  LIKE : used to perform the pattern matching(it can match any string of any length). 
			we will use % symbol  */

SELECT *FROM student WHERE  Student_name LIKE 'N%';/* it print data strating with N only */
SELECT *FROM student WHERE  usn LIKE '4PM%';
SELECT *FROM student WHERE  Student_name LIKE 'S%';
SELECT Student_name FROM student WHERE  Student_name LIKE 'P%';/* it print only perticular column & start with P */
SELECT *FROM student WHERE  Student_name LIKE '%h'; /* it print Last character end with h */
SELECT *FROM student WHERE  Student_name LIKE '%a'; /* it print last charecter end with a */
SELECT mbl_no FROM student WHERE  mbl_no LIKE '%87'; /* it print number ending with 87 */
SELECT *FROM student WHERE  Student_name LIKE '%a%'; /* it print any name contain char a */
SELECT *FROM student WHERE  Student_name LIKE 'S%a%'; /* it print name staring with S and it contain a and end it can be anything */


/* UPPER : it print all data in upper case.
it used only for char,and it used only for perticular column only */
SELECT upper(Student_name) FROM student;
SELECT upper(usn) FROM student;
SELECT upper(college_name) FROM student;
SELECT upper(Blood_group) FROM student;
SELECT upper(stream) FROM student;


/* LOWER : it print all data in LOWER case
it used only for char,and it used only for perticular column only */
SELECT LOWER(Student_name) FROM student;
SELECT LOWER(college_name) FROM student;
SELECT LOWER(stream) FROM student;
SELECT LOWER(Blood_group) FROM student;
SELECT LOWER(usn) FROM student;

/* CONCAT : it used to combine 2 or more columns (merge the data)*/
SELECT CONCAT(Student_name,stream) FROM student;
SELECT CONCAT(Student_name,stream) as together FROM student;
SELECT CONCAT(slno,Student_name) FROM student;/* join int and string also */
SELECT CONCAT(Student_name,usn) FROM student;
SELECT CONCAT(slno,Student_name,college_fee) FROM student;

/* Instr :(INString) will return the position of a single char from the string , 
			If it contains same multiple char it will return first occerence of that char.
			Position will start from 1  .*/
SELECT INSTR('SINCHANA','C') AS position; /* it print position of c and it also use any string it is not present in table also it use*/
SELECT INSTR('SINCHANAC','C') AS position; /* here c present 2 times but it print only firrst c position means print 1st occurence only */
SELECT INSTR('PuneethRajKumar','e') AS position;
SELECT INSTR('Nayana','a') AS position;
SELECT INSTR('Nishitha','h') AS position from student;/*it print 4 */

/* SUBSTR:  it print no.of char in a string 
	SELECT SUBSTR(string value,starting position, noOfCharecter)         */
SELECT SUBSTR('SINCHANA',4,3) AS position; /* here starting postion is 4 and no of char is 3 ( ans is cha) */
SELECT SUBSTR(Student_name,4,3) from student;
SELECT SUBSTR(usn,4,8) from student;
SELECT SUBSTR(college_name,4,4) from student;
SELECT SUBSTR(Student_name,1,3) from student;