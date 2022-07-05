--Welcome to AddressBook problem

--UC1 Create AddressBookDB Database
create database AddressBookDB

use AddressBookDB;

--UC2 Crreate AddresssBook table
create table AddressBook(
FirstName varchar(50) not null,
LastName varchar(50) not null,
Address varchar(50) not null,
City varchar(50) not null,
State varchar(50) not null,
Zip int not null,
Phone Bigint not null,
Email varchar(50) not null
);

select * from AddressBook