select * from emp_table;
select * from department;

-- LEFT JOIN
select * from emp_table left join department on emp_table.deptno=department.DEPTNO;
select ename,comm,emp_table.deptno from emp_table left join department on emp_table.deptno=department.DEPTNO;

-- RIGHT JOIN
select emp_table.*,department.* from emp_table right join department on emp_table.deptno=department.DEPTNO;

-- INNER JOIN
select emp_table.*,department.* from emp_table inner join department on emp_table.deptno=department.DEPTNO where emp_table.ename = 'allen';

select emp_table.ename,department.loc from emp_table inner join department on emp_table.deptno=department.DEPTNO 
where emp_table.deptno = (select deptno from emp_table where ename = 'james');

-- CROSS JOIN
select emp_table.*,department.* from emp_table cross join department;

-- SELF JOIN
select emptable.ename as EmployeeName,Mgrtable.ename as ManagerName from emp_table as emptable, emp_table as Mgrtable 
where emptable.mgr = Mgrtable.empno;

-- SUB QUERY
select ename as managername from emp_table where empno = 
(select mgr from emp_table where ename = 'smith');

-- PRIMARY & FOREIGN KEY
alter table department add constraint primary key(deptno);
alter table emp_table add constraint foreign key(deptno) references department(deptno);

select emp_table.*,department.* from emp_table, department where emp_table.deptno=department.DEPTNO emp_table.ename = 'allen';
