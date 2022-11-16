Select * from a;
select * from b;
/* Syntax for inner join 
SELECT t1_name.c_name,t2_name.c_name FROM table1
INNER JOIN table2 on t1_name.c_name=t1_name.c_name; */ 

/* inner join using tabels a and b*/
SELECT a.id as table_a,b.id as table_b FROM a inner join b  on a.id=b.id;

/* metro and train */
SELECT metro.id as metro,train.id as train FROM metro inner join train  on metro.id=train.id;

/* a and metro */
SELECT a.id as table_a,metro.id as metro FROM a inner join metro  on a.id=metro.id;

/*train and b */
SELECT train.id as train,b.id as table_b FROM train inner join b  on train.id=b.id;

/* left join */
SELECT train.id as train,b.id as table_b FROM train LEFT join b  on train.id=b.id;

/* right join */
SELECT train.id as train,b.id as table_b FROM train right join b  on train.id=b.id;

/*    joins for 2 table 
SELECT metro.* ,train.* FROM metro inner join train  on metro.id=train.id;
SELECT metro.* ,train.* FROM metro left join train  on metro.id=train.id;
SELECT metro.* ,train.* FROM metro right join train  on metro.id=train.id; */

/*cross join :each row of the first table join with each row of the second table
			:it gives the cartisian products of join from both the tables*/
select a.id,b.id from a,b;

