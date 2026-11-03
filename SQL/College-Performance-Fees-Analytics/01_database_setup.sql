#--CREATE & USE DATABASE
create database college_analysis;
use college_analysis;

#--TABLE 1: STUDENTS
create table students(
s_id int not null,
s_name varchar(20) default null,
s_city varchar(20) default null,
s_age int default null,
join_date date default null,
primary key (s_id) );

#--TABLE 2: COURSES
create table courses ( C_id int primary key,
C_name varchar(100) not null,
department varchar (50) not null,
duration_years int not null,
C_fee decimal(10,2) not null);

#--TABLE 3: ENROLLMENT
create table enrollment ( E_id int primary key,
S_id int ,
C_id int,
enrollment_date date not null,
enrollment_status varchar(20) not null,
foreign key (S_id) references students(S_id),
foreign key (C_id) references courses(C_id));

#--TABLE 4: FEES
create table fees( F_id int primary key,
E_id int not null,
total_fees decimal(10,2) not null,
amount_paid decimal(10,2) not null,
payment_date date not null,
payment_status varchar(20) not null,
foreign key (E_id) references enrollment(E_id));

#--TABLE 5: RESULTS
create table results(R_id int primary key,
E_id int,
Sub_id int,
marks_obtained decimal(5,2) not null,
result_status varchar(10) not null,
exam_date date not null,
foreign key(E_id)references enrollment(E_id),
foreign key(Sub_id)references subjects(Sub_id));

#--TABLE 6: SUBJECTS
create table subjects(S_id int primary key,
C_id int,
S_name varchar(100) not null,
semester int not null,
max_marks int not null,
foreign key (C_id) references courses (C_id));
select*from structure;