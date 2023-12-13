create database MyDatabase;
create table Student_Details(S_id int primary key, S_name char(30) not null, S_age int(2));
show tables;
select * from Student_Details;

alter table Student_Details add Gender char(1) default 'M';
alter table Student_Details add Phone_No bigint(10) first;
alter table Student_Details add Address text(10) after S_age;

desc Student_Details;
