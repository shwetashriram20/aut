create database DBAssignment;

use DBAssignment;

create table User(
UserId varchar(25),
FirstName varchar(25),
LastName varchar(25),
email varchar(20),
City varchar(20),
primary key(UserId)
);

select * from User;

alter table User add mobileNum varchar(10);

insert into User(UserId,FirstName,LastName,email,City) values ('1','shweta','shriram','shri@gmail.com','MH'),
('2','shreya','shriram','shrey@gmail.com','MH'),
('3','Tay','shri','tay@gmail.com','MH'),
('4','jay','kim','kim@gmail.com','MH');


insert into User(UserId,FirstName,LastName,email,City) values('5','jae','k','ki@gmail.com','MH');

update User set mobileNum='8776765454'where UserId='2';

update User set mobileNum='8776765454'where UserId='1';

insert into User(UserId,FirstName,LastName,email,City) values('6','jae','k','ki@gmail.com','MH');

delete from User where UserId='6';

truncate table User;

drop database DBAssignment;
