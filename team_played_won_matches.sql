create table icc_world_cup
(
Team_1 Varchar(20),
Team_2 Varchar(20),
Winner Varchar(20)
);
INSERT INTO icc_world_cup values('India','SL','India');
INSERT INTO icc_world_cup values('SL','Aus','Aus');
INSERT INTO icc_world_cup values('SA','Eng','Eng');
INSERT INTO icc_world_cup values('Eng','NZ','NZ');
INSERT INTO icc_world_cup values('Aus','India','India');

select * from icc_world_cup;

select team_name , sum(winner_count) as matches_won, count(team_name) as "total_played", count(team_name)-sum(winner_count) as "total_lost"
from (
select team_1 team_name, case when team_1 = winner then 1 else 0 end winner_count 
from icc_world_cup
union all
select team_2 team_name, case when team_2 = winner then 1 else 0 end winner_count 
from icc_world_cup) team
group By team_name;

