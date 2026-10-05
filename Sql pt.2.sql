use t388;
CREATE TABLE Emp (
EmpId INT PRIMARY KEY AUTO_INCREMENT, 
EmpName VARCHAR(200) NOT NULL,
ManagerId INT);
insert into Emp values
(1,"Amar",4),(5,"Akabar",4),(7,"Anthony",null),(4,"Tom",7);
select * from Emp;
select 
E.EmpId, E.EmpName as Employees, M.EmpName as Manager
from Emp as E
left join 
Emp as M
on M.EmpId=E.ManagerId;


-- Cross Join
CREATE TABLE ChessTeamA (
Id INT PRIMARY KEY AUTO_INCREMENT, 
Name VARCHAR(200) NOT NULL);
insert into ChessTeamA values
(1,"Amir"),(2,"Salman"),(3,"Aaditya");

Create TABLE ChessTeamB (
Id INT PRIMARY KEY AUTO_INCREMENT, 
Name VARCHAR(200) NOT NULL);
insert into ChessTeamB values
(101,"Kiran"),(102,"Kunal"),(103,"Suman"),(104,"Shekhar");

select * from chessteama;
select * from chessteamb;
select A.Id,B.ID,A.Name,B.Name
from
chessteama as A
cross join
chessteamb as B;

-- View & CTE
create view T388_view1 as
select A.Id as id_a,B.Id as id_b,A.Name as name_a,B.Name as name_b
from
chessteama as A
cross join
chessteamb as B;

select * from T388_view1;


