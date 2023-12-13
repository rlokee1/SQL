use employee;
select * from emp_table where DEPTNO = 
(select deptno from emp_table where ename = 'allen');

rename table employee to emp_table;
select * from emp_table;

select * from emp_table where job in 
(select job from emp_table where ename = 'ward') and sal > 
(select sal from emp_table where ename = 'Miller');

select avg(sal) from emp_table;

select * from emp_table where sal = 
(select max(sal) from emp_table where sal < 
(select max(sal) from emp_table ) AND sal NOT IN 
(select max(sal) from emp_table));
 
