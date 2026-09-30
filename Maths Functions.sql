select 3*4 as Multiplication;
select 72835+382749 as Addition;
select 13/4 as Quotient;
select 34!=67 as Compare;
select database();

-- maths functions
select abs(300-800);
select (6*(-7));

select abs(datediff(startdate,enddate)) as duration from projects;
select 16%2 as remainder;
select floor(33.5);

select truncate(1234.6465464564,2);
select truncate(1234.6465464564,0);
select truncate(1234.6465464564,-1);

select exp(2);
