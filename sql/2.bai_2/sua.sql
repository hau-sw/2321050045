-- tạo database
CREATE DATABASE if NOT EXISTS quan_ly_web_phim;
USE quan_ly_web_phim;

-- 1. Bảng thể loại
CREATE TABLE IF NOT EXISTS the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_the_loai VARCHAR(50) NOT NULL
);

-- 2. Bảng vai trò
CREATE TABLE IF NOT EXISTS vai_tro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_vai_tro VARCHAR(20) NOT NULL
);

-- 3. Bảng quốc gia
CREATE TABLE IF NOT EXISTS quoc_gia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_quoc_gia VARCHAR(50) NOT NULL
);

-- 4. Bảng người dùng
CREATE TABLE IF NOT EXISTS nguoi_dung (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_dang_nhap VARCHAR(50) NOT NULL,
    mat_khau VARCHAR(50) NOT NULL,
    ho_ten VARCHAR(50),
    email VARCHAR(50),
    sdt VARCHAR(10),
    vai_tro_id INT,
    ngay_sinh DATETIME,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);

-- 5. Bảng phim
CREATE TABLE IF NOT EXISTS phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_phim VARCHAR(255) NOT NULL,
    dao_dien_id INT,
    nam_phat_hanh INT,
    poster VARCHAR(255),
    quoc_gia_id INT,
    so_tap INT,
    trailer VARCHAR(255),
    mo_ta TEXT,
    FOREIGN KEY (dao_dien_id) REFERENCES nguoi_dung(id),
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id)
);

-- 6. Bảng phim - diễn viên
CREATE TABLE IF NOT EXISTS phim_dien_vien (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT,
    dien_vien_id INT,
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (dien_vien_id) REFERENCES nguoi_dung(id)
);

-- 7. Bảng phim - thể loại
CREATE TABLE IF NOT EXISTS phim_the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT,
    the_loai_id INT,
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);

-- 8. Bảng tập phim
CREATE TABLE IF NOT EXISTS tap_phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    so_tap INT,
    tieu_de VARCHAR(255),
    phim_id INT,
    thoi_luong FLOAT,
    trailer VARCHAR(255),
    FOREIGN KEY (phim_id) REFERENCES phim(id)
);

-- thêm dữ liệu vào bảng
INSERT INTO the_loai (
ten_the_loai
) 
VALUES
('Hành động'), ('Kinh dị'), ('Tình cảm'), ('Hài'),
('Phiêu lưu'), ('Viễn tưởng'), ('Hoạt hình'), ('Tâm lý'),
('Chiến tranh'), ('Học đường'), ('Gia đình'), ('Âm nhạc'),
('Trinh thám'), ('Thần thoại'), ('Zombie'), ('Cổ trang'),
('Siêu anh hùng'), ('Lãng mạn'), ('Hình sự'), ('Võ thuật'),
('Thể thao'), ('Drama'), ('TV Show'), ('Phim ngắn'),
('Tội phạm'), ('Phi công'), ('Thám hiểm'), ('Bí ẩn'),
('Khoa học'), ('Kinh điển');

INSERT INTO vai_tro(
	ten_vai_tro
) 
VALUES
('admin'), ('user'), ('editor'), ('manager'), ('vip'),
('mod'), ('guest'), ('root'), ('premium'), ('staff'),
('owner'), ('reviewer'), ('creator'), ('member'),
('tester'), ('reporter'), ('support'), ('writer'),
('upload'), ('director'), ('producer'), ('team'),
('audit'), ('dev'), ('qa'), ('leader'), ('chief'),
('viewer'), ('partner'), ('operator');

INSERT INTO quoc_gia (
	ten_quoc_gia
) 
VALUES
('Việt Nam'),('Hàn Quốc'),('Nhật Bản'),('Trung Quốc'),
('Mỹ'),('Anh'),('Pháp'),('Thái Lan'),('Ấn Độ'),
('Đức'),('Canada'),('Úc'),('Tây Ban Nha'),('Ý'),
('Brazil'),('Mexico'),('Singapore'),('Malaysia'),
('Nga'),('UAE'),('Thổ Nhĩ Kỳ'),('Na Uy'),('Thuỵ Điển'),
('Đan Mạch'),('Hà Lan'),('Philippines'),('Indonesia'),
('Bỉ'),('Ba Lan'),('Bồ Đào Nha');
	
INSERT INTO nguoi_dung 
(ten_dang_nhap, mat_khau, ho_ten, email, sdt, vai_tro_id, ngay_sinh)
VALUES
('user1','123','Nguyễn A','u1@gmail.com','0123456780',2,'2000-01-01'),
('user2','123','Nguyễn B','u2@gmail.com','0123456781',2,'2000-02-01'),
('user3','123','Nguyễn C','u3@gmail.com','0123456782',2,'2000-03-01'),
('user4','123','Nguyễn D','u4@gmail.com','0123456783',2,'2000-04-01'),
('user5','123','Nguyễn E','u5@gmail.com','0123456784',2,'2000-05-01'),
('user6','123','Nguyễn F','u6@gmail.com','0123456785',2,'2000-06-01'),
('user7','123','Nguyễn G','u7@gmail.com','0123456786',2,'2000-07-01'),
('user8','123','Nguyễn H','u8@gmail.com','0123456787',2,'2000-08-01'),
('user9','123','Nguyễn I','u9@gmail.com','0123456788',2,'2000-09-01'),
('user10','123','Nguyễn J','u10@gmail.com','0123456789',2,'2000-10-01'),
('user11','123','Nguyễn K','u11@gmail.com','0123456790',2,'2000-11-01'),
('user12','123','Nguyễn L','u12@gmail.com','0123456791',2,'2000-12-01'),
('user13','123','Nguyễn M','u13@gmail.com','0123456792',2,'2001-01-01'),
('user14','123','Nguyễn N','u14@gmail.com','0123456793',2,'2001-02-01'),
('user15','123','Nguyễn O','u15@gmail.com','0123456794',2,'2001-03-01'),
('user16','123','Nguyễn P','u16@gmail.com','0123456795',2,'2001-04-01'),
('user17','123','Nguyễn Q','u17@gmail.com','0123456796',2,'2001-05-01'),
('user18','123','Nguyễn R','u18@gmail.com','0123456797',2,'2001-06-01'),
('user19','123','Nguyễn S','u19@gmail.com','0123456798',2,'2001-07-01'),
('user20','123','Nguyễn T','u20@gmail.com','0123456799',2,'2001-08-01'),
('user21','123','Nguyễn U','u21@gmail.com','0123456700',2,'2001-09-01'),
('user22','123','Nguyễn V','u22@gmail.com','0123456701',2,'2001-10-01'),
('user23','123','Nguyễn W','u23@gmail.com','0123456702',2,'2001-11-01'),
('user24','123','Nguyễn X','u24@gmail.com','0123456703',2,'2001-12-01'),
('user25','123','Nguyễn Y','u25@gmail.com','0123456704',2,'2002-01-01'),
('user26','123','Nguyễn Z','u26@gmail.com','0123456705',2,'2002-02-01'),
('user27','123','Nguyễn AA','u27@gmail.com','0123456706',2,'2002-03-01'),
('user28','123','Nguyễn AB','u28@gmail.com','0123456707',2,'2002-04-01'),
('user29','123','Nguyễn AC','u29@gmail.com','0123456708',2,'2002-05-01'),
('user30','123','Nguyễn AD','u30@gmail.com','0123456709',2,'2002-06-01');

INSERT INTO phim
(ten_phim, dao_dien_id, nam_phat_hanh, poster, quoc_gia_id, so_tap, trailer, mo_ta)
VALUES
('Phim 1',1,2020,'poster1.jpg',1,10,'trailer1.mp4','Mô tả phim 1'),
('Phim 2',1,2020,'poster2.jpg',1,12,'trailer2.mp4','Mô tả phim 2'),
('Phim 3',2,2021,'poster3.jpg',2,8,'trailer3.mp4','Mô tả phim 3'),
('Phim 4',2,2021,'poster4.jpg',2,15,'trailer4.mp4','Mô tả phim 4'),
('Phim 5',3,2019,'poster5.jpg',3,20,'trailer5.mp4','Mô tả phim 5'),
('Phim 6',3,2019,'poster6.jpg',3,25,'trailer6.mp4','Mô tả phim 6'),
('Phim 7',4,2022,'poster7.jpg',1,16,'trailer7.mp4','Mô tả phim 7'),
('Phim 8',4,2022,'poster8.jpg',1,10,'trailer8.mp4','Mô tả phim 8'),
('Phim 9',5,2023,'poster9.jpg',2,24,'trailer9.mp4','Mô tả phim 9'),
('Phim 10',5,2023,'poster10.jpg',2,30,'trailer10.mp4','Mô tả phim 10'),
('Phim 11',1,2018,'poster11.jpg',3,5,'trailer11.mp4','Mô tả phim 11'),
('Phim 12',2,2018,'poster12.jpg',1,8,'trailer12.mp4','Mô tả phim 12'),
('Phim 13',3,2017,'poster13.jpg',2,12,'trailer13.mp4','Mô tả phim 13'),
('Phim 14',4,2017,'poster14.jpg',3,20,'trailer14.mp4','Mô tả phim 14'),
('Phim 15',5,2016,'poster15.jpg',1,15,'trailer15.mp4','Mô tả phim 15'),
('Phim 16',1,2016,'poster16.jpg',1,6,'trailer16.mp4','Mô tả phim 16'),
('Phim 17',2,2015,'poster17.jpg',2,18,'trailer17.mp4','Mô tả phim 17'),
('Phim 18',3,2015,'poster18.jpg',2,22,'trailer18.mp4','Mô tả phim 18'),
('Phim 19',4,2014,'poster19.jpg',3,9,'trailer19.mp4','Mô tả phim 19'),
('Phim 20',5,2014,'poster20.jpg',3,14,'trailer20.mp4','Mô tả phim 20'),
('Phim 21',1,2024,'poster21.jpg',1,12,'trailer21.mp4','Mô tả phim 21'),
('Phim 22',2,2024,'poster22.jpg',1,10,'trailer22.mp4','Mô tả phim 22'),
('Phim 23',3,2023,'poster23.jpg',2,16,'trailer23.mp4','Mô tả phim 23'),
('Phim 24',4,2022,'poster24.jpg',3,5,'trailer24.mp4','Mô tả phim 24'),
('Phim 25',5,2021,'poster25.jpg',1,8,'trailer25.mp4','Mô tả phim 25'),
('Phim 26',1,2020,'poster26.jpg',2,20,'trailer26.mp4','Mô tả phim 26'),
('Phim 27',2,2019,'poster27.jpg',3,11,'trailer27.mp4','Mô tả phim 27'),
('Phim 28',3,2018,'poster28.jpg',1,14,'trailer28.mp4','Mô tả phim 28'),
('Phim 29',4,2017,'poster29.jpg',2,21,'trailer29.mp4','Mô tả phim 29'),
('Phim 30',5,2016,'poster30.jpg',3,25,'trailer30.mp4','Mô tả phim 30');

INSERT INTO phim_dien_vien (phim_id, dien_vien_id)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,28),
(29,29),
(30,30);

INSERT INTO phim_the_loai (phim_id, the_loai_id)
VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,8),(9,9),(10,10),
(11,1),(12,2),(13,3),(14,4),(15,5),
(16,6),(17,7),(18,8),(19,9),(20,10),
(21,1),(22,2),(23,3),(24,4),(25,5),
(26,6),(27,7),(28,8),(29,9),(30,10);

INSERT INTO tap_phim (so_tap, tieu_de, phim_id, thoi_luong, trailer)
VALUES
(1,'Tập 1',1,45,'tap1.mp4'),
(2,'Tập 2',2,46,'tap2.mp4'),
(3,'Tập 3',3,47,'tap3.mp4'),
(4,'Tập 4',4,48,'tap4.mp4'),
(5,'Tập 5',5,49,'tap5.mp4'),
(6,'Tập 6',6,50,'tap6.mp4'),
(7,'Tập 7',7,44,'tap7.mp4'),
(8,'Tập 8',8,43,'tap8.mp4'),
(9,'Tập 9',9,42,'tap9.mp4'),
(10,'Tập 10',10,41,'tap10.mp4'),
(11,'Tập 11',1,45,'tap11.mp4'),
(12,'Tập 12',2,46,'tap12.mp4'),
(13,'Tập 13',3,47,'tap13.mp4'),
(14,'Tập 14',4,48,'tap14.mp4'),
(15,'Tập 15',5,49,'tap15.mp4'),
(16,'Tập 16',6,50,'tap16.mp4'),
(17,'Tập 17',7,44,'tap17.mp4'),
(18,'Tập 18',8,43,'tap18.mp4'),
(19,'Tập 19',9,42,'tap19.mp4'),
(20,'Tập 20',10,41,'tap20.mp4'),
(21,'Tập 21',1,45,'tap21.mp4'),
(22,'Tập 22',2,46,'tap22.mp4'),
(23,'Tập 23',3,47,'tap23.mp4'),
(24,'Tập 24',4,48,'tap24.mp4'),
(25,'Tập 25',5,49,'tap25.mp4'),
(26,'Tập 26',6,50,'tap26.mp4'),
(27,'Tập 27',7,44,'tap27.mp4'),
(28,'Tập 28',8,43,'tap28.mp4'),
(29,'Tập 29',9,42,'tap29.mp4'),
(30,'Tập 30',10,41,'tap30.mp4');

