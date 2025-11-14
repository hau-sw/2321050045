CREATE DATABASE IF NOT EXISTS ql_webphim;
USE ql_webphim;
/*  1.thể loại
	-id:INT primary key
    -ten_the_loai: VARCHAR(50)
	2. phim
    - id : INT primary key
    - dao_dien: VARCHAR2
    - dien_vien: VARCHAR
    
    3.người dùng
    - id :Int 
    - tai_khoan :int
    - tenNguoiDung varchar(50)
    - matKhau varchar(50)
    - ho_ten varchar(50)
    - email varchar(50)
    - sdt varchar(10)
    - quyen_id int
    - ngay_sinh datetime
    4.quốc gia
    5.tập phim*/  
CREATE TABLE the_loai(
    id INT
  );