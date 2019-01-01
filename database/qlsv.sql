-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 29, 2018 lúc 04:47 PM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlsv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `score`
--

CREATE TABLE `score` (
  `score_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `score_1` float NOT NULL,
  `score_2` float NOT NULL,
  `score_3` float NOT NULL,
  `score_avg` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `score`
--

INSERT INTO `score` (`score_id`, `semester_id`, `student_id`, `subject_id`, `score_1`, `score_2`, `score_3`, `score_avg`) VALUES
(1, 1, 9, 1, 10, 5, 7, 6.7),
(2, 2, 10, 2, 10, 7.5, 9, 8.7),
(3, 1, 11, 3, 10, 8, 8, 8.2),
(4, 2, 12, 1, 10, 5, 7, 6.7),
(5, 1, 6, 2, 8, 7, 7, 7.1),
(6, 2, 7, 3, 8, 5.5, 8, 7.2),
(7, 1, 8, 1, 9, 5.5, 6.5, 6.5),
(8, 2, 5, 2, 8, 5, 7, 6.5),
(9, 1, 4, 3, 10, 5.5, 8, 7.5),
(10, 2, 3, 1, 8, 5, 8, 7.1),
(11, 1, 2, 2, 10, 5, 7, 6.7),
(12, 2, 1, 3, 9, 7, 7, 7.3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `semester`
--

CREATE TABLE `semester` (
  `semester_id` int(11) NOT NULL,
  `semester_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `semester`
--

INSERT INTO `semester` (`semester_id`, `semester_name`) VALUES
(1, 'Học kỳ 1'),
(2, 'Học kỳ 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_birthday` varchar(255) DEFAULT NULL,
  `student_gender` varchar(255) NOT NULL,
  `student_location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_birthday`, `student_gender`, `student_location`) VALUES
(1, 'Nguyễn Thế Anh', '1997-02-01', 'Nam', 'Thái Bình'),
(2, 'Đoàn Thị Lan Anh', '1997-01-01', 'Nữ', 'Hưng Yên'),
(3, 'Nguyễn Thị Ngọc Anh', '1997-10-10', 'Nữ', 'Hà Nội'),
(4, 'Trần Công Biên', '1997-05-05 ', 'Nam', 'Vĩnh Phúc'),
(5, 'Nguyễn Đức Bình', '1997-07-07 ', 'Nam', 'Hưng Yên'),
(6, 'Phạm Xuân Chung', '1997-08-08', 'Nam', 'Vĩnh Phúc'),
(7, 'Nguyễn Thành Công', '1997-06-22 ', 'Nam', 'Thái Bình'),
(8, 'Nguyễn Trí Đức', '1997-09-09', 'Nam', 'Hưng Yên'),
(9, 'Đào Thu Hằng', '1997-11-30', 'Nữ', 'Vĩnh Phúc'),
(10, 'Chu Quang Hiệp', '1997-04-23', 'Nam', 'Hà Nội'),
(11, 'Lê Đình Huy', '1997-12-09 ', 'Nam', 'Vĩnh Phúc'),
(12, 'Đặng Thị Hồng Mai', '1997-08-31', 'Nữ', 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`) VALUES
(1, 'Toán cao cấp 1'),
(2, 'Toán cao cấp 2'),
(3, 'Toán rời rạc 1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_name`, `user_password`, `user_id`) VALUES
('hanhdo', '22121997', 1),
('abc', '0copas', 2),
('hanh', 'hanh1997', 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `FK_subject` (`subject_id`),
  ADD KEY `FK_student` (`student_id`),
  ADD KEY `FK_semester` (`semester_id`);

--
-- Chỉ mục cho bảng `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Chỉ mục cho bảng `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `score`
--
ALTER TABLE `score`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `FK_semester` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`),
  ADD CONSTRAINT `FK_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `FK_subject` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
