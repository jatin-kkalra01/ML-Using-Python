use master
select * from Exp
select * from sys.tables
select * from employee
select * from project

create procedure pshow
as
select * from employee inner join project on employee.emp_id=project.emp_id

execute pshow

create view v1 
as select * from employee

select * from v1

insert into v1 values(109,'akshay',78906,9888398839,'mumbai')

drop view v1

select * from employee inner join project on emp_id= p_name

create index id1 on employee(name)