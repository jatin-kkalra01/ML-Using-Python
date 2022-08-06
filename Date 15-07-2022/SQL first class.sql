create table employee
(
emp_id int primary key,
name char(30)not null,
emp_salary int check(emp_salary>=30000),
mobile bigint unique,
address char(30) default 'allahabad'
)

select * from employee
insert into employee values(101,'raju',89076,8907654321,'delhi'),
(102,'sachin',67890,7654321890,'mumbai'),
(103,'sourabh',567899,8790654321,'delhi'),
(104,'rahul',90876,768901234,'gurugram'),
(105,'ajay',765432,789065432,'delhi'),
(106,'naveen',90876,4567890321,'mumbai'),
(107,'manish',765430,9123456709,'gurugram')

insert into employee(emp_id,name,emp_salary,mobile) values(108,'vikash',86543,8907654329)
select * from employee where name like 'a%'
select * from employee where name like '%h'
-----------wildcard-------------------
select * from employee where name like '[a-m]%'
----------------in-----------------
select * from employee where address in('delhi','mumbai')
order by address asc
-----------------------or---------------------
select * from employee where address='delhi'
or address='mumbai'
-----------------where---------------------
select * from employee where address='delhi'and emp_salary>=700000
--------------------group by--------------------------
select address,SUM(emp_salary)as emp_salary from employee group by address
having address='delhi'

select * from employee where emp_salary=
(select MAX(emp_salary) from employee where emp_salary<(select max(emp_salary) from employee))

----------------cte------------------
with vikash as
(
select *,DENSE_RANK()over(order by emp_salary desc)as emp_rank from employee
)
select * from vikash where emp_rank=7

create table emp
(
id int,
name char(30)
)
select * from emp
insert into emp values(101,'ravi')
with sim as
(
select *,ROW_NUMBER()over(order by id asc)as row_num from emp
)
delete from sim where row_num>1


select * from employee
alter table employee add emp_desig char(30)
alter table employee drop column emp_desig

create table em
(
id int,
name char(5),
mobile int
)
select * from em
insert into em values(101,'abhishek',9876543210)
alter table em alter column name char(30)
alter table em alter column mobile bigint
delete from em
alter table em alter column id int not null
alter table em add constraint pk primary key(id)



create table department
(
dept_id int,
dept_name char(30),
dept_manager_id  int  foreign key references employee(emp_id)
)
insert into department values(80,'fin',108)

---------------column level------------
create table employee
(
emp_id int primary key,
name char(30)not null,
emp_salary int check(emp_salary>=30000),
mobile bigint unique,
address char(30) default 'allahabad'
)
------------------------table level constraint-------------------
create table employees
(
emp_id int,
name char(30)not null,
emp_salary int,
mobile bigint,
address char(30) default 'allahabad',
constraint pk primary key(emp_id),
constraint ck check(emp_salary>=30000),
constraint uq unique(mobile)
)

alter table employee drop constraint id int primary key
alter table employees drop constraint pk