-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 05, 2022 lúc 05:45 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `school`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `ClassId` int(255) NOT NULL,
  `NameClass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `class`
--

INSERT INTO `class` (`ClassId`, `NameClass`) VALUES
(1, 'K34DL'),
(2, 'K34DH'),
(3, 'K33DL'),
(4, 'K33DH');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `result`
--

CREATE TABLE `result` (
  `ResultId` int(11) NOT NULL,
  `Point` float NOT NULL,
  `StudentId` int(255) NOT NULL,
  `SubjectId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `result`
--

INSERT INTO `result` (`ResultId`, `Point`, `StudentId`, `SubjectId`) VALUES
(16, 2.3, 1, 1),
(17, 6.4, 1, 2),
(18, 9, 1, 2),
(19, 7, 1, 4),
(20, 2.1, 1, 5),
(21, 1.2, 10, 1),
(22, 6.4, 10, 2),
(23, 7.2, 10, 4),
(24, 3.7, 12, 2),
(25, 4.5, 12, 1),
(26, 7.8, 12, 5),
(27, 6.5, 19, 2),
(29, 5, 1, 2),
(30, 4, 23, 4),
(31, 7, 5, 3),
(32, 5, 5, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `StudentId` int(255) NOT NULL,
  `ClassId` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`StudentId`, `ClassId`, `Name`) VALUES
(1, 2, 'Trọng'),
(2, 3, 'Thắng'),
(3, 3, 'Bình'),
(5, 3, 'student5'),
(6, 1, 'student6'),
(7, 1, 'student7'),
(8, 1, 'student8'),
(9, 1, 'student9'),
(10, 1, 'student10'),
(12, 2, 'student12'),
(13, 2, 'Lê Đăng  Bình'),
(18, 2, 'nguyenanhthang'),
(19, 4, 'Lê Đăng  Bình'),
(20, 4, 'student20'),
(21, 4, 'student21'),
(22, 4, 'student22'),
(23, 4, 'student23'),
(24, 2, 'text'),
(25, 2, 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject`
--

CREATE TABLE `subject` (
  `SubjectId` int(255) NOT NULL,
  `NameSubject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `subject`
--

INSERT INTO `subject` (`SubjectId`, `NameSubject`) VALUES
(1, 'Toán'),
(2, 'Anh'),
(3, 'Văn'),
(4, 'Lý'),
(5, 'Sử');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`ClassId`);

--
-- Chỉ mục cho bảng `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`ResultId`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentId`);

--
-- Chỉ mục cho bảng `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SubjectId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `class`
--
ALTER TABLE `class`
  MODIFY `ClassId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `result`
--
ALTER TABLE `result`
  MODIFY `ResultId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `StudentId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `subject`
--
ALTER TABLE `subject`
  MODIFY `SubjectId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
