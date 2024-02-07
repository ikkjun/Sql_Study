create database soap_store;
show databases;
create database slimestore;
create database nikestore;
drop database slimestore;

use nikestore;

create database CAT;
use CAT;
create table cats
(
name varchar(10),
age int
);
insert into cats(name, age) values('페르시안', 5);

select * from cats;

show tables;

show columns from cats;

desc cats; -- describe cats

create table dogs
(
breed varchar(10),
age int(10)
);

drop table dogs;

create table pastries
(
name varchar(50),
quantity int
);

show columns from pastries;
drop table pastries;