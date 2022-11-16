CREATE TABLE commonwealthgame (id int ,game_name varchar(30) not null unique,no_of_players int not null unique check(no_of_players>10),country_participated varchar(30) not null,no_of_medals int not null unique,caption_name varchar(30) not null unique,penalty_points int not null unique,sponsor varchar(30) not null unique,venue varchar(30),team_rank int not null unique,team_total_points int ,player_ranking int not null unique,winner_team varchar(30) not null unique,runners_team varchar(30) not null unique,semi_finale_team varchar(30) not null unique,refree_name varchar(30) not null unique,host_country varchar(30) not null unique,qualifer_winner_team varchar(30) not null unique,qualifer_runner_team varchar(30)  not null unique,game_type varchar(30)not null,primary key(id,team_total_points));
select * from commonwealthgame;
INSERT INTO commonwealthgame VALUES(1,"football",12,"india",2,"Pradnya Gadre",3,"Longines","Alexander Stadium",12,16,6,"indian","austrila","gremany","john","belgiaum","usa","haryana","international");
INSERT INTO commonwealthgame VALUES(2,"chess",14,"austrila",5,"suraj",4,"vivo","jaipur",11,16,7,"bengaluru bulls","patna payrates","gujrat","rakesh","india","punjab"," north america","national");
INSERT INTO commonwealthgame VALUES(3,"cricket",13,"newzeeland",10,"M S Dhoni",15,"bijus","neharu Stadium",10,15,11,"india","zimbobe","south africa","smith","landon","pakisthan","Golden State Warriors","international");
INSERT INTO commonwealthgame VALUES(4,"cycling",17,"usa",12,"miche jordon",11,"facebook","Gabriel Sports Club",13,18,9,"Boston Celtics","LA Clippers","Los Angeles Lakers","joseph","usa","Phoenix Suns","afganisthan ","international");
INSERT INTO commonwealthgame VALUES(5,"Badminton",18,"norway",15,"pele",18,"oppo","golden_Sports Club",14,19,10,"Arizona Cardinals","Baltimore Ravens","Buffalo Bills","johe","LA","Cleveland Browns","Denver Broncos","international");
INSERT INTO commonwealthgame VALUES(6,"tennis",16,"nepal",16,"sindhu",19,"lite","New_York_Empire",15,20,17,"San Diego Aviators","Chicago Smash","Sacramento Capitals","kim","new york","Pittsburgh Triangles","St. Louis Aces","international");
INSERT INTO commonwealthgame VALUES(7,"high jump",29,"bangladesh",17,"poorive",20,"himalaya","Empire",21,20,12," Aviators","Smasher","Capitals","jim","st lovies","defenders","swad","national");
INSERT INTO commonwealthgame VALUES(8," swiming",31," iceland",18,"tanner",21,"olay","vampires",22,21,13," Advantarus","kings","panthers","scott","kevin","players","swadeen","international");
INSERT INTO commonwealthgame VALUES(9,"Basketball",19,"greenland",19,"charles",22,"samsuvng","kingdom",23,22,14," knights","bulls","testers","anand","james","boxers","katmandu","national");
INSERT INTO commonwealthgame VALUES(10,"Rely",20,"iceland",20,"rashmi",23,"realme","empire",24,23,25," royals","super stars","super kings","batterls","kristen","riders","kuatz","national");
INSERT INTO commonwealthgame VALUES(11,"throw ball",21,"scootland",21,"rakesh",24,"boost","empires",26,23,30," royals players","super players","super riders","bettels","krasten","royals","india","national");
INSERT INTO commonwealthgame VALUES(12,"boxing",22,"cuba",22,"rakes",26,"boosters","empires_player",46,33,40," royals ","super kings","super battels","batttels","karthik","royals lights","usa","national");
INSERT INTO commonwealthgame VALUES(13,"koko",28,"pakisthan",28,"harry",29,"blasters","empires player",36,34,50," royals king ","super knights","super bettels","battler makes","lakshmi"," lights","canada","international");
INSERT INTO commonwealthgame VALUES(14,"golf",26," swizerland",27,"Anusha",28,"kings","empires knights",47,43,47," royals kings ","super light","super town","fighters","suresh","lighting","sweeden","international");
INSERT INTO commonwealthgame VALUES(15,"weight lifiting",24,"nepal",26,"yash",66,"stronger","jumping stars",49,39,49," royals stars ","super fighters","super batters","dancing stars","haresh","princes","korea","national");

/* group by */
SELECT game_name,sum(no_of_medals) from commonwealthgame group by caption_name;
SELECT sponsor from commonwealthgame group by winner_team;
SELECT * from commonwealthgame group by caption_name having caption_name="M S Dhoni";
SELECT game_name from commonwealthgame group by sponsor having sponsor="bijus";

/*lpad*/
select lpad(team_rank,10,"(**)") from commonwealthgame;
select lpad(game_name,10,"(###)") from commonwealthgame;

/*rpad*/
select rpad(caption_name,10,"@@") from commonwealthgame;
select rpad(no_of_players,10,"^^") from commonwealthgame;

/*sum*/
SELECT sum(no_of_players) from commonwealthgame;

/*max*/
SELECT MAX(no_of_medals) from commonwealthgame;

/*min*/
SELECT MIN(team_rank) from commonwealthgame;

/*count*/
SELECT count(no_of_medals) from commonwealthgame;

/*avg */
SELECT avg(team_rank) from commonwealthgame;

/*like*/
SELECT * FROM commonwealthgame where game_name like 'f%';
SELECT caption_name FROM commonwealthgame where venue like 'g%';
SELECT * FROM commonwealthgame where country_participated like 'n%';
SELECT * FROM commonwealthgame where sponsor like '%s';

/*in*/
select * from commonwealthgame where id in(8,15);

/*between*/
select * from commonwealthgame where id between 2 and 7;

/*order by*/
SELECT * FROM commonwealthgame order by game_name;
SELECT game_name,penalty_points FROM commonwealthgame order by venue;
SELECT game_name,caption_name,venue FROM commonwealthgame order by player_ranking;
SELECT * FROM commonwealthgame order by team_rank;
SELECT * FROM commonwealthgame order by player_ranking;

/*reverse*/
select reverse(caption_name) from commonwealthgame;
select reverse(sponsor) from commonwealthgame;
select reverse(semi_finale_team) from commonwealthgame;
select reverse(refree_name) from commonwealthgame;
select reverse(game_name) from commonwealthgame;
select reverse(country_participated) from commonwealthgame;
select reverse(host_country) from commonwealthgame;
select reverse(venue) from commonwealthgame;
select reverse(winner_team) from commonwealthgame;
select reverse(runners_team) from commonwealthgame;

