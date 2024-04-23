USE [Learning SQL-Kteam]
-- Bắt buộc phải thêm dòng này để biết đang chạy trên Query nào

CREATE TABLE GiaoVien
(
MaGV NVARCHAR(10),
NameGV NVARCHAR(100)
)	
go
-- Tạo bảng
CREATE TABLE HocSinh
(
MaHS NVARCHAR(10),
NameHS NVARCHAR(100)
)
go
-- Thêm 1 cột khác trong bẳng
Alter table HocSinh ADD Ngaysinh DATE


-- Xóa dữ liệu trong bảng
-- Truncate table HocSinh

-- xóa bảng
-- drop table HocSinh
-- go


insert HocSinh	
values ( N'3',
		N'Ai đó',
		'20000909'
		)
Delete HocSinh where NameHS = 'Tú Tú'
