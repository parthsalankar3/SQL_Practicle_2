create database college_2;

use college_2;

create table Department
( dept_id int primary key,
 dept_name varchar (50) unique not null);

create table Student_2
(roll_no int primary key,
 name varchar (50) not null,
 email varchar (50) unique,
 aadhar_no varchar(12) unique,
 dept_id int,
 foreign key (dept_id) references department(dept_id));



 create table Course
 (course_id int primary key,
 course_name varchar (50) not null,
 dept_id int,
 foreign key (dept_id) references Department(dept_id));

 create table Enrollment
 (roll_no int,
 course_id int,
 semester int check (semester between 1 and 8),
 grade char(2),
 primary key (roll_no,course_id,semester),
 foreign key (roll_no) references Student_2 (roll_no),
 foreign key (course_id) references Course (course_id));

 INSERT INTO department Values(1, 'Computer Science'), (2, 'Electronics');

INSERT INTO student Values(101, 'Nilisha', 'nilisha@mail.com', '123456789012', 1 );
INSERT INTO student Values(102, 'Rahul', 'rahul@mail.com', 2, '987654321098' );

INSERT INTO course Values(501, 'DBMS', 1 ),(502, 'Circuits', 2);

INSERT INTO course Values(503, 'Mathematics', 1);

INSERT INTO enrollment Values (101, 501, 3, 'A');
INSERT INTO enrollment Values (101, 502, 3, 'B'); -- same student, different course; allowed