create database Employee;
use Employee;
create table EMPLOYEE_DETAILS (EMPNO INT(4) PRIMARY KEY,ENAME CHAR(30) ,JOB CHAR(30), MGR INT(4),HIREDATE DATE,SAL INT(20), COMM INT(20),DEPTNO INT(20));
INSERT INTO EMPLOYEE_DETAILS VALUES (7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20),
                                    (7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),
                                    (7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30),
                                    (7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20),
                                    (7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),
                                    (7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30),
                                    (7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10),
                                    (7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,NULL,20),
                                    (7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10),
                                    (7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30),
                                    (7876,'ADAMS','CLERK',7788,'1987-05-23',1100,NULL,20),
                                    (7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30),
                                    (7902,'FORT','ANALYST',7566,'1981-12-03',3000,NULL,20),
                                    (7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);

SELECT *FROM EMPLOYEE_DETAILS;
DROP TABLE EMPLOYEE_DETAILS;
CREATE TABLE DEPARTMENT (DEPTNO INT(10), DNAME CHAR(30), LOC CHAR(40));
INSERT INTO DEPARTMENT VALUES (10,'ACCOUNTING','NEW YORK'),
							  (20,'RESEARCH','DALLAS'),
                              (30,'SALES','CHICAGO'),
                              (40,'OPERATIONS','BOSTON');
SELECT *FROM DEPARTMENT;

select * from employee_details;

select * from employee_details where sal > 2000;

select ename,job from employee_details;



select distinct(deptno) from employee_details;


select mgr as manager_id from employee_details;

select min(sal) as minimum_salary from employee_details;

select max(sal),min(sal) from employee_details;

select count(comm) from employee_details;

select sum(sal) from employee_details;

select round(avg(sal)) from employee_details;

select*from employee;

rename table employee_details to employee;

select ename,deptno from employee where deptno=10;
select*from employee where sal=1250;
select ename,sal from employee where sal>3000;
select ename,job,sal from employee where ename='james';
select sal*12 as annual_salary from employee where ename='smith';
select ename from employee where job ='clerk';
select sal from employee where job='salesman';
select*from employee where sal > 2000;
select*from employee where ename='jones';
select*from employee where hiredate='2020-04-03';
select ename,sal,sal*12 as annual_salary from employee where sal*12>3000;
select empno from employee where deptno=30;
select ename,hiredate from employee where year(hiredate)<2021;
select*from employee where job='manager';
select ename,sal from employee where comm=725;
select*from employee where comm>sal;
select empno from employee where year(hiredate)<2022;
select*from employee where job='manager';
select*from employee where sal>2000;

select count(*) from employee where deptno=10 and sal<2000;
select sum(sal) from employee where job='clerk';
select avg(sal) from employee;
select count(ename) from employee where ename like 'A%';
select avg(sal) as average_salary from employee;
select count(*) from employee where left(ename,1)='A';
select count(*) from employee where job in('clerk','manager');
select sum(sal) as total_salary from employee where month(hiredate)=02;
select count(*) from employee where mgr=7839;
select count(*) from employee where deptno=30 and comm is not null;
select avg(sal) as avg_salary,sum(sal) as total_salary,count(*) as num_employees,max(sal) as max_salary from employee where job='manager';
select count(*) from employee where ename like'%A%';
select count(*) as num_employees,sum(sal) as total_salary from employee where ename like '%LL%';
select count(distinct deptno) as num_departments from employee;



 

