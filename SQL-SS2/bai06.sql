create database qldt;
use qldt;

create table student (
    student_id int auto_increment primary key,
    student_name varchar(30) not null unique
);

create table subject (
    subject_id int auto_increment primary key,
    subject_name varchar(20) not null unique,
    credit_hours int not null check (credit_hours > 0)
);

create table enrollment (
    student_id int not null,
    subject_id int not null,
    enroll_day date not null,
    primary key (student_id, subject_id),
    foreign key (student_id) references student(student_id)
        on update cascade
        on delete cascade,
    foreign key (subject_id) references subject(subject_id)
        on update cascade
        on delete cascade
);

create table result (
    student_id int not null,
    subject_id int not null,
    progress_mark decimal(4,2) not null
        check (progress_mark >= 0 and progress_mark <= 10),
    primary key (student_id, subject_id),
    foreign key (student_id) references student(student_id)
        on update cascade
        on delete cascade,
    foreign key (subject_id) references subject(subject_id)
        on update cascade
        on delete cascade
);

create table class (
    class_id int auto_increment primary key,
    class_name varchar(20) not null unique,
    class_year int not null,
    student_id int not null,
    foreign key (student_id) references student(student_id)
        on update cascade
        on delete cascade
);

create table teacher (
    teacher_id int auto_increment primary key,
    teacher_name varchar(30) not null unique,
    teacher_email varchar(50) not null unique
);
