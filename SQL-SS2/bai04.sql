create database QuanLyGiangVien;
use QuanLyGiangVien;
create table Teacher (
	ma_giangvien varchar(10) not null,
    ho_ten varchar(50) not null,
    email varchar(50) not null unique
);
create table Subjects (
	ma_mon varchar(10) not null,
    ten_mon varchar(50) not null,
    so_tin_chi int not null check (so_tin_chi > 0)
);
alter table Subjects
add column ma_giangvien varchar(10) not null;

alter table Subjects
add constraint fk_subject_teacher
foreign key (ma_giangvien)
references Teacher (ma_giangvien)
on update cascade
on delete cascade;