create database school_management_system 

create table Student(Student_ID int primary key,F_Name varchar(15),M_Name varchar(15),L_Name varchar(15),Class int not null,Date_of_Birth date,Sex char(1),Address varchar(40),Phone_No int,Room_No int );

create table Teacher(Teacher_ID int ,F_Name varchar(15),M_Name varchar(15),L_Name varchar(15),Date_of_Birth date,Sex char(1),Address varchar(40),Phone_No char(10));

create table Guardian(G_Student_Id int primary key,F_Name varchar(20),M_Name varchar(15),L_Name varchar(15),Relationship char(20),Phone_No char(10));

create table Class (Room_No int primary key,Standard int not null ,Phone_No char(10));

create table Subject(sub varchar(10) primary key ,Teacher_ID int foreign key );

create table Has(Room_no int primary_key,Teacher_ID int foreign key);

create Table Student_Email(Student_ID int primary key,Email varchar(40) primary key);


create Table Teacher_Email(Teacher_ID int primary key,Email varchar(40) primary key);


create Table Guardian_Email(Guardian_ID int primary key,Email varchar(40) primary key);

create table Fee_Detail (Recipt_No int primary key,Day_of_payment varchar(10), Fee_Date date,Student_ID int foreign key);
