(select sal*12 from emp_table where sal in (select sal from emp_table) and (select ename from emp_table where (select ename from emp_table));
select ename,job,sal*6 from emp_table where sal ;
select *,(sal*12)+2000 as Bonus from emp_table where sal in (select sal from emp_table);
select ename,sal-(sal/100*25) as Monthly_Deduction from emp_table where sal in (select sal from emp_table);
select sal+(sal/100*10) as Hike,ename from emp_table where sal in (select sal from emp_table); 
select ename,(sal*12)-(sal/100*10) as Annual_Deduction from emp_table where sal in (select sal from emp_table);
select *,sal*12 from emp_table where sal in (select sal from emp_table);
select ename,job,sal-100 from emp_table where sal in (select sal from emp_table);
 
select * from emp_table;

-- task 2

select ename,sal from emp_table where sal > (select sal from emp_table where ename = 'allen');
select * from emp_table where job in (select job from emp_table where ename = 'miller');
select ename from emp_table where sal > (select sal from emp_table where ename = 'adams');
select ename,sal from emp_table where sal < (select sal from emp_table where ename = 'king');
select ename,job from emp_table where job in (select job from emp_table where ename = 'jones');
select ename,job from emp_table where job in (select job from emp_table where ename = 'james');
select empno,ename,sal*12 from emp_table where sal > (select sal from emp_table where ename = 'wards');
select ename,hiredate from emp_table where hiredate > (select hiredate from emp_table where job = 'president');
select ename,sal from emp_table where sal < (select sal from emp_table where empno = 7839);
select * from emp_table where hiredate < (select hiredate from emp_table where ename = 'miller');
select ename,deptno from emp_table where sal > (select sal from emp_table where ename = 'allan');
select ename,sal from emp_table where sal > (select sal from emp_table where ename = 'scott') < (select hiredate from emp_table where ename = 'king');
select ename,sal,sal*12 from emp_table where sal < (select sal from emp_table where ename = 'blake' and sal > 3500);
select * from emp_table where sal > (select sal from emp_table where ename = 'scott' and ename < 'king');
select ename from emp_table where ename like 'A%' and (select job from emp_table where ename = 'blake');
select ename,comm from emp_table where ename like 'A%' > (select job from emp_table where ename = 'smith');
select * from emp_table where job = 'clerk' in (select job from emp_table where ename = 'turner');
select ename,sal,job from emp_table where sal*12 > (select sal from emp_table where ename = 'smith') < (select sal from emp_table where ename = 'king');

use employee;
create index get_index on emp_table(ename,sal,job);

select* from emp_table;
set autocommit = 0; -- we can use rollback(undo)
set autocommit = 1; -- we cannot use rollback

insert into emp_table values(7940,'LOKEE','DEVELOPER',7654,'2023-12-24',2903,898,30);

savepoint a;
savepoint b;
savepoint c;

rollback to c;

-- Stored Procedure VS View
create view get_view as
select min(sal) from emp_table;
drop view get_view;
create view get_view as
select max(sal) from emp_table;		-- delimiter(;)

delimiter \\
create procedure get_count()
begin
declare total int;
select count(ename) into total from emp_table;
select total;
end \\
delimiter ;

call get_count;
drop procedure get_count;

delimiter &&
create procedure get_count(in jobdesc char(15),out total int)
begin
declare total int;
select count(*) into total from emp_table where job=jobdesc;
select @total;
end &&
delimiter ;
set @total=10;

call get_count('clerk',@total);
call get_count('manager',@total);

-- TASK
set @countf=5;
delimiter $$
create procedure check1(inout tcount int,in getcount int)
begin
	set tcount=tcount+getcount;
end $$
delimiter ;

call check1(@countf,2);
call check1 (@countf,3);
select @countf;
drop procedure if exists check1;

-- set @countf=5;
delimiter **
create procedure addition(out addvalue int)
begin
	set addvalue=10+10;
end **
	set @getvalue=0;

delimiter ;
call addition(@getvalue);
select @getvalue;

call check1(@countf,2);
call check1 (@countf,3);
select @countf;
