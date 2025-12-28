create database QuanLyTruongHoc;
use QuanLyTruongHoc;
create table class (
	ma_lop varchar(10) primary key,
    ten_lop varchar(50) not null,
    nam_hoc varchar(10) not null
);
create table student (
	ma_sv varchar(10) primary key,
    ten_sv varchar(50) not null,
    ngay_sinh date not null,
    ma_lop varchar(10) not null,
    constraint  fk_student_class
		foreign key (ma_lop)
        references Class(ma_lop)
        on update cascade
        on delete restrict
);
INSERT INTO class (ma_lop, ten_lop, nam_hoc) VALUES
('D21CNTT1', 'Công nghệ thông tin ', '2021-2025'),
('D21CNTT2', 'Công nghệ thông tin ', '2021-2025');
INSERT INTO student (ma_sv, ten_sv, ngay_sinh, ma_lop) VALUES
('SV01', 'Nguyễn Văn A', '2003-05-10', '1'),
('SV02', 'Trần Thị B', '2003-08-22', '1'),
('SV03', 'Lê Văn C', '2003-11-01', '2');