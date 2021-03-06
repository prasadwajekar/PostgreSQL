create database school_management_system;

create table Student(Student_ID int primary key,F_Name varchar(15),M_Name varchar(15),L_Name varchar(15),Class int not null,Date_of_Birth date,Sex char(1),Address varchar(40),Phone_No int,Room_No int );

create table Teacher(Teacher_ID int ,F_Name varchar(15),M_Name varchar(15),L_Name varchar(15),Date_of_Birth date,Sex char(1),Address varchar(40),Phone_No char(10));

create table Guardian(Student_id int not null ,G_ID  ,F_Name varchar(15),M_Name varchar(15),L_Name varchar(15),Relationship char(15),Phone_No char(10));

create table Class (Room_No int not null,Standard int not null,Phone_No char(10));

create table Teaches(Teacher_ID int not null,Student_ID int not null);

create table Subject(Teacher_ID int not null,Subject_Name varchar(10) not null ,Incoming timestamp,Outgoing timestamp);

create table Has(Room_no int not null,Teacher_ID int not null);

create Table Student_Email(Student_ID int not null,Email varchar(20) not null);


create Table Teacher_Email(Teacher_ID int not null,Email varchar(20) not null);


create Table Guardian_Email(Guardian_ID int not null,Email varchar(20) not null);

create table Fee_Detail(Recipt_No char(10) not null,Day_of_payment varchar(10), Fee_Date date,Student_ID int not null);
