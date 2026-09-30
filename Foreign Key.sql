create database FK_T388;
use FK_T388;
create table Students (
ID int primary key auto_increment,
Name varchar(50));
desc students;
insert into Students values
(1,"Kunal");
insert into Students (name) values
("Suman"), ("Ajay"), ("Neeraj");
select * from students;
create table Info (
ID int,
Scores int,
foreign key (id) references students(id)
);
insert into Info values
(1,200),(2,654),(3,154),(4,454),(5,265);
select * from Info;



-- MAIN SHIT
create database T388_fk_pk;
use T388_fk_pk;
CREATE TABLE Employee (
ID INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Age INT,
Salary DECIMAL(10, 2)
);
INSERT INTO Employee (ID, Name, Age, Salary) VALUES
(101, 'Alice Smith', 29, 75000.00),
(102, 'Bob Jones', 34, 82000.50),
(103, 'Charlie Brown', 41, 95000.00),
(104, 'Diana Prince', 26, 68000.00);

CREATE TABLE Project (
ProjectID INT PRIMARY KEY,
ProjectName VARCHAR(100) NOT NULL,
ID INT,
FOREIGN KEY (ID) REFERENCES Employee(ID)
ON UPDATE CASCADE
ON DELETE CASCADE
);
INSERT INTO Project (ProjectID, ProjectName, ID) VALUES
(1, 'Website Redesign', 101),
(2, 'Cloud Migration', 101),
(3, 'Mobile App Launch', 102),
(4, 'Data Analytics Pipeline', 103);

select * from employee;
select * from project;

update employee set id=500 where id=101; -- changes in parent will automatically update the child data

update project set id=50 where id=500; -- cannot add or update child table
update project set projectname="Hello" where id=500;

insert into project  values (5,"New",105); -- cannot add or update child table
insert into employee values (666, "Kamlesh",23,50000);
delete from employee where id=666;

