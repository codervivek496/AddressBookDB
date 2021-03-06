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

--UC5 Delete contact using First name

delete from AddressBook where FirstName = 'Abhishek';

--UC6 Retrieve person belonging to City or State from AddressBook

select * from AddressBook where City = 'Lucknow';

Select * from AddressBook where State = 'Bihar';

--UC7 size of AddresssBook table by City and State

insert into AddressBook values
('Vanshika', 'Singh', 'Ansal', 'Kuruksetra', 'Hariyana', 183232, 7004437828, 'vanshika@gmail.com')

--Size by city
select City, count(City) as  'Total Contacts' from AddressBook group by City;

--Size by State
select State, count(State) as 'total Contacts' from AddressBook

--UC8 retrieve entries sorted alphabetically by name for a given city

insert into AddressBook values
('Sonu', 'Sinha', 'New Area', 'Sasaram', 'Bihar', 821115, 9921117823, 'sonu@gmail.com');

select * from AddressBook;

select * from AddressBook where City = 'Sasaram' order by FirstName;

--UC9 Identify each address book with name and type

alter table AddressBook add AddressBookName varchar(50), type varchar(30);

update AddresssBook set AddressBookName = 'A', Type = 'Friends' where FirstName = 'Vivek',

update AddressBook set AddressBookName = 'B', Type = 'Friends' where FirstName = 'Abhishek';

update AddressBook set AddressBookName = 'A', Type = 'Proffesion' where FirstName = 'Pooja';

<<<<<<< HEAD
update AddressBook set AddressBookName = 'B', Type = 'Proffesion' where FirstName = 'Vanshika';
=======
update AddressBook set AddressBookName = 'B', Type = 'Proffesion' where FirstName = 'Vanshika';

-- UC10 Get number of contact ( count by type )

select Type , count(Type) as 'Total' from AddressBook group by Type;

-- UC11 Add same contact to different types

insert into AddressBook values
('Mohak', 'Mangal', 'Hennur', 'Bengaluru', 'Karnataka', 560043, 9802587361, 'mohak.mangal@gmail.com', 'B', 'Proffession');

