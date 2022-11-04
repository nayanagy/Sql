/* duplicate the table*/
CREATE TABLE Student_duplicate AS SELECT * FROM student;
SELECT * FROM student_duplicate;

/* GROUP BY*/
SELECT * FROM student_duplicate group by college_name;

/* gruop by using  only aggrigate function */
/* it print selected columns and sum of seleted row using grrupby means it sum only similar value by the group by */
SELECT slno,Stream,usn, sum(Hostel_fee) from student_duplicate GROUP BY college_name;

/* Group by using sum aggrigate function */
SELECT slno,Stream,usn, sum(college_fee) from student_duplicate GROUP BY college_name;

/* Group by using Max aggrigate function */
SELECT slno,Stream,usn, max(college_fee) from student_duplicate GROUP BY college_name;

/* Group by using min aggrigate function */
SELECT slno,Stream,usn, min(college_fee) from student_duplicate GROUP BY college_name;

/* Group by using avg aggrigate function */
SELECT slno,Stream,usn, avg(college_fee) from student_duplicate GROUP BY college_name;

/* Group by using count aggrigate function */
SELECT slno,Stream,usn, count(college_fee) from student_duplicate GROUP BY college_name;

/*///////////// HAVING ///////////////*/
/* HAVING is use after GROUP BY function */
SELECT slno,Stream,usn, count(college_fee) from student_duplicate GROUP BY college_name having stream='CSE';

SELECT slno,Stream,usn, count(college_fee) from student_duplicate GROUP BY college_name having college_name='pesitm' or stream='civil';

SELECT slno,Stream,usn, avg(college_fee) from student_duplicate GROUP BY college_name HAVING college_name='MIT';

SELECT slno,Stream,usn, min(college_fee) from student_duplicate GROUP BY college_name HAVING stream='CSE';

SELECT slno,Stream,usn, max(college_fee) from student_duplicate GROUP BY college_name HAVING stream='Ise';

SELECT slno,Stream,usn, sum(college_fee) from student_duplicate GROUP BY college_name HAVING college_name='PESITM';

/***REVERSE : rerese of a string*/
SELECT reverse(student_name) from student_duplicate;

/*PADDING : adding string to existing string*/
/*lpad: adding any char to left of the original string*/
SELECT lpad('Xworkz',10,'center');/* 10 is length of total string it will add only final length should be 10 */

SELECT LPAD('ANUSHA',9,'km');/*   kmkanusha  */
SELECT LPAD('ANUSHA',4,'km');/*  anus */

/* RPAD : it will add charecter to right side of any string */
SELECT RPAD('ANUSHA',4,'km');/* anus */
SELECT RPAD('ANUSHA',8,'km');/* Anushakm */
SELECT RPAD('ANUSHA',10,'km');/* anushakmkm */
