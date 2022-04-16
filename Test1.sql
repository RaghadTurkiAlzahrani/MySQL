create database Students;
create table Class( 
id varchar (20) primary key,
username varchar (25),
email varchar (30) unique,
password varchar(25),
role varchar (10) check (role='Techer' or role='student')
);
create table Corses( 
id varchar (20) primary key,
CorseName varchar (30),
foreign key (id) references Class (id) );
create table Resets(
id varchar (20) primary key,
PayAmount int default 100,
IsPaid boolean default false,
foreign key (id) references Class(id) );
alter table Class add column phoneNumber varchar(10); 
select *  from Class;
alter table Class drop column phoneNumber; 
insert into Class values ('1','Raghad','RR@gm','1234','student');
select * from Class;
insert into Corses values('2','SQL');
select * from Corses;
insert into Resets values('3',300,false);
select * from Resets;
update Class set password ='8888' where id='1';
select * from Class;
delete from Corses where id ='2';
Select * from Corses;
