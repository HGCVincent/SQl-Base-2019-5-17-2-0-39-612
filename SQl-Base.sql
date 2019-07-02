create database student_examination_sys;

use student_examination_sys;
create table student(
    id varchar(10) primary key,
    name varchar(50),
    age int,
    sex varchar(10)
);

create table subject(
    id varchar(10) PRIMARY key,
    subject varchar(50),
    teacher varchar(50),
    description varchar(200)
);

create table score(
    id varchar(10) PRIMARY key,
    student_id varchar(10),
    subject_id varchar(10),
    score int,
    FOREIGN key(student_id) REFERENCES student(id),
    FOREIGN key(subject_id) REFERENCES subject(id)
);