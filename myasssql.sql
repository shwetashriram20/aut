create database Eject;

use Eject;

create table User(
PhoneNumber varchar(25),
UserName varchar(25),
email varchar(20),
Stream varchar(20),
PassOut varchar(25),
primary key(PhoneNumber) 
);

select * from User;
insert into User(PhoneNumber,UserName,email,Stream,PassOut) values ('6463461232','hweta','ri@gmail.com','CS','2022'),
('8463461232','Shweta','shri@gmail.com','MCS','2022'),
('9463461232','Baby','Ba@gmail.com','CS','2020'),
('7463461232','Toy','To@gmail.com','BCS','2021'),
('9863461232','Joy','Oy@gmail.com','MCS','2022');

-- clouse---
-- where,from,orderby,groupby --

-- orderby--
select (UserName) members from User order by UserName asc;-- accending order
select (UserName) members from User order by UserName desc;-- deccending order
select upper(UserName) members from User order by UserName asc;-- Capital letter

-- groupby --
select Stream total from User group by Stream;-- showing grouped not repeted 

-- select count(PhoneNumber),Stream total from User group by Stream order by PhoneNumber desc;

-- Aggregate function --

select count(PhoneNumber)as UserName from User; 
select sum(PhoneNumber)as sum from User;
select avg(PhoneNumber)avg_Of from User;
select max(PhoneNumber)max_Of from User;
select min(PhoneNumber)as min_Val from User;


create table NewUser -- foreign key (for same Primary table-- 
(PhoneNumber varchar(25),
City varchar(25),
Cuntry varchar(20) primary key,foreign key (PhoneNumber) references User (PhoneNumber)
);

select * from NewUser;

insert into NewUser(PhoneNumber,City,Cuntry) values ('6463461232','sola','canada'),
('8463461232','seoul','Korea'),
('9463461232','shanghai','china'),
('9863461232','mum','India');
insert into NewUser(PhoneNumber,City,Cuntry) values ('7463461232','Philli','Thai');

select * from User where PhoneNumber in (select PhoneNumber from NewUser);-- showing machting values
select * from User where (PassOut=2022);-- showing all 2022 values

-- join--
select * from User left join NewUser on User.PhoneNumber = NewUser.PhoneNumber;  
select * from User right join NewUser on User.PhoneNumber = NewUser.PhoneNumber;
select * from User inner join NewUser on User.PhoneNumber = NewUser.PhoneNumber;

delete from NewUser where PhoneNumber='9463461232';
delete from NewUser where PhoneNumber='9863461232';

-- contranints --






