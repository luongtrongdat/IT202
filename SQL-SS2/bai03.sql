create database QuanLyDangKyMonHoc;
use QuanLyDangKyMonHoc;
create table Student (
	ma_sv varchar(10) primary key unique,
    ho_ten varchar(50) not null
);
create table Subjects (
	ma_mon varchar(10) primary key unique,
    ten_mon varchar(50) not null,
    so_tin_chi int not null check (so_tin_chi > 0 )
);
create table Enrollment(
	ma_sv varchar(10) not null,
    ma_mon varchar(10) not null,
    ngay_dang_ky date not null,
    
	constraint fk_enrollment 
	primary key(ma_sv,ma_mon),
	
    constraint fk_enrollment_student
    foreign key (ma_sv)
    references Student(ma_sv)
    on update cascade
    on delete cascade,
	
    constraint fk_enrollment_subjects
    foreign key (ma_mon)
    references Subjects(ma_mon)
    on update cascade
    on delete cascade
);