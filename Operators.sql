select * from employee where ename IN('smith','Lokesh','scott') OR comm IN (1000,500,200);
select * from employee where comm is null;
select * from employee where comm is not null;

select * from employee;

select * from employee where sal between 2000 and 4000;
select count(*) from employee where sal not between 2000 and 4000 ;
select * from employee where ename like '_____%';
select * from employee where ename like '____';
select * from employee where hiredate like '%02%';
select * from employee where empno not like '%78%';

-- Task;
select * from employee where sal between 1250 and 2000;
select * from employee where sal < 1500 or job = 'analyst';
select * from employee where sal < 1300 and job = 'clerk';
select ename,hiredate from employee where deptno = 30 and job = 'manager';
select *,sal*12 from employee where deptno = 30 and job = 'salesman' and sal*12 > 1500;
select * from employee where deptno = 30 or job = 'supervisior';
select ename from employee where sal = 1100 or job = 'clerk';
select ename,sal,sal*12,deptno from employee where deptno=20 and sal > 2300 and sal*12 > 3000;
select empno,ename from employee where deptno = 20 or job = 'manager';
select * from employee where deptno = 20 or deptno=30;
select * from employee where sal = 2980 and job = 'doctor';
select ename,deptno from employee where deptno = 20 or deptno = 30;
select * from employee where job not in ('clerk','manager');
select * from employee where year(hiredate) between 2020 and 2021;
select * from employee where year(hiredate) = 2021;
select * from employee where year(hiredate) not in (2022);
select ename,comm from employee where comm is null;
select * from employee where mgr is null;

select * from employee where comm is not null;
select ename from employee where ename like 'A%';
select ename from employee where ename like '%K';
select ename from employee where ename like '%A%';
select ename from employee where ename like '__A%';
select ename from employee where ename like '__R___%';
select ename from employee where ename like '__R___%';





