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
    score double,
    FOREIGN key(student_id) REFERENCES student(id),
    FOREIGN key(subject_id) REFERENCES subject(id)
);

insert into student values ('001','张三',18,'男');
insert into student values ('002','李四',20,'女');

insert into subject values ('1001','语文','王老师','本次考试比较简单');
insert into subject values ('1002','数学','刘老师','本次考试比较难');

insert into score values ('1','001','1001',80);
insert into score values ('2','002','1002',60);
insert into score values ('3','001','1001',70);
insert into score values ('4','002','1002',60);

select * from student;
select * from subject;
select * from score;