select * from emp_table where ename IN('smith','Lokesh','scott') OR comm IN (1000,500,200);
select * from emp_table where comm is null;
select * from emp_table where comm is not null;

select * from emp_table;

select * from emp_table where sal between 2000 and 4000;
select count(*) from emp_table where sal not between 2000 and 4000 ;
select * from emp_table where ename like '_____%';
select * from emp_table where ename like '____';
select * from emp_table where hiredate like '%02%';
select * from emp_table where empno not like '%78%';

-- Task;
select * from emp_table where sal between 1250 and 2000;
select * from emp_table where sal < 1500 or job = 'analyst';
select * from emp_table where sal < 1300 and job = 'clerk';
select ename,hiredate from employee where deptno = 30 and job = 'manager';
select *,sal*12 from emp_table where deptno = 30 and job = 'salesman' and sal*12 > 1500;
select * from emp_table where deptno = 30 or job = 'supervisior';
select ename from emp_table where sal = 1100 or job = 'clerk';
select ename,sal,sal*12,deptno from emp_table where deptno=20 and sal > 2300 and sal*12 > 3000;
select empno,ename from emp_table where deptno = 20 or job = 'manager';
select * from emp_table where deptno = 20 or deptno=30;
select * from emp_table where sal = 2980 and job = 'doctor';
select ename,deptno from emp_table where deptno = 20 or deptno = 30;
select * from emp_table where job not in ('clerk','manager');
select * from emp_table where year(hiredate) between 2020 and 2021;
select * from emp_table where year(hiredate) = 2021;
select * from emp_table where year(hiredate) not in (2022);
select ename,comm from emp_table where comm is null;
select * from emp_table where mgr is null;

select * from emp_table where comm is not null;
select ename from emp_table where ename like 'A%';
select ename from emp_table where ename like '%K';
select ename from emp_table where ename like '%A%';
select ename from emp_table where ename like '__A%';
select ename from emp_table where ename like '__R___%';
select ename from emp_table where ename like '__R___%';
select ename,deptno from emp_table where job='clerk' and deptno = 10 or deptno = 20;
select * from emp_table where (job='clerk' or job='manager') and deptno = 10;
select * from emp_table where (job='clerk' or job='manager') and deptno = 10;
select ename from emp_table where deptno in (10,20,30,40);
select * from emp_table where empno in (7902,7839);
select * from emp_table where job in ('manager','salesman','clerk');
select ename from emp_table where age between 20 and 22;




