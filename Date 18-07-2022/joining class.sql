select * from sys.tables
select * from employee
select * from department
insert into department values(80,'fin',105),
(82,'mkt',101)

select * from employee inner join  department on emp_id=dept_manager_id

sp_rename 'department.dept_manager_id','emp_id'

select * from employee inner join  department on employee.emp_id=department.emp_id

select * from employee e inner join  department d on e.emp_id=d.emp_id

create table project
(
pro_id int,
pro_name char(30),
pro_location char(30),
pro_manager_id int
)
select * from project
insert into project values(12,'EMS','Delhi',101),(14,'LMS','mumbai',105),
(16,'ECS','Gurugram',110),(18,'SMS','delhi',112)

select * from employee
select * from department
select * from project

select * from employee e inner join  department d on e.emp_id=d.emp_id
join project p on e.emp_id=p.pro_manager_id

select * from employee left outer join project on emp_id=pro_manager_id
select * from employee right outer join project on emp_id=pro_manager_id
select * from project right outer join employee on pro_manager_id=emp_id
select * from project full outer join employee on pro_manager_id=emp_id

-------------------------self join-----------------------------

create table empm
(
emp_id int,
emp_name char(30),
emp_manager_id int
)
select * from empm
insert into empm values(101,'ram',107),
(102,'pradeep',105),(103,'ashoak',101),(104,'naveen',102),(105,'vikash',103),
(106,'vinod',101),(107,'simab',103)

emp_name    emp_manager_name
ram			simab
pradeep		vikash
ashoak		ram
naveen		pradeep
vikash		ashoak
vinod		ram
simab		ashoak

select e.emp_name as employee_name ,m.emp_name as emp_manager_name
from empm e inner join empm m on m.emp_id=e.emp_manager_id

select GETDATE()
select DATEDIFF(yy,'12-16-2002',getdate())
select DATEDIFF(mm,'12-16-2002',getdate())
select DATEDIFF(dd,'12-16-2002',getdate())
select DATENAME(mm,getdate())
select DATEname(dw,getdate())
select LEN('hello')
select * from empm where LEN(emp_name)>=7
select UPPER('sachin')
select LEFT('sachin',3)
select right('sachin',3)
select SUBSTRING('sachin',2,4)





