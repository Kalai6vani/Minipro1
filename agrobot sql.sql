show databases;
create database agrbot;
show databases;
use agrbot;
create table user(uname varchar(30) not null, 
umail varchar(30) unique, uphone int(12));
desc user;
alter table user modify uphone bigint;
insert into user values('Ramesh', 'rameshrambo14@gmail.com',
9876543210);
select * from user;
insert into user values('Suresh', 'sambavamsur003@gmail.com',
7838485868);
insert into user values('Naresh', 'naasam16nar@gmail.com',
1238901456);
select * from user;
create table loan(lsno int(5),
luser varchar(30) not null,
lname varchar(30) not null,
lbank varchar(30) not null);
desc loan;
insert into loan values(1, 'Suresh', 'Agricultural Gold Loan',
'State Bank of India');
insert into loan values(2, 'Ramesh', 'Kisan Credit Card Scheme',
'Bank of Baroda');
select * from loan;
create table shop(ssno int(5), suser varchar(30) not null,
sitem varchar(30) not null,samt int(5), scost int(20));
insert into shop values(1, 'Naresh', 'Manure', 50);
insert into shop values(2, 'Ramesh', 'Ragi', 60);
select * from shop;
alter table shop add(samt int(5));
desc shop;
insert into shop values(1, 'Naresh', 'Manure', 50, 2);
insert into shop values(2, 'Ramesh', 'Ragi', 60, 3);
select * from shop;
set sql_safe_updates=0;
delete from shop where samt=null;
select * from shop;
delete from shop where scost=50;
delete from shop where scost=60;
insert into shop values(1, 'Naresh', 'Manure', 50, 2);
insert into shop values(2, 'Ramesh', 'Ragi', 60, 3);
select * from shop;
