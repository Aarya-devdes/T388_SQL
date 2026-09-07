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