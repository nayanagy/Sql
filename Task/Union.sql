CREATE TABLE metro(id int,M_name varchar(20),source varchar(20),destination varchar(20),ticket int);
SELECT * FROM metro ;

INSERT INTO metro VALUES(1,"nammametro","Rajajinagr","Vijaynagar",23);
INSERT INTO metro VALUES(2,"Anumetro","chitradurga","basveshvarnagar",38);
INSERT INTO metro VALUES(3,"nimmametro","hospet","rjajinagar",91);
INSERT INTO metro VALUES(4,"Smruthimetro","Shimoga","Davangere",65);
INSERT INTO metro VALUES(5,"Dbossmetro","Mejastic","Vijaynagar",8);
INSERT INTO metro VALUES(6,"yashmetro","Vijaynagar","Mejastic",87);
INSERT INTO metro VALUES(7,"Sushanthmetro","Rajajinagr","hebbal",47);
INSERT INTO metro VALUES(8,"puneethmetro","javalli","Mahalakshmi",57);
INSERT INTO metro VALUES(9,"Kuvempumetro","davangere","Bellary",43);
INSERT INTO metro VALUES(10,"Rajkumarmetro","Pesitm","jnnce",27);

CREATE TABLE Train(id int,name varchar(20),train_no int,src varchar(20),dest varchar(30));
SELECT * FROM Train;

INSERT INTO Train VALUES(1,"shtabdi",3426,"davngere","chalkere");
INSERT INTO Train VALUES(2,"mysorexpress",7654,"chitradurga","Shimoga");
INSERT INTO Train VALUES(3,"hampiexpress",32498,"hospet","Banglore");
INSERT INTO Train VALUES(4,"anuexpress",59876,"Bellary","Bijapur");
INSERT INTO Train VALUES(5,"gnanashtabdi",8765,"chennai","pune");
INSERT INTO Train VALUES(6,"PRtrain",6365,"hydrabad","Banglore");
INSERT INTO Train VALUES(7,"sushmithaexpress",465,"harihar","Honnali");
INSERT INTO Train VALUES(8,"rakshaordinary",1265,"mandya","Mysor");
INSERT INTO Train VALUES(9,"Deepikaexpress",6532,"banglore","mysore");
INSERT INTO Train VALUES(10,"Nishithaexpress",6485,"k r pet","chamrajnagr");
INSERT INTO Train VALUES(10,"Rajkumarmetro",6485,"k r pet","chamrajnagr");

SELECT id,m_name FROM metro
union
SELECT id,name FROM train;

SELECT id,m_name FROM metro
union all
SELECT id,name FROM train;


