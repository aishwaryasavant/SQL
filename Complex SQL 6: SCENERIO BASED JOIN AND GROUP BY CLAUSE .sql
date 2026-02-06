drop table friend ;
Create table friend (pid int, fid int);
insert into friend (pid , fid ) values ('1','2');
insert into friend (pid , fid ) values ('1','3');
insert into friend (pid , fid ) values ('2','1');
insert into friend (pid , fid ) values ('2','3');
insert into friend (pid , fid ) values ('3','5');
insert into friend (pid , fid ) values ('4','2');
insert into friend (pid , fid ) values ('4','3');
insert into friend (pid , fid ) values ('4','5');
drop table person;
create table person (PersonID int,	Name varchar(50),	Score int);
insert into person(PersonID,Name ,Score) values('1','Alice','88');
insert into person(PersonID,Name ,Score) values('2','Bob','11');
insert into person(PersonID,Name ,Score) values('3','Devis','27');
insert into person(PersonID,Name ,Score) values('4','Tara','45');
insert into person(PersonID,Name ,Score) values('5','John','63');
select * from person;
select * from friend;
/*
Learn advanced SQL techniques using JOIN, GROUP BY, and HAVING clauses to solve a complex interview question.
This tutorial demonstrates a step-by-step solution using two tables, focusing on data aggregation and filtering.
A data engineer expertly guides the process.:


*/
/* PROBLEM STATEMENT - 
WRITE A QUERY TO FIND PERSONID, NAME NUMBER OF FRIENDS, SUM OF MARKS
OF A PERSON WHOS FRIENDS HAVE  TOTAL SCORE MORE THAN 100 */

select p.personid,p.name, max(p.score) person_score, -- f.fid friendid, pfr.name friend_name, pfr.score friendscore, 
sum(pfr.score) score, count(f.fid) no_of_friends  from person p 
join friend f 
on p.personid = f.pid
join person pfr
on f.fid = pfr.personid
group by p.personid,p.name
having sum(pfr.score)>100
order by 1; 
