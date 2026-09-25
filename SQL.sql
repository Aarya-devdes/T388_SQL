use T388;
CREATE TABLE Projects (
ProjectId INT PRIMARY KEY AUTO_INCREMENT, 
ProjectName VARCHAR(200) NOT NULL,
EmployeeId INT,  
StartDate DATETIME,  
EndDate DATETIME);
INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from
scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company',
1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007,
NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop
application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business
website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),
(7,'Migrate web application and database to
new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),
(8,'Android Application development', 1004,
NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop
application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(11,'Develop new WordPress plugin for my
business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));
select *,datediff(enddate, startdate)as Duration from Projects;
select ProjectName from Projects where datediff(enddate, startdate)= '45';
alter table projects add duration int;
select * from projects;
update projects set duration=datediff(enddate, startdate);
select ProjectName from Projects where duration= 45;
select duration,count(*) from projects group by duration;
select duration,count(*) from projects group by duration having count(*)>=2;
select duration,count(*) from projects 
where duration>=20
group by duration 
having count(*)>=2
order by duration desc;

-- W G H O -- where -> group by -> having -> order by

select * from employee;
select * from employee limit 3,5;
select distinct department from employee;
select distinct gender from employee;
select * from projects where employeeid is null;
select * from projects where employeeid is not null;

-- Auto Increment
desc projects;
update projects set employeeid=1003 where projectid=6;
select * from projects;

-- in between like
select * from employee where employeeid between 1003 and 1007;
select * from employee where age between 25 and 27;
select * from employee where EmployeeId in (1003,1005,1007);

-- lilke operator
select * from employee where fullname like '%y%';
select * from employee where fullname like '%a_';

use t388;
select * from `LIKE`;
select * from `like` where fullname like"a%";
select * from `like` where fullname like"_u%";
select * from `like` where fullname not like"a%t";


select avg(salary) from employee;
select sum(salary) from employee;
select max(salary) from employee;
select min(salary) from employee;
select count(salary) from employee;
select count(salary) from employee;
select count(salary) as Total_EMP,
avg (salary) as Average
,sum(salary) as Total_salary from Employee;


-- concat
select concat("Good"," ","Morning");
select * from employee;
select *, concat(fullname," ",department) as code from employee;
select *, concat(fullname,"@itvendant.com") as email from employee;
select *, lower(fullname) as newname, upper(fullname) as CAPNAME from employee;
alter table employee add email varchar(50);
update employee set email= concat(fullname,"@gmail.com");

-- replace & Reverse
select replace("Hello Everyone, Good Morning","Morning","Night");
select fullname, replace(fullname,"Mohanty","Patil")as changed,
reverse(fullname) from employee;

-- Lenght
select fullname, length(fullname)from employee;

-- Substring
select substring("Maharashtra",5,4);

-- Trim
select length(email), trim(email) from employee;
select trim(email) from employee;


-- One Row Sub Queries (gives result for only 1 value)
select Age from employee where EmployeeId=1002;
select Age from employee where FullName="Mary Smith";
select * from employee where age=(select Age from employee where FullName="Mary Smith");
select * from employee where Salary=(select Salary from employee where FullName="John Doe");
select * from employee where Department=(select Department from employee where FullName="John Doe");
select max(salary) from employee;

-- 2nd highest salary
select max(salary) from employee where salary < (select max(salary) from employee);
-- 3rd highest salary
select max(salary) from employee where salary < (select max(salary) from employee where salary < (select max(salary) from employee));

-- multiple row sub-queries (gives result for 2 different values)
select Age from employee where EmployeeId in (1002,1003);
select * from employee where age in (select Age from employee where EmployeeId in (1002,1003)); -- where there are multiple sub queuries do not use =
select FullName, Department from employee where Department in (select Department from employee where EmployeeId in (1002,1003));


-- any & all
-- >any = more than minimum/ <any = less than maximum (uses OR logic of Excel)
-- All is basically AND logic
select salary from employee where employeeid between 1001 and 1003;
select * from employee where salary <any (select salary from employee where employeeid between 1001 and 1003);
select * from employee where salary <all (select salary from employee where employeeid between 1001 and 1003);

-- JOINS
CREATE TABLE Name (
Id INT PRIMARY KEY,
`Name` VARCHAR(45) NOT NULL);
INSERT INTO Name values
(1,"a"),
(2,"b"),
(3,"c"),(4,"d"),(5,"e");
select * from name;
CREATE TABLE Salary (
Id INT PRIMARY KEY,
Salary Float NOT NULL);
INSERT INTO Salary values
(1,10),
(2,20),
(4,30),(5,40),(7,50);
select * from salary;

-- Inner Join
SELECT Name.Id, Name.Name, Salary.Salary
FROM Name
INNER JOIN Salary
ON Name.Id = Salary.Id;

-- Left Join
SELECT Name.Id, Name.Name, Salary.Salary
FROM Name
left JOIN Salary
ON Name.Id = Salary.Id;

-- Right Join
SELECT Name.Id, Name.Name, Salary.Salary
FROM Name
right JOIN Salary
ON Name.Id = Salary.Id;

-- Same Answer
select Name.id, Name.Name, salary.salary
from name
right join salary
on name.id = salary.id;

select Name.id, Name.Name, salary.salary
from salary
left join name
on name.id = salary.id;