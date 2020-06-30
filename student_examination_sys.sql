create database student_examination_sys;
use student_examination_sys;


create table student(
id varchar(6) not null primary key,
name varchar(20) not null,
age int not null,
sex varchar(6) not null
);

insert into student values
('001','zhangsan',18,'male'),
('002','lisi',20,'female');

create table subject(
id char(4) not null primary key,
subject varchar(20) not null,
teacher varchar(20) not null,
description varchar(100)
);

insert into subject values
('1001','Chinese','Mr.Wang','the exam is easy'),
('1002','math','Miss Liu','the exam is difficult');


create table score(
id int not null auto_increment primary key,
student_id varchar(6) not null,
subject_id char(4) not null,
score float default 0,
constraint fk_score_student_on_studentId foreign key(student_id) references student(id),
constraint fk_score_subject_on_subjectId foreign key(subject_id) references subject(id)
);

INSERT INTO score(student_id,subject_id,score) VALUES 
('001','1001',80),
('002','1002',60),
('001','1001',70),
('002','1002',60.5);






