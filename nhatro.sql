-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 08, 2022 lúc 10:45 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhatro`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuphong`
--

CREATE TABLE `chuphong` (
  `MaCP` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Ten` varchar(40) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `GioiTinh` varchar(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SDT` int(10) NOT NULL,
  `CMND` int(10) NOT NULL,
  `Username` varchar(20) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `UserPass` varchar(20) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chuphong`
--

INSERT INTO `chuphong` (`MaCP`, `Ten`, `GioiTinh`, `SDT`, `CMND`, `Username`, `UserPass`) VALUES
('CP01', 'Pham Tuan Anh', 'Nam', 2147483647, 25841313, 'tuananh@gmail.com', '123456'),
('CP02', 'Dan', 'Nam', 372303381, 152268261, 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangkidichvu`
--

CREATE TABLE `dangkidichvu` (
  `ID` int(10) NOT NULL,
  `MaDV` int(11) NOT NULL,
  `MaHopDong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dangkidichvu`
--

INSERT INTO `dangkidichvu` (`ID`, `MaDV`, `MaHopDong`) VALUES
(29, 5, 10020),
(30, 7, 10020),
(33, 6, 10020),
(34, 1, 34214),
(35, 2, 34214),
(36, 8, 29923),
(37, 0, 83123),
(38, 0, 10023),
(39, 0, 29923),
(40, 0, 77845),
(41, 1, 83123),
(42, 0, 10101010);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `MaDV` int(11) NOT NULL,
  `TenDV` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `DonGia` decimal(18,0) NOT NULL,
  `DonViTinh` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`MaDV`, `TenDV`, `DonGia`, `DonViTinh`) VALUES
(0, 'Vệ sinh ', '30000', '/nguoi'),
(1, 'Giữ xe', '100000', '/nguoi'),
(2, 'internet', '60000', '/nguoi'),
(5, 'AnXin 24h', '30000', 'Người'),
(6, 'Yêu 24h', '1000000', 'Người'),
(7, 'Giả vờ Yêu', '1000000', 'Người'),
(8, 'Mua hàng hộ', '1000000', 'Người');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `Ten` varchar(40) COLLATE utf8_vietnamese_ci NOT NULL,
  `GioiTinh` varchar(5) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SDT` int(10) NOT NULL,
  `CMND` int(10) NOT NULL,
  `Trangthaitro` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `Ten`, `GioiTinh`, `SDT`, `CMND`, `Trangthaitro`) VALUES
('KH00', ' Phạm Tuấn Anh', 'Nam', 366532866, 152268261, 1),
('KH01', 'Nguyễn Viết Dân', 'Nam', 372303381, 1872346, 1),
('KH02', 'Lê Thanh Hải', 'Nam', 368467251, 2147483647, 1),
('KH03', 'Nguyễn Đình Nam', 'Nam', 445564564, 1872346, 0),
('KH04', 'Trần Thị Thu', 'Nữ', 78132465, 745456, 1),
('KH05', 'Nguyễn Thị Mỹ Hạnh', 'Nữ', 2147483647, 15877456, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuvuc`
--

CREATE TABLE `khuvuc` (
  `MaKV` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenKV` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT 'Noname'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khuvuc`
--

INSERT INTO `khuvuc` (`MaKV`, `TenKV`) VALUES
('KV00', 'Hai Bà Trưng'),
('KV01', 'Nam Từ Niêm'),
('KV02', 'Hà Đông'),
('KV03', 'Thanh Xuân'),
('KV04', 'Thanh Mien'),
('KV220399', 'Trần Thái Tông');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongtro`
--

CREATE TABLE `phongtro` (
  `MaPT` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `MaKV` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `SoPhong` int(11) DEFAULT NULL,
  `Tang` int(2) NOT NULL,
  `DienTich` decimal(4,2) NOT NULL,
  `GiaTienThue` int(11) NOT NULL,
  `SLToiDa` int(2) NOT NULL,
  `SLHienTai` int(2) NOT NULL,
  `DiaChi` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phongtro`
--

INSERT INTO `phongtro` (`MaPT`, `MaKV`, `SoPhong`, `Tang`, `DienTich`, `GiaTienThue`, `SLToiDa`, `SLHienTai`, `DiaChi`) VALUES
('PT00', 'KV00', 301, 3, '15.50', 1500000, 4, 3, '101 Dai La'),
('PT01', 'KV00', 401, 4, '15.50', 1500000, 4, 1, '104 Dai La'),
('PT03', 'KV02', 511, 5, '15.50', 1500000, 4, 1, '501 Trương Định'),
('PT2203', 'KV04', 2202, 22, '15.00', 30000000, 4, 0, '267 Kom Tom'),
('PT220399', 'KV220399', 12499, 22, '15.00', 30000000, 4, 0, '1041 Đại La-Hai Bà Trưng'),
('PT9999', 'KV03', 2202, 22, '15.00', 30000000, 4, 0, '1041 Đại La-Hai Bà Trưng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongtro_view`
--

CREATE TABLE `phongtro_view` (
  `MaPT` varchar(10) DEFAULT NULL,
  `MaKV` varchar(10) DEFAULT NULL,
  `TenKV` varchar(30) DEFAULT NULL,
  `SoPhong` int(11) DEFAULT NULL,
  `Tang` int(2) DEFAULT NULL,
  `DienTich` decimal(4,2) DEFAULT NULL,
  `GiaTienThue` int(11) DEFAULT NULL,
  `SLToiDa` int(2) DEFAULT NULL,
  `SLHienTai` int(2) DEFAULT NULL,
  `DiaChi` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanlihopdong`
--

CREATE TABLE `quanlihopdong` (
  `MaHopDong` int(11) NOT NULL,
  `MaKhachHang` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `MaPT` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `TGThue` int(11) NOT NULL,
  `NgaySuDung` date NOT NULL,
  `NgayKetThuc` date NOT NULL,
  `TienThue` decimal(12,0) NOT NULL,
  `TrangThaiHD` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quanlihopdong`
--

INSERT INTO `quanlihopdong` (`MaHopDong`, `MaKhachHang`, `MaPT`, `TGThue`, `NgaySuDung`, `NgayKetThuc`, `TienThue`, `TrangThaiHD`) VALUES
(1042, 'KH05', 'PT03', 2, '2021-01-24', '2021-03-24', '3000000', 0),
(10020, 'KH00', 'PT00', 6, '2020-01-01', '2020-06-01', '9000000', 0),
(10023, 'KH01', 'PT00', 6, '2020-01-01', '2020-06-01', '9000000', 1),
(29923, 'KH02', 'PT01', 6, '2020-01-01', '2020-06-01', '9000000', 1),
(34214, 'KH00', 'PT00', 6, '0000-00-00', '0000-00-00', '9000000', 0),
(77845, 'KH00', 'PT01', 5, '2021-01-23', '2021-06-23', '7500000', 1),
(83123, 'KH04', 'PT03', 6, '2020-12-28', '2021-01-10', '9000000', 0),
(994778, 'KH00', 'PT03', 4, '2021-01-23', '2021-05-23', '6000000', 1),
(10101010, 'KH02', 'PT00', 5, '2021-01-23', '2021-06-23', '7500000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanlyhopdong_view`
--

CREATE TABLE `quanlyhopdong_view` (
  `MaHopDong` int(11) DEFAULT NULL,
  `MaKhachHang` varchar(10) DEFAULT NULL,
  `Ten` varchar(40) DEFAULT NULL,
  `MaPT` varchar(10) DEFAULT NULL,
  `SoPhong` int(11) DEFAULT NULL,
  `DiaChi` varchar(60) DEFAULT NULL,
  `TGThue` int(11) DEFAULT NULL,
  `NgaySuDung` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL,
  `TienThue` decimal(12,0) DEFAULT NULL,
  `TrangThaiHD` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanlyphieuthu`
--

CREATE TABLE `quanlyphieuthu` (
  `MaPhieuThuDV` int(11) NOT NULL,
  `MaKhachHang` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `MaPT` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `GhiChu` varchar(40) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Tien` decimal(18,0) NOT NULL,
  `NgayThu` date NOT NULL,
  `TrangThaiPhieu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quanlyphieuthu`
--

INSERT INTO `quanlyphieuthu` (`MaPhieuThuDV`, `MaKhachHang`, `MaPT`, `GhiChu`, `Tien`, `NgayThu`, `TrangThaiPhieu`) VALUES
(12499, 'KH05', 'PT03', 'không', '0', '2021-01-29', 0),
(78955, 'KH05', 'PT03', 'không', '0', '2021-01-23', 0),
(123444, 'KH00', 'PT01', 'không', '30', '2021-01-23', 1),
(789000, 'KH02', 'PT00', 'không', '30', '2021-01-31', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanlyphieuthu_view`
--

CREATE TABLE `quanlyphieuthu_view` (
  `MaPhieuThuDV` int(11) DEFAULT NULL,
  `MaKhachHang` varchar(10) DEFAULT NULL,
  `MaPT` varchar(10) DEFAULT NULL,
  `GhiChu` varchar(40) DEFAULT NULL,
  `Tien` decimal(18,0) DEFAULT NULL,
  `NgayThu` date DEFAULT NULL,
  `TrangThaiPhieu` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chuphong`
--
ALTER TABLE `chuphong`
  ADD PRIMARY KEY (`MaCP`),
  ADD UNIQUE KEY `UNIQUE_CHUPHONG_ACC` (`Username`);

--
-- Chỉ mục cho bảng `dangkidichvu`
--
ALTER TABLE `dangkidichvu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaHopDong` (`MaHopDong`),
  ADD KEY `MaDV` (`MaDV`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`MaDV`),
  ADD UNIQUE KEY `UNIQUE_DICHVU` (`TenDV`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Chỉ mục cho bảng `khuvuc`
--
ALTER TABLE `khuvuc`
  ADD PRIMARY KEY (`MaKV`);

--
-- Chỉ mục cho bảng `phongtro`
--
ALTER TABLE `phongtro`
  ADD PRIMARY KEY (`MaPT`),
  ADD KEY `MaKV` (`MaKV`);

--
-- Chỉ mục cho bảng `quanlihopdong`
--
ALTER TABLE `quanlihopdong`
  ADD PRIMARY KEY (`MaHopDong`),
  ADD UNIQUE KEY `MaHopDong` (`MaHopDong`),
  ADD KEY `MaPT` (`MaPT`),
  ADD KEY `MaKhachHang` (`MaKhachHang`);

--
-- Chỉ mục cho bảng `quanlyphieuthu`
--
ALTER TABLE `quanlyphieuthu`
  ADD PRIMARY KEY (`MaPhieuThuDV`),
  ADD KEY `MaPT` (`MaPT`),
  ADD KEY `MaKhachHang` (`MaKhachHang`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dangkidichvu`
--
ALTER TABLE `dangkidichvu`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dangkidichvu`
--
ALTER TABLE `dangkidichvu`
  ADD CONSTRAINT `dangkidichvu_ibfk_1` FOREIGN KEY (`MaHopDong`) REFERENCES `quanlihopdong` (`MaHopDong`),
  ADD CONSTRAINT `dangkidichvu_ibfk_2` FOREIGN KEY (`MaDV`) REFERENCES `dichvu` (`MaDV`);

--
-- Các ràng buộc cho bảng `phongtro`
--
ALTER TABLE `phongtro`
  ADD CONSTRAINT `phongtro_ibfk_1` FOREIGN KEY (`MaKV`) REFERENCES `khuvuc` (`MaKV`);

--
-- Các ràng buộc cho bảng `quanlihopdong`
--
ALTER TABLE `quanlihopdong`
  ADD CONSTRAINT `quanlihopdong_ibfk_1` FOREIGN KEY (`MaPT`) REFERENCES `phongtro` (`MaPT`),
  ADD CONSTRAINT `quanlihopdong_ibfk_2` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`);

--
-- Các ràng buộc cho bảng `quanlyphieuthu`
--
ALTER TABLE `quanlyphieuthu`
  ADD CONSTRAINT `quanlyphieuthu_ibfk_1` FOREIGN KEY (`MaPT`) REFERENCES `phongtro` (`MaPT`),
  ADD CONSTRAINT `quanlyphieuthu_ibfk_3` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
