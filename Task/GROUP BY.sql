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
