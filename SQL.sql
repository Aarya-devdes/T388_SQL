use t388;
show tables;
select * from employee;
delete from employee where Gender="male";
delete from employee where age>25;
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);
truncate table employee;
alter table employee add location varchar(10);
select * from employee;
desc employee;
alter table employee modify FullName varchar(40);
alter table employee add bonus float after salary;
alter table employee add Title varchar(5) first;
alter table employee modify FullName varchar(35);
alter table employee change column location Address varchar(36);
update employee set address="Thane";
alter table employee drop title, drop bonus, drop address;
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);
select * from employee;
alter table employee add location varchar(10);
alter table employee add bonus float after salary;
alter table employee add Title varchar(5) first;
alter table employee change column location Address varchar(36);
update employee set address="Thane";
update employee set address="Dombivli" where department="IT";
update employee set Title="Mr." where gender="Male";
update employee set Title="Ms." where gender="Female";
update employee set bonus=salary*0.05;
select * from employee;



use t388;
create table Kisan_Info
(ID int unique not null,
name varchar(50) unique not null,
age int check (age>=18),
email_ID varchar(40) default "dummy123@gmail.com"
);
desc Kisan_Info;
insert into Kisan_Info values
(1001,"Jayant Kumar",59,"");
select * from Kisan_Info;
update Kisan_Info set email_ID=default
where ID=1001;
insert into Kisan_Info values
(1002,"Rajesh Pradhan",56,default);
alter table Kisan_Info modify age int check (age>=0);
insert into Kisan_info values
(1003,"kkkkkk",16,default);
show create table Kisan_Info;
alter table Kisan_Info drop check Kisan_Info_chk_1;
alter table Kisan_Info drop check Kisan_Info_chk_2;
alter table Kisan_Info drop check Kisan_Info_chk_3;
insert into kisan_info (ID,name,age) values
(1004,"hediuwheiduhwi",38);



select distinct Department from employee;
select distinct gender from employee;
use t388;
show tables;
select * from employee
where department="IT" or department="finance";
select * from employee
where department in ("HR","Finance");
