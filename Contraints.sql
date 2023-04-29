-- contranints --
create database constrains;

use constrains;
-- NotNull
CREATE TABLE Details(
ID int,
UserName VARCHAR(25)NOT NULL,
email VARCHAR(20));

select * from Details;

INSERT INTO Details(ID,UserName,email) VALUE ('1','shweta','ri@gmail.com');
INSERT INTO Details(ID,email) VALUE ('1','ri@gmail.com');  -- Not Working Without Username is NotNull 
insert into Details(ID,UserName,email) value ('1','shweta','ri@gmail.com'),('2','shweta','ri@gmail.com');

-- Unique
create table Uniqu(
Id int,
UserName varchar(25)Unique,
email varchar(20));

insert into Uniqu(ID,UserName,email) value ('1','shweta','ri@gmail.com'),('2','shweta','ri@gmail.com'); -- becouse Unique Username 
insert into Uniqu(ID,UserName,email) value ('1','shweta','ri@gmail.com'),('2','shw','ri@gmail.com');

select * from Uniqu;

-- check 
create table Checkallowed(
Id int Not Null,
UserName varchar(25)Unique,
Age int Check (Age>=18)
);

insert into Checkallowed(ID,UserName,Age) value ('1','shweta','20');
insert into Checkallowed(ID,UserName,Age) value ('1','shweta','17');
select * from Checkallowed;

-- Default taking 
create table Defaultset(
Id int Not Null,
UserName varchar(25)Unique,
Country varchar(25) Default'South Korea');

insert into Defaultset(ID,UserName) value ('1','shweta');
select * from Defaultset;

-- Auto increment its Numbers 
create table Datas(
Id int Auto_Increment,
UserName varchar(25),
primary key(Id));

insert into Datas(UserName) value ('shweta'),('eta'),('shw');

select * from Datas;

-- enum 
create table pattern(
Id int primary key Auto_Increment ,
UserName varchar(25),
size Enum('XL','XX','S'));

insert into pattern(UserName,size) value ('shweta','XL'),('shweta','S'),('shweta','S');

select * from pattern;




