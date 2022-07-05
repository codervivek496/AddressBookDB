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

--UC3 Instert Contacts into AddressBook table

insert into AddressBook values
('Vivek', 'Kumar', 'gaulakshni', 'Sasaram', 'Bihar', 821115, 7004437837, 'viveksinghssm496@gmail.com'),
('Abhishek', 'Kumar', 'Pagwada', 'Jalandhar', 'Punjab', 399392, 9931532761, 'abhishek@gmmail.com'),
('Pooja', 'Kumari', 'gomti nagar', 'Lucknnow', 'Utter Pradesh', 923492, 9631007829, 'poojakumari@gmail.com');

--UC4 Edit Contact in AddressBook table

update AddressBook set Phone = 9431845177 where FirstName = 'Pooja';