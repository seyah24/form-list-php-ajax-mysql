-- Database: `giadinhgaubong`

-- --------------------------------------------------------

-- Table structure for table `form_gdgb`
CREATE TABLE IF NOT EXISTS `form_gdgb` (
  `ThoigianTao` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `FormId` int NOT NULL AUTO_INCREMENT, 
  `HovaTen` varchar(100) NOT NULL,
  `Sdt` int(20) NOT NULL,
  `TenGau` varchar(50) NOT NULL,
  `SizeGau` varchar(20) NOT NULL,
  `TenTinhTPh` varchar(30),
  `TenQuanHuyen` varchar(30),
  `TenPhuongXa` varchar(30),
  `DiaChiChiTiet` text,
  PRIMARY KEY (`FormId`)
);

-- --------------------------------------------------------

-- Table structure for table `bangtinhtp`
CREATE TABLE IF NOT EXISTS `bangtinhtp` (
	`TTPID` varchar(10) NOT NULL,
	`TenTinhTPh` varchar(30) NOT NULL,
    PRIMARY KEY (`TTPID`)
);

-- --------------------------------------------------------

-- Table structure for table `bangquanhuyen`
CREATE TABLE IF NOT EXISTS `bangquanhuyen` (
    `QHID` varchar(10) NOT NULL,
	`TTPID` varchar(10) NOT NULL,
    `TenQuanHuyen` varchar(30) NOT NULL,
    PRIMARY KEY (`QHID`)
);

-- --------------------------------------------------------

-- Table structure for table `bangphuongxa`
CREATE TABLE IF NOT EXISTS `bangphuongxa` (
    `PXID` varchar(10) NOT NULL,
	`QHID` varchar(10) NOT NULL,
	`TTPID` varchar(10) NOT NULL,
    `TenPhuongXa` varchar(30) NOT NULL,
    PRIMARY KEY (`PXID`)
);

-- --------------------------------------------------------

-- Table structure for table `clt_form`
/*CREATE TABLE IF NOT EXISTS `clt_form` (
  `cltfid` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int NOT NULL,
  `t_HovaTen` varchar(100) NOT NULL,
  `t_Sdt` int(20) NOT NULL,
  `t_TenGau` varchar(50) NOT NULL,
  `t_SizeGau` varchar(20) NOT NULL,
  `t_TenTinhTPh` varchar(30) NOT NULL,
  `t_TenQuanHuyen` varchar(30) NOT NULL,
  `t_TenPhuongXa` varchar(30) NOT NULL,
  `t_DiaChiChiTiet` text NOT NULL,
  `t_ghichu` text,
  PRIMARY KEY (`cltfid`),
  FOREIGN KEY (FormId) REFERENCES form_gdgb(FormId)
  );*/

-- --------------------------------------------------------

ALTER TABLE bangphuongxa
ADD CONSTRAINT FK_qhtopx
FOREIGN KEY (QHID) REFERENCES bangquanhuyen(QHID);

ALTER TABLE bangphuongxa
ADD CONSTRAINT FK_ttptopx
FOREIGN KEY (TTPID) REFERENCES bangtinhtp(TTPID);

ALTER TABLE bangquanhuyen
ADD CONSTRAINT FK_ttptoqh
FOREIGN KEY (TTPID) REFERENCES bangtinhtp(TTPID);

-- --------------------------------------------------------

-- Dumping data for table `form_gdgb`
INSERT INTO `form_gdgb` (`ThoigianTao`, `FormId`, `HovaTen`, `Sdt`, `TenGau`, `SizeGau`, `TenTinhTPh`, `TenQuanHuyen`, `TenPhuongXa`, `DiaChiChiTiet`) VALUES
('2021-04-20 10:50', '1', 'Tran Ngoc Linh', '0987384754', 'Gấu teddy', 'S', 'Hà Nội', 'Hai Bà Trưng', 'Bách Khoa', 'số 100 Lê Thanh Nghị');
INSERT INTO `form_gdgb` (`ThoigianTao`, `FormId`, `HovaTen`, `Sdt`, `TenGau`, `SizeGau`, `TenTinhTPh`, `TenQuanHuyen`, `TenPhuongXa`, `DiaChiChiTiet`) VALUES
('2021-06-12 15:30', '2', 'Chu Thanh Hang', '0814656765', 'Gấu Minnie', 'M', 'Hà Nội', 'Cầu Giấy', 'Yên Hòa', 'số 27 ngõ 259 Yên Hòa');
INSERT INTO `form_gdgb` (`ThoigianTao`, `FormId`, `HovaTen`, `Sdt`, `TenGau`, `SizeGau`, `TenTinhTPh`, `TenQuanHuyen`, `TenPhuongXa`, `DiaChiChiTiet`) VALUES
('2021-07-02 8:45', '3', 'Truong Thanh Duong', '0913431550', 'Chó Pug', 'S', 'Hà Nội', 'Đống Đa', 'Ngã Tư Sở', 'số 27 Thái Thịnh');

-- --------------------------------------------------------

-- Dumping data for table `bangtinhtp`
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES ('--','--');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES ('AG','An Giang');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('BRVT','Bà Rịa - Vũng Tàu');	
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('BG','Bắc Giang');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('BK','Bắc Kạn');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('BL','Bạc Liêu');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('BN','Bắc Ninh');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('BTr','Bến Tre');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('BDi','Bình Định');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('BDu','Bình Dương');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('BP','Bình Phước');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('BTh','Bình Thuận');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('CM','Cà Mau');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('CT','Cần Thơ');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('CB','Cao Bằng');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('DaNa','Đà Nẵng');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('DL','Đắk Lắk');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('DaNo','Đắk Nông');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('DB','Điện Biên');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('DoNa','Đồng Nai');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('DT','Đồng Tháp');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('GL','Gia Lai');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('HaGi','Hà Giang');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('HNa','Hà Nam');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('HNo','Hà Nội');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('HT','Hà Tĩnh');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('HD','Hải Dương');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('HP','Hải Phòng');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('HauGi','Hậu Giang');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('HB','Hòa Bình');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('HY','Hưng Yên');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('KH','Khánh Hòa');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('KG','Kiên Giang');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('KT','Kon Tum');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('LCh','Lai Châu');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('LD','Lâm Đồng');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('LS','Lạng Sơn');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('LCa','Lào Cai');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('LA','Long An');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('ND','Nam Định');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('NA','Nghệ An');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('NB','Ninh Bình');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('NTL','Ninh Thuận');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('PT','Phú Thọ');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('PY','Phú Yên');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('QB','Quảng Bình');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('QNa','Quảng Nam');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('QNg','Quảng Ngãi');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('QN','Quảng Ninh');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('QT','Quảng Trị');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('ST','Sóc Trăng');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('SL','Sơn La');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('TNi','Tây Ninh');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('TB','Thái Bình');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('TNg','Thái Nguyên');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('TH','Thanh Hóa');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('TTH','Thừa Thiên Huế');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('TG','Tiền Giang');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('HCM','Thành phố Hồ Chí Minh');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('TV','Trà Vinh');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('TQ','Tuyên Quang');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('VL','Vĩnh Long');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('VP','Vĩnh Phúc');
INSERT INTO `bangtinhtp` (`TTPID`, `TenTinhTPh`) 
VALUES('YB','Yên Bái');

-- --------------------------------------------------------

-- Dumping data for table `bangquanhuyen`
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('--', '--', '--');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('AGQH01', 'AG', 'Huyện An Phú');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('AGQH02', 'AG', 'Huyện Châu Phú');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('AGQH03', 'AG', 'Huyện Châu Thành');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('AGQH04', 'AG', 'Huyện Chợ Mới');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('AGQH05', 'AG', 'Huyện Phú Tân');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('AGQH06', 'AG', 'Huyện Tân Châu');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('AGQH07', 'AG', 'Huyện Thoại Sơn');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('AGQH08', 'AG', 'Huyện Tịnh Biên');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('AGQH09', 'AG', 'Huyện Tri Tôn');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('AGQH10', 'AG', 'Thành phố Long Xuyên');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('AGQH11', 'AG', 'Thị xã Châu Đốc');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDiQH01', 'BDi', 'Huyện An Lão');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDiQH02', 'BDi', 'Huyện An Nhơn');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDiQH03', 'BDi', 'Huyện Hoài Ân');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDiQH04', 'BDi', 'Huyện Hoài Nhơn');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDiQH05', 'BDi', 'Huyện Phù Cát');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDiQH06', 'BDi', 'Huyện Phù Mỹ');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDiQH07', 'BDi', 'Huyện Tây Sơn');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDiQH08', 'BDi', 'Huyện Tuy Phước');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDiQH09', 'BDi', 'Huyện Vân Canh');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDiQH10', 'BDi', 'Huyện Vĩnh Thạnh');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDiQH11', 'BDi', 'Thành phố Quy Nhơn');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDuQH01', 'BDu', 'Huyện Bến Cát');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDuQH02', 'BDu', 'Huyện Dầu Tiếng');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDuQH03', 'BDu', 'Huyện Dĩ An');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDuQH04', 'BDu', 'Huyện Phú Giáo');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDuQH05', 'BDu', 'Huyện Tân Uyên');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDuQH06', 'BDu', 'Huyện Thuận An');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BDuQH07', 'BDu', 'Thị xã Thủ Dầu Một');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BGQH01', 'BG', 'Huyện Hiệp Hòa');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BGQH02', 'BG', 'Huyện Lạng Giang');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BGQH03', 'BG', 'Huyện Lục Nam');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BGQH04', 'BG', 'Huyện Lục Ngạn');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BGQH05', 'BG', 'Huyện Sơn Động');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BGQH06', 'BG', 'Huyện Tân Yên');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BGQH07', 'BG', 'Huyện Việt Yên');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BGQH08', 'BG', 'Huyện Yên Dũng');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BGQH09', 'BG', 'Huyện Yên Thế');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BGQH10', 'BG', 'Thành phố Bắc Giang');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BKQH01', 'BK', 'Huyện Ba Bể');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BKQH02', 'BK', 'Huyện Bạch Thông');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BKQH03', 'BK', 'Huyện Chợ Đồn');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BKQH04', 'BK', 'Huyện Na Rì');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BKQH05', 'BK', 'Huyện Ngân Sơn');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BKQH06', 'BK', 'Huyện Pác Nặm');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BKQH07', 'BK', 'Thị xã Bắc Kạn');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BLQH01', 'BL', 'Huyện Đông Hải');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BLQH02', 'BL', 'Huyện Gia Rai');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BLQH03', 'BL', 'Huyện Hòa Bình');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BLQH04', 'BL', 'Huyện Hồng Dân');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BLQH05', 'BL', 'Huyện Phước Long');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BLQH06', 'BL', 'Huyện Vĩnh Lợi');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BLQH07', 'BL', 'Thị xã Bạc Liêu');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BNQH01', 'BN', 'Huyện Gia Bình');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BNQH02', 'BN', 'Huyện Lương Tài');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BNQH03', 'BN', 'Huyện Quế Võ');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BNQH04', 'BN', 'Huyện Thuận Thành');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BNQH05', 'BN', 'Huyện Tiên Du');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BNQH06', 'BN', 'Huyện Yên Phong');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BNQH07', 'BN', 'Thành phố Bắc Ninh');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BNQH08', 'BN', 'Thị xã Từ Sơn');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BPQH01', 'BP', 'Huyện Bình Long');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BPQH02', 'BP', 'Huyện Bù Đăng');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BPQH03', 'BP', 'Huyện Bù Đốp');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BPQH04', 'BP', 'Huyện Chơn Thành');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BPQH05', 'BP', 'Huyện Đồng Phù');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BPQH06', 'BP', 'Huyện Lộc Ninh');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BPQH07', 'BP', 'Huyện Phước Long');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BPQH08', 'BP', 'Thị xã Đồng Xoài');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BRVTQH01', 'BRVT', 'Huyện Châu Đức');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BRVTQH02', 'BRVT', 'Huyện Côn Đảo');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BRVTQH03', 'BRVT', 'Huyện Đất Đỏ');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BRVTQH04', 'BRVT', 'Huyện Long Điền');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BRVTQH05', 'BRVT', 'Huyện Tân Thành');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BRVTQH06', 'BRVT', 'Huyện Xuyên Mộc');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BRVTQH07', 'BRVT', 'Thành phố Vũng Tàu');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BRVTQH08', 'BRVT', 'Thị xã Bà Rịa');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BThQH01', 'BTh', 'Huyện Bắc Bình');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BThQH02', 'BTh', 'Huyện Đức Linh');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BThQH03', 'BTh', 'Huyện Hàm Tân');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BThQH04', 'BTh', 'Huyện Hàm Thuận Bắc');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BThQH05', 'BTh', 'Huyện Hàm Thuận Nam');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BThQH06', 'BTh', 'Huyện Phú Quí');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BThQH07', 'BTh', 'Huyện Tánh Linh');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BThQH08', 'BTh', 'Huyện Tuy Phong');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BThQH09', 'BTh', 'Thành phố Phan Thiết');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BThQH10', 'BTh', 'Thị xã La Gi');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BTrQH01', 'BTr', 'Huyện Ba Tri');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BTrQH02', 'BTr', 'Huyện Bình Đại');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BTrQH03', 'BTr', 'Huyện Chợ Lách');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BTrQH04', 'BTr', 'Huyện Giồng Trôm');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BTrQH05', 'BTr', 'Huyện Mỏ Cày Bắc');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BTrQH06', 'BTr', 'Huyện Mỏ Cày Nam');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BTrQH07', 'BTr', 'Huyện Thạnh Phú');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('BTrQH08', 'BTr', 'Thị xã Bến Tre');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH01', 'CB', 'Huyện Bảo Lạc');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH02', 'CB', 'Huyện Hạ Lang');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH03', 'CB', 'Huyện Hà Quảng');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH04', 'CB', 'Huyện Hoà An');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH05', 'CB', 'Huyện Nguyên Bình');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH06', 'CB', 'Huyện Phục Hoà');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH07', 'CB', 'Huyện Quảng Uyên');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH08', 'CB', 'Huyện Thạch An');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH09', 'CB', 'Huyện Thông Nông');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH10', 'CB', 'Huyện Trà Lĩnh');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH11', 'CB', 'Huyện Trùng Khánh');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH12', 'CB', 'Huyện Bảo Lâm');
INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('CBQH13', 'CB', 'Thị xã Cao Bằng');
/*INSERT INTO `bangquanhuyen` (`QHID`, `TTPID`, `TenQuanHuyen`) VALUES
('', '', '');*/


-- --------------------------------------------------------

-- Dumping data for table `bangphuongxa`
INSERT INTO `bangphuongxa` (`PXID`, `QHID`, `TTPID`, `TenPhuongXa`) VALUES
('--', '--', '--', '--');
INSERT INTO `bangphuongxa` (`PXID`, `QHID`, `TTPID`, `TenPhuongXa`) VALUES
('AGQH01PX01', 'AGQH01', 'AG', 'Thị trấn An Phú');
INSERT INTO `bangphuongxa` (`PXID`, `QHID`, `TTPID`, `TenPhuongXa`) VALUES
('AGQH01PX02', 'AGQH01', 'AG', 'Thị trấn Long Bình');
INSERT INTO `bangphuongxa` (`PXID`, `QHID`, `TTPID`, `TenPhuongXa`) VALUES
('AGQH01PX03', 'AGQH01', 'AG', 'Xã Đa Phước');
INSERT INTO `bangphuongxa` (`PXID`, `QHID`, `TTPID`, `TenPhuongXa`) VALUES
('AGQH01PX04', 'AGQH01', 'AG', 'Xã Khánh An');
INSERT INTO `bangphuongxa` (`PXID`, `QHID`, `TTPID`, `TenPhuongXa`) VALUES
('AGQH01PX05', 'AGQH01', 'AG', 'Xã Khánh Bình');
INSERT INTO `bangphuongxa` (`PXID`, `QHID`, `TTPID`, `TenPhuongXa`) VALUES
('AGQH01PX06', 'AGQH01', 'AG', 'Xã Nhơn Hội');
INSERT INTO `bangphuongxa` (`PXID`, `QHID`, `TTPID`, `TenPhuongXa`) VALUES
('AGQH01PX07', 'AGQH01', 'AG', 'Xã Phú Hội');
INSERT INTO `bangphuongxa` (`PXID`, `QHID`, `TTPID`, `TenPhuongXa`) VALUES
('AGQH01PX08', 'AGQH01', 'AG', 'Xã Phú Hữu');

-- --------------------------------------------------------

-- Dumping data for table `clt_form`
/* INSERT INTO `clt_form` (`notes_id`, `course`, `topic`, `date`, `notes`, `video`, `summary`) 
--VALUES(7, 'Au hoc', 'Tam tu kinh', '30/04/2016', 'tam tu kinh.pdf', 'none', 'none');*/

-- --------------------------------------------------------

