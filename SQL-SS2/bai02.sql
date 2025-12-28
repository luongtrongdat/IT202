create database QuanLyMonHocSinhVien;
use QuanLyMonHocSinhVien;
create table Student (
	ma_sv varchar(10) primary key unique,
    ho_ten varchar(50) not null
);
create table Subjects (
	ma_mon varchar(10) primary key,
    ten_mon varchar(50) not null unique,
    so_tin_chi int not null check(so_tin_chi > 0)
);
INSERT INTO Student (ma_sv, ho_ten) VALUES
('SV01', 'Nguyễn Văn A'),
('SV02', 'Trần Thị B'),
('SV03', 'Lê Văn C');
INSERT INTO Student VALUES ('SV01', 'Dat');

