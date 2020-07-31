-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 31, 2020 at 11:59 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vemaybaythanhtung`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_baiviet_hinhanh`
--

CREATE TABLE `db_baiviet_hinhanh` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `id_baiviet` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `alias_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL,
  `tieu_bieu` tinyint(1) NOT NULL,
  `menu` tinyint(1) NOT NULL,
  `module` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `id_loai`, `alias_vn`, `alias_us`, `alias_ch`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_ch`, `hinh_anh`, `so_thu_tu`, `title_vn`, `title_us`, `title_ch`, `keyword`, `des`, `hien_thi`, `tieu_bieu`, `menu`, `module`, `level`) VALUES
(175, 0, 've-may-bay', 'news', '', 'Vé máy bay', 'News', '', '', '', '', '', '', '', '', 5, 'Vé máy bay', '', '', '', '', 1, 1, 0, 2, 0),
(504, 490, 'du-lich-chau-a', '', '', 'Du lịch Châu Á', '', '', '', '', '', '', '', '', '', 21, 'Du lịch Châu Á', '', '', '', '', 1, 0, 0, 3, 2),
(258, 0, 'lien-he', 'contacts', '', 'Liên hệ', 'Contacts', '', '', '', '', '', '', '', '', 7, 'Liên hệ', 'Contacts', '', '', '', 1, 1, 0, 5, 0),
(272, 0, 'gioi-thieu', 'about-us', '', 'Giới thiệu', 'About us', '', '', '', '', '', '', '', '', 1, 'Giới thiệu', 'About us', '', '', '', 1, 1, 0, 2, 0),
(476, 0, 'cam-nang-du-lich', 'why-choose-us', '', 'Cẩm nang du lịch', 'Why choose us', '', '', '<p>Never stop improving the value of customers</p>\r\n', '', '', '', '', '', 6, 'Cẩm nang du lịch', '', '', '', '', 1, 1, 0, 2, 0),
(505, 490, 'du-lich-chau-au', '', '', 'Du lịch Châu Âu', '', '', '', '', '', '', '', '', '', 22, 'Du lịch Châu Âu', '', '', '', '', 1, 0, 0, 3, 2),
(251, 0, 'tour', '', '', 'Tour', '', '', '', '', '', '', '', '', '', 2, 'Tour', '', '', '', '', 1, 0, 0, 3, 0),
(489, 251, 'tour-trong-nuoc', '', '', 'Tour trong nước', '', '', '<p>Tour du lịch Trong nước tại Ant Du lịch. Hành hương đầu xuân - Tận hưởng bản sắc Việt. (mô tả)</p>\r\n', '', '', '', '', '', '', 3, 'Tour trong nước', '', '', '', '', 1, 1, 0, 3, 1),
(490, 251, 'tour-nuoc-ngoai', '', '', 'Tour nước ngoài', '', '', '<p>Tour du lịch Trong nước tại Ant Du lịch. Hành hương đầu xuân - Tận hưởng bản sắc Việt.</p>\r\n', '', '', '', '', '', '', 4, 'Tour nước ngoài', '', '', '', '', 1, 1, 0, 3, 1),
(491, 489, 'mien-bac', '', '', 'Miền Bắc', '', '', '', '', '', '', '', '', '', 10, 'Miền Bắc', '', '', '', '', 1, 0, 0, 3, 2),
(492, 489, 'mien-trung', '', '', 'Miền Trung', '', '', '', '', '', '', '', '', '', 11, 'Miền Trung', '', '', '', '', 1, 0, 0, 3, 2),
(493, 489, 'mien-nam', '', '', 'Miền Nam', '', '', '', '', '', '', '', '', '', 12, 'Miền Nam', '', '', '', '', 1, 0, 0, 3, 2),
(494, 491, 'du-lich-ha-noi', '', '', 'Du lịch Hà Nội', '', '', '', '', '', '', '', '', '792198376031_location_image_3.png', 13, 'Du lịch Hà Nội', '', '', '', '', 1, 0, 1, 3, 3),
(495, 491, 'du-lich-ha-long', '', '', 'Du lịch Hạ Long', '', '', '', '', '', '', '', '', '368575057537_location_image_2.png', 14, 'Du lịch Hạ Long', '', '', '', '', 1, 0, 1, 3, 3),
(496, 491, 'du-lich-sapa', '', '', 'Du lịch Sapa', '', '', '', '', '', '', '', '', '098334790957_location_image_3.jpeg', 15, 'Du lịch Sapa', '', '', '', '', 1, 0, 1, 3, 3),
(497, 491, 'du-lich-ninh-binh', '', '', 'Du lịch Ninh Bình', '', '', '', '', '', '', '', '', '947345281039_location_image_4.png', 16, 'Du lịch Ninh Bình', '', '', '', '', 1, 0, 1, 3, 3),
(498, 492, 'du-lich-da-nang', '', '', 'Du lịch Đà Nẵng', '', '', '', '', '', '', '', '', '534398007941_location_image_5.png', 17, 'Du lịch Đà Nẵng', '', '', '', '', 1, 0, 1, 3, 3),
(499, 492, 'du-lich-hue', '', '', 'Du lịch Huế', '', '', '', '', '', '', '', '', '310405290935_location_image_2.png', 18, 'Du lịch Huế', '', '', '', '', 1, 0, 1, 3, 3),
(500, 492, 'du-lich-quy-nhon', '', '', 'Du lịch Quy Nhơn', '', '', '', '', '', '', '', '', '453666520059_location_image_3.jpeg', 19, 'Du lịch Quy Nhơn', '', '', '', '', 1, 0, 1, 3, 3),
(501, 493, 'du-lich-phu-quoc', '', '', 'Du lịch Phú Quốc', '', '', '', '', '', '', '', '', '', 20, 'Du lịch Phú Quốc', '', '', '', '', 1, 0, 0, 3, 3),
(502, 493, 'du-lich-con-dao', '', '', 'Du lịch Côn Đảo', '', '', '', '', '', '', '', '', '', 21, 'Du lịch Côn Đảo', '', '', '', '', 1, 0, 0, 3, 3),
(503, 493, 'du-lich-can-tho', '', '', 'Du lịch Cần Thơ', '', '', '', '', '', '', '', '', '', 22, 'Du lịch Cần Thơ', '', '', '', '', 1, 0, 0, 3, 3),
(506, 490, 'du-lich-chau-uc', '', '', 'Du lịch Châu Úc', '', '', '', '', '', '', '', '', '', 23, 'Du lịch Châu Úc', '', '', '', '', 1, 0, 0, 3, 2),
(507, 490, 'du-lich-chau-my', '', '', 'Du lịch Châu Mỹ', '', '', '', '', '', '', '', '', '', 24, 'Du lịch Châu Mỹ', '', '', '', '', 1, 0, 0, 3, 2),
(508, 504, 'du-lich-singapore', '', '', 'Du lịch Singapore', '', '', '', '', '', '', '', '', '', 25, 'Du lịch Singapore', '', '', '', '', 1, 0, 0, 3, 3),
(509, 504, 'du-lich-nhat-ban', '', '', 'Du lịch Nhật Bản', '', '', '', '', '', '', '', '', '', 26, 'Du lịch Nhật Bản', '', '', '', '', 1, 0, 0, 3, 3),
(510, 504, 'du-lich-han-quoc', '', '', 'Du lịch Hàn Quốc', '', '', '', '', '', '', '', '', '', 27, 'Du lịch Hàn Quốc', '', '', '', '', 1, 0, 0, 3, 3),
(511, 505, 'du-lich-duc', '', '', 'Du lịch Đức', '', '', '', '', '', '', '', '', '', 28, 'Du lịch Đức', '', '', '', '', 1, 0, 0, 3, 3),
(512, 505, 'du-lich-phap', '', '', 'Du lịch Pháp', '', '', '', '', '', '', '', '', '', 29, 'Du lịch Pháp', '', '', '', '', 1, 0, 0, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `db_chitietdathang`
--

CREATE TABLE `db_chitietdathang` (
  `id` int(11) NOT NULL,
  `id_dh` int(11) NOT NULL,
  `ma_dh` varchar(255) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `khuyen_mai` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_chitietdathang`
--

INSERT INTO `db_chitietdathang` (`id`, `id_dh`, `ma_dh`, `id_sp`, `gia`, `khuyen_mai`, `so_luong`) VALUES
(409, 203, 'DH203790MJ', 435, 55800000, 0, 1),
(408, 202, 'DH202EKPLB', 434, 0, 0, 1),
(407, 201, 'DH201RUBZH', 311, 15000000, 0, 1),
(406, 200, 'DH200KWHFE', 297, 0, 0, 1),
(405, 199, 'DH199QPYWL', 427, 8500000, 0, 1),
(412, 204, 'DH204W6ATQ', 302, 0, 0, 1),
(411, 204, 'DH204W6ATQ', 427, 85000, 0, 1),
(417, 205, 'DH205KLELM', 305, 90000, 0, 1),
(414, 205, 'DH205KLELM', 427, 85000, 0, 5),
(415, 205, 'DH205KLELM', 300, 150000, 0, 1),
(418, 205, 'DH205KLELM', 296, 12000000, 0, 1),
(419, 206, 'DH206L4HVP', 311, 150000, 0, 1),
(420, 206, 'DH206L4HVP', 301, 750000, 0, 1),
(421, 207, 'DH207WQRHB', 302, 0, 0, 1),
(422, 208, 'DH208OXEZI', 311, 60000, 0, 1),
(423, 209, 'DH209HE8SJ', 299, 105000, 0, 1),
(424, 210, 'DH210KCEBU', 449, 0, 0, 1),
(425, 211, 'DH211CHHQ6', 442, 100000, 0, 1),
(426, 212, 'DH21201MVT', 450, 0, 0, 1),
(427, 213, 'DH2136ZQUF', 299, 65000, 0, 1),
(428, 214, 'DH214Q8M2L', 450, 0, 0, 5),
(429, 215, 'DH215X62MZ', 311, 60000, 0, 1),
(431, 217, 'DH217CEAVK', 427, 200000, 0, 2),
(432, 218, 'DH218XL6DS', 311, 60000, 0, 1),
(433, 219, 'DH219DW03Y', 311, 60000, 0, 1),
(434, 220, 'DH220H7ZGK', 427, 200000, 0, 1),
(435, 220, 'DH220H7ZGK', 310, 0, 0, 1),
(437, 221, 'DH2214VVGQ', 427, 200000, 0, 2),
(438, 221, 'DH2214VVGQ', 311, 60000, 0, 1),
(439, 222, 'DH222AA50W', 311, 60000, 0, 1),
(440, 222, 'DH222AA50W', 443, 90000, 0, 1),
(441, 222, 'DH222AA50W', 310, 0, 0, 1),
(442, 223, 'DH223MK2R1', 427, 200000, 0, 1),
(443, 224, 'DH2246EDJB', 311, 60000, 0, 1),
(444, 224, 'DH2246EDJB', 427, 200000, 0, 1),
(458, 230, 'DH2300ONVS', 427, 200000, 0, 1),
(454, 0, 'DHU01M0', 427, 200000, 0, 1),
(453, 0, 'DHU01M0', 443, 90000, 0, 1),
(456, 228, 'DH228JW3X8', 442, 100000, 0, 1),
(459, 230, 'DH2300ONVS', 442, 100000, 0, 1),
(460, 231, 'DH231OFY3S', 442, 100000, 0, 5),
(461, 230, 'DH2300ONVS', 441, 80000, 0, 1),
(462, 232, 'DH232T7UT4', 442, 100000, 0, 1),
(463, 233, 'DH2338DUZ4', 310, 0, 0, 1),
(464, 233, 'DH2338DUZ4', 427, 200000, 0, 1),
(465, 233, 'DH2338DUZ4', 442, 100000, 0, 1),
(466, 234, 'DH234PA99R', 427, 200000, 0, 1),
(467, 235, 'DH235W9X38', 443, 90000, 0, 1),
(469, 236, 'DH2364FYS8', 443, 90000, 0, 1),
(470, 236, 'DH2364FYS8', 464, 22222222, 0, 1),
(471, 237, 'DH2376NI8R', 469, 10000000, 0, 1),
(472, 238, 'DH238HOS0A', 491, 15000000, 0, 1),
(473, 239, 'DH2394XNPO', 491, 15000000, 0, 1),
(474, 240, 'DH2402ZVKS', 495, 0, 0, 1),
(475, 241, 'DH241IE9RP', 491, 15000000, 0, 1),
(476, 242, 'DH242FT86N', 482, 200000, 0, 1),
(477, 243, 'DH243SITME', 493, 3500000, 0, 1),
(479, 245, 'DH245F8TMX', 630, 0, 0, 1),
(480, 246, 'DH246J7YUS', 671, 20000, 0, 3),
(481, 246, 'DH246J7YUS', 670, 20000, 0, 1),
(482, 246, 'DH246J7YUS', 669, 20000, 0, 1),
(483, 246, 'DH246J7YUS', 665, 0, 0, 1),
(484, 246, 'DH246J7YUS', 679, 0, 0, 1),
(485, 247, 'DH2477CUW6', 679, 0, 0, 1),
(486, 248, 'DH2482UK0T', 670, 20000, 0, 1),
(488, 249, 'DH249ITYXW', 679, 0, 0, 5),
(489, 249, 'DH249ITYXW', 678, 40000000, 0, 6),
(490, 250, 'DH250FI9AZ', 678, 40000000, 0, 1),
(491, 251, 'DH25199Z7C', 679, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_danhmuc_hoidap`
--

CREATE TABLE `db_danhmuc_hoidap` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `title_vn` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_danhmuc_hoidap`
--

INSERT INTO `db_danhmuc_hoidap` (`id`, `ten_vn`, `alias_vn`, `so_thu_tu`, `title_vn`, `keyword`, `des`, `hien_thi`) VALUES
(1, 'Nhóm câu 1', 'nhom-cau-1', 1, 'Nhóm câu 1', '', '', 1),
(3, 'Nhóm câu 2', 'nhom-cau-2', 2, 'Nhóm câu 2', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_dathang`
--

CREATE TABLE `db_dathang` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `dien_thoai` varchar(20) NOT NULL,
  `thoi_gian_giao_hang` varchar(255) NOT NULL,
  `ngay_giao_hang` varchar(20) NOT NULL,
  `hinh_thuc_thanh_toan` tinyint(1) NOT NULL,
  `loi_nhan` varchar(1000) NOT NULL,
  `ngay_dat_hang` varchar(20) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `tinh_trang` tinyint(1) NOT NULL,
  `ma_dh` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_dathang`
--

INSERT INTO `db_dathang` (`id`, `ho_ten`, `email`, `dia_chi`, `dien_thoai`, `thoi_gian_giao_hang`, `ngay_giao_hang`, `hinh_thuc_thanh_toan`, `loi_nhan`, `ngay_dat_hang`, `trang_thai`, `tinh_trang`, `ma_dh`) VALUES
(203, '', '', '', '', '', '', 0, '', '1474361374', 0, 0, ''),
(202, '', '', '', '', '', '', 0, '', '1474270363', 0, 0, ''),
(200, '', '', '', '', '', '', 0, '', '1473933509', 0, 0, ''),
(221, '', '', '', '', '', '', 0, '', '1476415764', 0, 0, ''),
(204, '', '', '', '', '', '', 0, '', '1474517040', 0, 0, ''),
(207, '', '', '', '', '', '', 0, '', '1474535353', 0, 0, ''),
(208, '', '', '', '', '', '', 0, '', '1474887718', 0, 0, ''),
(209, '', '', '', '', '', '', 0, '', '1474901603', 0, 0, ''),
(210, '', '', '', '', '', '', 0, '', '1474982724', 0, 0, ''),
(211, '', '', '', '', '', '', 0, '', '1475224560', 0, 0, ''),
(212, '', '', '', '', '', '', 0, '', '1475718508', 0, 0, ''),
(213, '', '', '', '', '', '', 0, '', '1475917408', 0, 0, ''),
(215, '', '', '', '', '', '', 0, '', '1476348052', 0, 0, ''),
(223, '', '', '', '', '', '', 0, '', '1477366331', 0, 0, ''),
(224, '', '', '', '', '', '', 0, '', '1477375215', 0, 0, ''),
(225, '', '', '', '', '', '', 0, '', '1478308078', 0, 0, ''),
(226, '', '', '', '', '', '', 0, '', '1478308314', 0, 0, ''),
(227, '', '', '', '', '', '', 0, '', '1478308582', 0, 0, ''),
(228, '', '', '', '', '', '', 0, '', '1478308596', 0, 0, ''),
(229, '', '', '', '', '', '', 0, '', '1478308897', 0, 0, ''),
(230, '', '', '', '', '', '', 0, '', '1478313638', 0, 0, ''),
(231, '', '', '', '', '', '', 0, '', '1478315872', 0, 0, ''),
(232, '', '', '', '', '', '', 0, '', '1478315975', 0, 0, ''),
(233, '', '', '', '', '', '', 0, '', '1478315999', 0, 0, ''),
(234, '', '', '', '', '', '', 0, '', '1478316041', 0, 0, ''),
(235, '', '', '', '', '', '', 0, '', '1478318010', 0, 0, ''),
(236, '', '', '', '', '', '', 0, '', '1478480613', 0, 0, ''),
(237, '', '', '', '', '', '', 0, '', '1479274184', 0, 0, ''),
(238, '', '', '', '', '', '', 0, '', '1479693211', 0, 0, ''),
(240, '', '', '', '', '', '', 0, '', '1480920250', 0, 0, ''),
(241, '', '', '', '', '', '', 0, '', '1487061317', 0, 0, ''),
(243, '', '', '', '', '', '', 0, '', '1487317319', 0, 0, ''),
(245, '', '', '', '', '', '', 0, '', '1488294374', 0, 0, ''),
(249, '', '', '', '', '', '', 0, '', '1496741047', 0, 0, ''),
(251, '', '', '', '', '', '', 0, '', '1496800110', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `db_datlich`
--

CREATE TABLE `db_datlich` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `donvi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `chuyenmon` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mota` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mucdo` int(11) NOT NULL,
  `vaitro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `khac` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tuvan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `capthiet` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `day` int(11) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_datlich`
--

INSERT INTO `db_datlich` (`id`, `name`, `donvi`, `chuyenmon`, `email`, `phone`, `mota`, `mucdo`, `vaitro`, `khac`, `tuvan`, `capthiet`, `day`, `view`) VALUES
(1, 'Hoàng Hiển', 'Trường Trung Cấp Công Nghiệp Bình Dương', 'Công nghệ thông tin và kỹ thuật máy tính', 'thantaihoi@zing.vn', '45345435', 'Công dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trường', 1, '0', 'test khác lung tung xì ngầu', '(Ví dụ: tư vấn nghiên cứu hoàn thiện sản phẩm/dịch vụ; kiểm nghiệm tính khả thi của ý tưởng; tư vấn xây dựng/hoàn thiện KHKD; tư vấn bảo hộ SHTT; tư vấn pháp lý; tư vấn cách thức triển khai; ...)...)', 'rất cần thiết lun đó nha! dự án trăm triệu đô la đó', 1461295558, 1),
(2, 'Nguyễn Văn A', 'Trường Đại Học Hồng Bàng', 'Nghiên cứu vi sinh vật', 'hnhoanghien@gmail.com', '554534566', 'Công dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trường', 2, '5,6,10', '', '(Ví dụ: tư vấn nghiên cứu hoàn thiện sản phẩm/dịch vụ; kiểm nghiệm tính khả thi của ý tưởng; tư vấn xây dựng/hoàn thiện KHKD; tư vấn bảo hộ SHTT; tư vấn pháp lý; tư vấn cách thức triển khai; ...)...)', 'Nếu dự án của bạn đang cần được hỗ trợ gấp hãy thông tin để chúng tôi biết và ưu tiên xếp lịch hẹn sớm', 1461296811, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_dknhamau`
--

CREATE TABLE `db_dknhamau` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `ngay_dang` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_dknhamau`
--

INSERT INTO `db_dknhamau` (`id`, `ten_vn`, `so_dien_thoai`, `email`, `dia_chi`, `ngay_dang`, `hien_thi`) VALUES
(1, 'Nguyễn Long', '0982 382 323', 'kythuat01.pnvn@gmail.com', '', 272637, 1),
(2, 'Nguyễn Long', '0928 329 212', 'kythuat01.pnvn@gmail.com', '', 1446870899, 1),
(3, '', '', '', '', 1447053480, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_email`
--

CREATE TABLE `db_email` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngay_gui` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_extra`
--

CREATE TABLE `db_extra` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL,
  `title_vn` text COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_extra`
--

INSERT INTO `db_extra` (`id`, `stt`, `hide`, `title_vn`, `gia`, `type`) VALUES
(1, 1, 1, 'CÔNG LUẬN', 0, 0),
(5, 0, 1, 'KAIJIELI', 0, 1),
(7, 1, 1, 'HP Smart Array P440ar/2GB FBWC 12Gb 2-ports Int SAS Controller ', 9000000, 2),
(8, 2, 1, 'HP Smart Array P440ar/2GB FBWC 12Gb 4-ports', 15000000, 2),
(11, 5, 1, 'Proliant DL380 Gen9 motherboard, Intel C610 chipset, 24 DIMM slot, 6 PCIe, iLo', 12500000, 3),
(12, 1, 1, ' Proliant DL380 Gen9 chassis, 2U rackmount, 8*2.5 SFF drives, 1x 500W', 11050000, 4),
(13, 2, 1, 'Proliant DL380 Gen9 chassis, 2U rackmount, 8*2.5 SFF drives, 2x 500W', 14500000, 4),
(15, 1, 1, 'HP 300GB 6G SAS 10K SFF SC HDD', 4800000, 5),
(16, 2, 1, 'HP 300GB 6G SAS 15K SFF SC HDD', 6500000, 5),
(17, 1, 1, 'Embedded HP 1Gb Ethernet 4-port 331i Adapter ', 7500000, 6),
(18, 2, 1, 'HP NC365T 4-port 1GbE adapter', 1500000, 6),
(19, 1, 1, 'Integrated VGA onboard ', 1600000, 7),
(20, 1, 1, 'External Slim USB DVD-RW', 850000, 8),
(21, 2, 1, 'External Slim USB Bluray Combo Drive', 1780000, 8),
(22, 1, 1, 'Không chọn Màn hình ', 0, 9),
(23, 1, 1, 'Không chọn Bộ lưu điện ', 0, 10),
(24, 1, 1, 'Không chọn Hệ Điều Hành', 0, 11),
(28, 3, 1, 'HP 300GB 12G SAS 10K SFF SC HDD ', 4080000, 5),
(29, 4, 1, 'HP 300GB 12G SAS 15K SFF SC HDD', 6950000, 5),
(30, 5, 1, 'HP 500GB 6G SATA 7.2K SFF SC HDD ', 5000000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `db_file`
--

CREATE TABLE `db_file` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ngay_dang` varchar(255) NOT NULL,
  `id_code` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_gallery`
--

CREATE TABLE `db_gallery` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `picture` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL,
  `title_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_gallery`
--

INSERT INTO `db_gallery` (`id`, `parent`, `picture`, `stt`, `hide`, `title_vn`, `title_us`, `title_ch`, `link`, `body_vn`, `body_us`, `body_ch`) VALUES
(94, 466, '886211100470_dt5.png', 5, 1, 'Shop Trang Phục Hàng Xanh', '', '', 'http://goo.gl/xoos1V', '', '', ''),
(93, 466, '007577067791_dt4.png', 4, 1, 'Điện lạnh Hoàng Long', '', '', 'http://goo.gl/E7QDvY', '', '', ''),
(92, 466, '422323957516_dt3.png', 3, 1, 'Công ty Điện lạnh Bảo An', '', '', 'http://goo.gl/mL45dw', '', '', ''),
(91, 466, '353483596774_dt2.jpg', 2, 1, 'Công ty Phương Nam Vina', '', '', 'http://goo.gl/Mu9jCw', '', '', ''),
(90, 466, '946370982028_dt1.png', 1, 1, 'Công ty mái che Đại Việt', '', '', 'http://goo.gl/g28LUS', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_hinhanh`
--

CREATE TABLE `db_hinhanh` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `id_mau` int(11) NOT NULL,
  `hinh_lon` varchar(255) NOT NULL,
  `hinh_nho` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_hinhthucthanhtoan`
--

CREATE TABLE `db_hinhthucthanhtoan` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `noi_dung_vn` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_hinhthucthanhtoan`
--

INSERT INTO `db_hinhthucthanhtoan` (`id`, `ten_vn`, `noi_dung_vn`, `so_thu_tu`, `hien_thi`) VALUES
(1, 'Thanh toán khi nhận hàng (COD)', '', 1, 1),
(2, 'Chuyển khoản', 'Transfer', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_hotro`
--

CREATE TABLE `db_hotro` (
  `id` int(11) NOT NULL,
  `id_loai` varchar(255) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_jp` varchar(255) NOT NULL,
  `ten_ch` varchar(255) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `yahoo` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `so_thu_tu` int(11) NOT NULL DEFAULT '1',
  `hien_thi` tinyint(1) NOT NULL,
  `zalo` varchar(255) NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_hotro`
--

INSERT INTO `db_hotro` (`id`, `id_loai`, `ten_vn`, `ten_us`, `ten_jp`, `ten_ch`, `hinh_anh`, `yahoo`, `skype`, `sdt`, `so_thu_tu`, `hien_thi`, `zalo`, `mo_ta_vn`, `mo_ta_us`) VALUES
(18, '', 'Chăm sóc khách hàng', '', '', '', '', '0909 090 909', 'Phân bón nông nghiệp', '0909 090 909', 2, 1, '0933 642 269', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_khachhang`
--

CREATE TABLE `db_khachhang` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `ngay_dang` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_khachhang`
--

INSERT INTO `db_khachhang` (`id`, `ten_vn`, `mat_khau`, `ho_ten`, `so_dien_thoai`, `email`, `dia_chi`, `ngay_dang`, `hien_thi`) VALUES
(3, 'kythuat01', 'c9ece136c3e846349a5a1312442fb99a', 'ho ten', 'so dt', 'emai', 'dc', 1442303304, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_kichthuoc`
--

CREATE TABLE `db_kichthuoc` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `gia` int(11) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_kichthuoc`
--

INSERT INTO `db_kichthuoc` (`id`, `ten_vn`, `ten_us`, `gia`, `so_thu_tu`, `hien_thi`) VALUES
(1, 'Lớn', '', 0, 1, 1),
(2, 'Trung bình', '', 0, 2, 1),
(3, 'Nhỏ', '', 0, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_lienhe`
--

CREATE TABLE `db_lienhe` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `ten_cong_ty` varchar(255) NOT NULL,
  `tieu_de` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `ngay_hoi` varchar(20) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_lienketwebsite`
--

CREATE TABLE `db_lienketwebsite` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_lienketwebsite`
--

INSERT INTO `db_lienketwebsite` (`id`, `title`, `link`, `so_thu_tu`, `hien_thi`) VALUES
(77, 'vnexpress', 'http://vnexpress.net', 7, 1),
(76, 'dantri', 'htpp://dantri.com', 6, 1),
(75, 'facebook', 'http://facebook.com', 5, 1),
(74, 'Youtube', 'http://youtube.com', 4, 1),
(78, 'google.com', 'http://google.com.vn', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_loaisanpham`
--

CREATE TABLE `db_loaisanpham` (
  `id` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL,
  `tieu_bieu` tinyint(1) NOT NULL,
  `menu` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_loaitintuc`
--

CREATE TABLE `db_loaitintuc` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `noi_dung_vn` text NOT NULL,
  `noi_dung_us` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL,
  `tieu_bieu` tinyint(1) NOT NULL,
  `id_loai` int(11) DEFAULT '0',
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_loaitintuc`
--

INSERT INTO `db_loaitintuc` (`id`, `ten_vn`, `ten_us`, `alias_vn`, `alias_us`, `noi_dung_vn`, `noi_dung_us`, `so_thu_tu`, `hien_thi`, `tieu_bieu`, `id_loai`, `title_vn`, `title_us`, `keyword`, `des`) VALUES
(24, 'Đại sứ', '', 'dai-su', '', '', '', 3, 1, 0, 0, 'Đại sứ', '', 'Đại sứ', 'Đại sứ'),
(25, 'Giới thiệu', '', 'gioi-thieu', '', '', '', 1, 1, 0, 0, 'Giới thiệu', '', 'Giới thiệu', 'Giới thiệu'),
(26, 'Thư viện', '', 'thu-vien', '', '', '', 5, 1, 0, 0, 'Thư viện', '', 'Thư viện', 'Thư viện'),
(39, 'Gương mặt đại sứ', '', 'guong-mat-dai-su', '', '', '', 9, 1, 0, 0, 'Gương mặt đại sứ', '', 'Gương mặt đại sứ', 'Gương mặt đại sứ'),
(34, 'Những người yêu hàng việt', '', 'nhung-nguoi-yeu-hang-viet', '', '', '', 4, 1, 0, 0, 'Những người yêu hàng việt', '', 'Những người yêu hàng việt', 'Những người yêu hàng việt'),
(35, 'Hỏi đáp', '', 'hoi-dap', '', '', '', 6, 1, 0, 0, 'Hỏi đáp', '', 'Hỏi đáp', 'Hỏi đáp'),
(36, 'Tin tức', '', 'tin-tuc', '', '', '', 2, 1, 0, 0, 'Tin tức', '', 'Tin tức', 'Tin tức'),
(37, 'Hoạt động CLB', '', 'hoat-dong-clb', '', '', '', 7, 1, 0, 0, 'Hoạt động CLB', '', 'Hoạt động CLB', 'Hoạt động CLB'),
(38, 'Thông tin hàng Việt', '', 'thong-tin-hang-viet', '', '', '', 8, 1, 0, 0, 'Thông tin hàng Việt', '', 'Thông tin hàng Việt', 'Thông tin hàng Việt'),
(40, 'Đại sứ với hàng Việt', '', 'dai-su-voi-hang-viet', '', '', '', 10, 1, 0, 0, 'Đại sứ với hàng Việt', '', 'Đại sứ với hàng Việt', 'Đại sứ với hàng Việt'),
(41, 'Đời thường đại sứ', '', 'doi-thuong-dai-su', '', '', '', 11, 1, 0, 0, 'Đời thường đại sứ', '', 'Đời thường đại sứ', 'Đời thường đại sứ'),
(42, 'Hiến kế hàng Việt', '', 'hien-ke-hang-viet', '', '', '', 12, 1, 0, 0, 'Hiến kế hàng Việt', '', 'Hiến kế hàng Việt', 'Hiến kế hàng Việt'),
(43, 'Vui buồn cùng hàng Việt', '', 'vui-buon-cung-hang-viet', '', '', '', 13, 1, 0, 0, 'Vui buồn cùng hàng Việt', '', 'Vui buồn cùng hàng Việt', 'Vui buồn cùng hàng Việt');

-- --------------------------------------------------------

--
-- Table structure for table `db_map`
--

CREATE TABLE `db_map` (
  `id` int(11) NOT NULL,
  `map` text NOT NULL,
  `ten_vn` text NOT NULL,
  `ten_us` text NOT NULL,
  `ten_ch` text NOT NULL,
  `mo_ta_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_vn` text NOT NULL,
  `noi_dung_us` text NOT NULL,
  `noi_dung_ch` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL DEFAULT '1',
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_map`
--

INSERT INTO `db_map` (`id`, `map`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_ch`, `so_thu_tu`, `hien_thi`) VALUES
(17, '10.757722, 106.659059', 'Tên công ty chi nhánh 3', '', '', 'Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3', '', '', '0985 357 584Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3', '', '', 1, 1),
(18, '10.754707, 106.657053', 'Tên công ty chi nhánh 2', '', '', 'Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2', '', '', 'Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2', '', '', 2, 1),
(19, '10.753210, 106.661151', 'Tên chi nhánh 1', '', '', 'Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1', '', '', 'Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1', '', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_mausac`
--

CREATE TABLE `db_mausac` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_mausac`
--

INSERT INTO `db_mausac` (`id`, `ten_vn`, `so_thu_tu`, `hien_thi`) VALUES
(11, 'Xanh nhạt', 5, 1),
(10, 'Hồng', 4, 1),
(9, 'Đỏ', 3, 1),
(8, 'Trắng', 2, 1),
(7, 'Vàng', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_module`
--

CREATE TABLE `db_module` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_module`
--

INSERT INTO `db_module` (`id`, `stt`, `hide`, `title`) VALUES
(1, 1, 0, 'Hình ảnh'),
(2, 2, 1, 'Bài viết'),
(3, 3, 1, 'Tour'),
(4, 4, 0, 'Bất động sản'),
(5, 5, 1, 'Liên hệ'),
(6, 6, 1, 'Video'),
(7, 7, 0, 'Giỏ hàng'),
(8, 8, 0, 'Đặt hàng thành công');

-- --------------------------------------------------------

--
-- Table structure for table `db_nhomhotro`
--

CREATE TABLE `db_nhomhotro` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_nhomhotro`
--

INSERT INTO `db_nhomhotro` (`id`, `title`, `stt`, `hide`) VALUES
(1, 'Hỗ trợ kinh doanh', 1, 1),
(2, 'Tư vấn khách hàng', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_permission_group`
--

CREATE TABLE `db_permission_group` (
  `id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_permission_group`
--

INSERT INTO `db_permission_group` (`id`, `page`, `title`, `stt`, `hide`) VALUES
(1, 'san-pham', 'Sản phẩm', 1, 1),
(2, 'bai-viet', 'Bài viết', 2, 1),
(3, 'gallery', 'Gallery', 3, 1),
(4, 'category', 'Category', 4, 1),
(5, 'nhom-ho-tro', 'Nhóm hỗ trợ', 5, 1),
(6, 'ho-tro-truc-tuyen', 'Hỗ trợ trực tuyến', 6, 1),
(7, 'video', 'Video', 7, 1),
(8, 'upload-file', 'Upload file', 8, 1),
(9, 'danh-sach-don-hang', 'Danh sách đơn hàng', 9, 1),
(10, 'ql-user', 'Quản lý User', 10, 1),
(11, 'ql-thongtin', 'Quản lý thông tin', 11, 1),
(12, 'lien-he', 'Liên hệ', 12, 1),
(13, 'giaodien', 'Giao diện', 13, 1),
(14, 'seo-co-ban', 'Seo cơ bản', 14, 1),
(15, 'seo-nang-cao', 'Seo nâng cao', 15, 1),
(16, 'extra0', 'Mở rộng 0', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_phuongtien`
--

CREATE TABLE `db_phuongtien` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_jp` varchar(255) NOT NULL,
  `ten_ch` text NOT NULL,
  `noi_dung_vn` longtext NOT NULL,
  `noi_dung_us` longtext NOT NULL,
  `noi_dung_jp` longtext NOT NULL,
  `noi_dung_ch` text NOT NULL,
  `hinh_anh_vn` varchar(255) NOT NULL,
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_jp` varchar(255) NOT NULL,
  `title_ch` text NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `hien_thi` int(11) NOT NULL,
  `hinh_anh_us` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_phuongtien`
--

INSERT INTO `db_phuongtien` (`id`, `ten_vn`, `ten_us`, `ten_jp`, `ten_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_jp`, `noi_dung_ch`, `hinh_anh_vn`, `title_vn`, `title_us`, `title_jp`, `title_ch`, `keyword`, `des`, `hien_thi`, `hinh_anh_us`) VALUES
(1, 'Ô tô', 'Car', '', '', '', '', '', '', '367272359397_tag_icon_1.png', '', '', '', '', '', '', 1, ''),
(2, 'Tàu thuỷ', 'Ship', '', '', '', '', '', '', '348534794344_tag_icon_2.png', '', '', '', '', '', '', 1, ''),
(3, 'Máy bay', 'Planes', '', '', '', '', '', '', '357163644536_tag_icon_3.png', '', '', '', '', '', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `db_quan`
--

CREATE TABLE `db_quan` (
  `id` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_quan`
--

INSERT INTO `db_quan` (`id`, `id_loai`, `ten_vn`, `so_thu_tu`, `hien_thi`) VALUES
(1, 1, 'Quận 1', 1, 1),
(2, 1, 'Quận 2', 2, 1),
(3, 1, 'Quận 3', 3, 1),
(4, 4, 'Hoàng Kiếm', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_question`
--

CREATE TABLE `db_question` (
  `id` int(11) NOT NULL,
  `ten` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cau_hoi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tra_loi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay` int(11) NOT NULL,
  `hien_thi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_question`
--

INSERT INTO `db_question` (`id`, `ten`, `cau_hoi`, `tra_loi`, `ngay`, `hien_thi`) VALUES
(1, 'Hoang hien', 'Làm sao để có thể làm giàu nhanh chóng không cần làm việc', 'Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!', 1459741196, 1),
(2, 'Tèo si rô', 'Kinh doanh cà phê làm giàu kiểu nào bà con, tiền sao nhiều nhiều vào', 'Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!', 1459741247, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_sanpham`
--

CREATE TABLE `db_sanpham` (
  `id` int(11) NOT NULL,
  `id_loai` varchar(255) NOT NULL,
  `id_hang` varchar(255) NOT NULL DEFAULT '0',
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `alias_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_sp` varchar(255) NOT NULL,
  `ten_vn` varchar(1000) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `gia` double NOT NULL DEFAULT '0',
  `khuyen_mai` int(11) NOT NULL DEFAULT '0',
  `thong_tin_vn` text NOT NULL,
  `thong_tin_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_tin_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_so_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_tai_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_chon_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_dang` int(11) DEFAULT NULL,
  `tieu_bieu` tinyint(1) DEFAULT NULL,
  `sp_moi` tinyint(1) NOT NULL DEFAULT '0',
  `sp_hot` tinyint(1) NOT NULL,
  `title_vn` varchar(255) DEFAULT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `thanh_pho` int(11) NOT NULL DEFAULT '0',
  `quan` int(11) NOT NULL DEFAULT '0',
  `hien_thi` tinyint(1) NOT NULL DEFAULT '1',
  `extra0` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra6` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra7` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra8` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra9` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra10` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `con_hang` tinyint(4) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `style` int(11) NOT NULL,
  `phuongtien` varchar(255) NOT NULL,
  `thoigian` varchar(255) NOT NULL,
  `giacu` double NOT NULL,
  `ngay` int(11) NOT NULL,
  `dem` int(11) NOT NULL,
  `chinhsach_vn` text NOT NULL,
  `chinhsach_us` text NOT NULL,
  `gia_treem` double NOT NULL,
  `gia_embe` double NOT NULL,
  `khoihanh_vn` varchar(255) NOT NULL,
  `khoihanh_us` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_sanpham`
--

INSERT INTO `db_sanpham` (`id`, `id_loai`, `id_hang`, `alias_vn`, `alias_us`, `alias_ch`, `ma_sp`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `hinh_anh`, `gia`, `khuyen_mai`, `thong_tin_vn`, `thong_tin_us`, `thong_tin_ch`, `thong_so_vn`, `thong_tai_vn`, `thong_chon_vn`, `ngay_dang`, `tieu_bieu`, `sp_moi`, `sp_hot`, `title_vn`, `title_us`, `title_ch`, `keyword`, `des`, `view`, `thanh_pho`, `quan`, `hien_thi`, `extra0`, `extra1`, `extra2`, `extra3`, `extra4`, `extra5`, `extra6`, `extra7`, `extra8`, `extra9`, `extra10`, `con_hang`, `so_thu_tu`, `style`, `phuongtien`, `thoigian`, `giacu`, `ngay`, `dem`, `chinhsach_vn`, `chinhsach_us`, `gia_treem`, `gia_embe`, `khoihanh_vn`, `khoihanh_us`) VALUES
(703, '497,496,495', '0', 'test', 'test', '', '', 'test', 'test', '', 'a', 'test', '', '720967473121_1.jpg', 50000, 60000, '<p>thoong tin</p>\r\n', '<p>test</p>\r\n', '', '', '', '', 1594625325, 0, 0, 0, 'test', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,3', '', 0, 4, 3, '<p>chinh sach</p>\r\n', '', 45000, 10000, 'Thứ 7 hàng tuần', 'Every saturday'),
(704, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '926919046398_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797969, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(705, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-17', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-53', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '064365282751_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797971, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(706, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-27', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-94', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '389843263173_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797972, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(707, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-84', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-21', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '423797366309_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797973, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(708, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-55', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-36', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '385919914264_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797975, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday');
INSERT INTO `db_sanpham` (`id`, `id_loai`, `id_hang`, `alias_vn`, `alias_us`, `alias_ch`, `ma_sp`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `hinh_anh`, `gia`, `khuyen_mai`, `thong_tin_vn`, `thong_tin_us`, `thong_tin_ch`, `thong_so_vn`, `thong_tai_vn`, `thong_chon_vn`, `ngay_dang`, `tieu_bieu`, `sp_moi`, `sp_hot`, `title_vn`, `title_us`, `title_ch`, `keyword`, `des`, `view`, `thanh_pho`, `quan`, `hien_thi`, `extra0`, `extra1`, `extra2`, `extra3`, `extra4`, `extra5`, `extra6`, `extra7`, `extra8`, `extra9`, `extra10`, `con_hang`, `so_thu_tu`, `style`, `phuongtien`, `thoigian`, `giacu`, `ngay`, `dem`, `chinhsach_vn`, `chinhsach_us`, `gia_treem`, `gia_embe`, `khoihanh_vn`, `khoihanh_us`) VALUES
(709, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-49', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-81', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '067395460040_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797976, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(710, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-18', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-76', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '267797470981_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797977, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(711, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-76', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-16', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '247087281895_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797978, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(712, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-5', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-75', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '043377984960_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797979, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(713, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-59', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-88', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '402617211676_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797980, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday');
INSERT INTO `db_sanpham` (`id`, `id_loai`, `id_hang`, `alias_vn`, `alias_us`, `alias_ch`, `ma_sp`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `hinh_anh`, `gia`, `khuyen_mai`, `thong_tin_vn`, `thong_tin_us`, `thong_tin_ch`, `thong_so_vn`, `thong_tai_vn`, `thong_chon_vn`, `ngay_dang`, `tieu_bieu`, `sp_moi`, `sp_hot`, `title_vn`, `title_us`, `title_ch`, `keyword`, `des`, `view`, `thanh_pho`, `quan`, `hien_thi`, `extra0`, `extra1`, `extra2`, `extra3`, `extra4`, `extra5`, `extra6`, `extra7`, `extra8`, `extra9`, `extra10`, `con_hang`, `so_thu_tu`, `style`, `phuongtien`, `thoigian`, `giacu`, `ngay`, `dem`, `chinhsach_vn`, `chinhsach_us`, `gia_treem`, `gia_embe`, `khoihanh_vn`, `khoihanh_us`) VALUES
(714, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-20', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-12', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '330618841504_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797981, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(715, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-23', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-12', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '314336947675_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797982, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(716, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-11', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-83', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '316513482062_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797983, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(717, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-17', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-4', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '660375514486_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797984, 0, 0, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(718, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-8', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-74', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '730092932532_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797985, 1, 1, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday');
INSERT INTO `db_sanpham` (`id`, `id_loai`, `id_hang`, `alias_vn`, `alias_us`, `alias_ch`, `ma_sp`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `hinh_anh`, `gia`, `khuyen_mai`, `thong_tin_vn`, `thong_tin_us`, `thong_tin_ch`, `thong_so_vn`, `thong_tai_vn`, `thong_chon_vn`, `ngay_dang`, `tieu_bieu`, `sp_moi`, `sp_hot`, `title_vn`, `title_us`, `title_ch`, `keyword`, `des`, `view`, `thanh_pho`, `quan`, `hien_thi`, `extra0`, `extra1`, `extra2`, `extra3`, `extra4`, `extra5`, `extra6`, `extra7`, `extra8`, `extra9`, `extra10`, `con_hang`, `so_thu_tu`, `style`, `phuongtien`, `thoigian`, `giacu`, `ngay`, `dem`, `chinhsach_vn`, `chinhsach_us`, `gia_treem`, `gia_embe`, `khoihanh_vn`, `khoihanh_us`) VALUES
(719, '494,503,510', '0', 'test-tour-quanh-the-gioi', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-13', '', '', 'Test tour quanh thế giới', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '945960821719_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align:center\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797987, 1, 1, 0, 'Test tour quanh thế giới', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(720, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-18', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-45', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '805876133851_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797988, 1, 1, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(721, '495,499,498', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-71', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-78', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '219468672803_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align: center;\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797990, 1, 1, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(722, '503,502,510', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-50', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-97', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '452009577286_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align:center\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797991, 1, 1, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday'),
(723, '495,499,498,508', '0', 'du-lich-hue-ho-truoi-da-nang-suoi-khoang-nong-nui-than-tai-kdl-ba-na-42', 'traveling-hue-ho-truoi-da-nang-hot-spring-in-than-tai-mountain-ba-na-tourist-area-49', '', '', 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', 'Traveling Hue - Ho Truoi - Da Nang - Hot Spring in Than Tai Mountain - Ba Na Tourist Area', '', '<p>- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm.</p>\r\n\r\n<p>- Trải nghiệm 2 đêm khách sạn 5 sao Bellagio nổi tiếng Las Vegas</p>\r\n\r\n<p>- Hòa mình vào không khí trường quay hoành tráng tại Universal Studios, trung tâm kinh đô điện ảnh Hollywood</p>\r\n\r\n<p>- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt.</p>\r\n', '<p>- Discover the US West Coast with countless interesting prices at super savings.</p>\r\n\r\n<p>- Experience 2 nights at the famous 5-star Bellagio Hotel in Las Vegas</p>\r\n\r\n<p>- Immerse yourself in the epic studio atmosphere at Universal Studios, the heart of the Hollywood movie capital</p>\r\n\r\n<p>- Visit the Little Saigon area - the home of the Vietnamese community.</p>\r\n', '', '252693323515_bana-hills.jpg', 11500000, 14000000, '<p><strong>NGÀY 1: TP.HCM - HONG KONG&nbsp;- LOS ANGELES - LAS VEGAS (Ăn trưa, tối)</strong><br />\r\nTự túc tập trung tại lầu 2 - Ga đi quốc tế, sân bay quốc tế Tân Sơn Nhất. Đáp chuyến bay<strong><em>&nbsp;HX539 (04:00 - 08:30)</em></strong>&nbsp;đi Hong Kong. Tiếp tục làm thủ tục nối chuyến bay&nbsp;<strong><em>HX068 (11:55 - 10:40) &nbsp;</em></strong>đi Los Angeles, thành phố thiên thần ở miền Nam California với khí hậu ôn hòa quanh năm. Ăn và nghỉ trên máy bay. Máy bay hạ cánh sân bay Los Angeles lúc 10g40 sáng (giờ địa phương). Khởi hành đi Las Vegas bằng đường bộ. Nghỉ đêm tại&nbsp;<strong><em>khách sạn đẳng cấp 5 sao Bellagio&nbsp;</em></strong>(hoặc tương đương). Tự do khám phá Las Vegas rực rỡ về đêm.</p>\r\n\r\n<p style=\"text-align:center\"><img src=\"http://bizweb.dktcdn.net/100/299/077/products/08.jpg\" style=\"border:0px none; box-sizing:border-box; height:auto !important; margin:0px; max-width:100%; vertical-align:middle\" /><br />\r\n<strong><em>Khách sạn đẳng cấp 5 sao Bellagio</em></strong></p>\r\n\r\n<p><strong>NGÀY 2: LAS VEGAS - ĐẬP THỦY ĐIỆN HOOVER (Ăn sáng, trưa, tối)</strong><br />\r\nTham quan<strong><em>&nbsp;đập Hoover</em></strong>&nbsp;hùng vĩ và ngắm&nbsp;<strong><em>hồ nước nhân tạo Mead</em></strong>&nbsp;xanh rì (Đập Hoover mang tên vị Tổng thống thứ 31 của nước Mỹ Herbert Hoover, được xây dựng với mục tiêu cung cấp nguồn điện, điều chỉnh dòng chảy và kiểm soát lũ lụt trên sông Colorado). Xe đưa đoàn chạy dọc theo trục đường nhộn nhịp của Las Vegas để ngắm nhìn&nbsp;<strong><em>“The Strip”</em></strong>&nbsp;- con đường dài hơn 6km tập trung những khách sạn và casino nổi tiếng và sang trọng bậc nhất. Ghé mua sắm hàng hiệu tại&nbsp;<strong><em>Premium Outlet Mall</em></strong>. Nghỉ đêm tại Las Vegas.</p>\r\n\r\n<p><strong>NGÀY 3: LAS VEGAS - BARSTOW - LOS ANGELES (Án sáng, trưa, tối)</strong><br />\r\nTrả phòng. Về lại Los Angeles. Dừng chân tại&nbsp;<strong><em>outlet Barstow</em></strong>&nbsp;nằm ở phía Tây hoang mạc Mojave để ăn trưa và mua sắm. Đến Los Angeles, tự do tham quan và dạo chơi&nbsp;<strong><em>khu Little Saigon</em></strong>&nbsp;để tìm hiểu về cuộc sống của cộng đồng người Việt tại Mỹ. Nghỉ đêm tại Los Angeles (khách sạn 3 sao Huntington Beach hoặc tương đương).</p>\r\n\r\n<p><strong>NGÀY 4: LOS ANGELES - UNIVERSAL STUDIOS HOLLYWOOD (Ăn sáng, tối)</strong><br />\r\nKhám phá&nbsp;<em><strong>Universal Studios</strong></em>&nbsp;- trường quay các bộ phim nổi tiếng của điện ảnh thế giới như King Kong, Công viên Khủng long… Quý khách còn có dịp được tận mắt chứng kiến các kỹ xảo âm thanh, khói lửa và nước trong các cảnh quay động đất, mưa, nước lũ và cháy nổ. Xem phim không gian 4D với cảm giác hồi hộp và những ấn tượng khó quên về kỷ xảo làm phim của điện ảnh Hollywood. Ăn trưa tự túc trong công viên. Tham quan trung tâm kinh đô điện ảnh Hollywood, tản bộ trên con đường danh vọng Hollywood Boulevard - nơi in tên các tài tử nghệ sĩ điện ảnh nổi tiếng như Marilyn Monroe, Michael Jackson. Dừng chân tại nhà hát Chinese Mann’s Theatre - nơi in dấu tay của các diễn viên điện ảnh nổi tiếng. Nghỉ đêm tại Los Angeles.</p>\r\n\r\n<p><strong>NGÀY 5: LOS ANGELES - HONG KONG (Ăn sáng) &nbsp;</strong><br />\r\nTrả phòng. Xe đưa đoàn ra sân bay Los Angeles đáp chuyến bay&nbsp;<em><strong>HX069 (12:40 - 19:00)</strong></em>&nbsp;đi Hong Kong. Ăn và nghỉ trên máy bay.</p>\r\n\r\n<p><strong>NGÀY 6: HONG KONG - TP. HCM</strong><br />\r\nĐến sân bay Hong Kong, đoàn làm thủ tục nối chuyến bay&nbsp;<strong><em>HX538 (23:05 - 00:50)</em></strong>&nbsp;về TP. HCM. Máy bay đáp xuống sân bay Tân Sơn Nhất lúc 00g50 rạng sáng hôm sau. Kết thúc chương trình du lịch Mỹ.</p>\r\n', '<p>Content english</p>\r\n', '', '', '', '', 1594797992, 1, 1, 0, 'Du lịch Huế - Hồ Truồi - Đà Nẵng - Suối Khoáng Nóng Núi Thần Tài - KDL Bà Nà', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '1,2,3', '', 0, 4, 3, '<p><strong>* Giá tour bao gồm:</strong><br />\r\n- Vé máy bay khứ hồi theo đoàn. Thuế sân bay hai đầu và phí an ninh. Chuyến bay và giờ bay có thể thay đổi giờ chót tùy thuộc vào tình hình hàng không. Dự kiến hàng không Hong Kong Airlines (HX) hoặc các hàng không khác có thể đáp ứng thuận tiện vé cho đoàn tại thời điểm khởi hành.<br />\r\n- Hướng dẫn suốt tuyến. 2 đêm khách sạn 5 sao tại Las Vegas, 2 đêm khách sạn 3 sao tại Los Angeles (2 người/phòng), các bữa ăn theo chương trình.<br />\r\n- Xe đưa đón và tham quan theo chương trình, quà lưu niệm (balo, nón).<br />\r\n- Chi phí tham quan và vé vào cửa tham quan theo chương trình. Tiền thuê xe đẩy hành lý tại sân bay theo đoàn (2 khách người lớn/1 xe).<br />\r\n- Thuế giá trị gia tăng.</p>\r\n\r\n<p><strong>* Giá tour không bao gồm:</strong><br />\r\n- Chi phí làm visa Mỹ: 3.680.000 vnđ/khách (giá có thể thay đổi theo thực tế), chi phí làm hộ chiếu, các chương trình tự chọn, nước uống, giặt ủi, điện thoại... và các chi phí cá nhân khác của khách ngoài chương trình.<br />\r\n- Hành lý quá cước, chi phí dời ngày và đổi chặng bay theo qui định của hàng không.<br />\r\n- Phí phòng đơn (dành cho khách yêu cầu ở phòng đơn).<br />\r\n- Tiền bồi dưỡng cho HDV và lái xe địa phương (06 USD/ khách/ngày).</p>\r\n\r\n<p><strong>THÔNG TIN HƯỚNG DẪN</strong></p>\r\n\r\n<p><strong>Quy trình đăng ký và thanh toán:</strong></p>\r\n\r\n<p>1.Đợt 1: Đặt cọc 25.000.000 vnđ/khách và nộp một bản copy hồ sơ theo yêu cầu.</p>\r\n\r\n<p>2.Đợt 2: Thanh toán số tiền tour còn lại trong vòng 3 ngày làm việc khi được chấp thuận visa.<br />\r\n- Điều khoản hủy tour (Thời gian hủy tour được tính cho ngày làm việc, không tính ngày Thứ Bảy, Chủ Nhật và các ngày nghỉ Lễ).<br />\r\n- Sau khi đặt cọc tour, nếu Qúy khách báo hủy tour Công ty chúng tôi sẽ không hoàn lại tiền cọc. Đồng thời chúng tôi&nbsp;sẽ báo hủy hồ sơ phỏng vấn của khách.<br />\r\n- Nếu quý khách bị từ chối visa Mỹ, quý khách vui lòng nộp lệ phí là: 3.680.000 vnđ.<br />\r\n- Nếu quý khách báo hủy tour vui lòng thanh toán lệ phí hủy tour&nbsp; cụ thể như sau:</p>\r\n\r\n<p>1/ Trước ngày đi từ 35 - 20 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 75% giá tour</p>\r\n\r\n<p>2/ Trước ngày đi từ 10 - 19 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết) thanh toán: 90% giá tour</p>\r\n\r\n<p>3/ Hủy trước ngày đi trong vòng 9 ngày làm việc (không tính thứ Bảy &amp; Chủ Nhật &amp; ngày nghỉ Tết): 100% giá tour<br />\r\n- Quý khách có nhu cầu lưu trú lại Mỹ thêm ngoài chương trình tour vui lòng thông báo tại thời điểm đăng kí và đóng thêm tiền vé máy bay phụ trội ở lại về sau và các chặng bay nội địa theo quy định của hàng không.<br />\r\n- Trường hợp đoàn không đáp ứng được số lượng khách đạt visa tối thiểu 10 người,&nbsp;có quyền hủy dịch vụ và chuyển ngày khởi hành sang thời điểm khác. Quý khách vui lòng sắp xếp tham gia tour trong thời hạn visa hợp lệ. Trường hợp quý khách không tham gia tour,&nbsp;sẽ chỉ thu 10.000.000 vnđ và hoàn trả toàn bộ phần tiền còn lại cho quý khách.</p>\r\n', '<p>Polocy english</p>\r\n', 9200000, 1500000, 'Thứ 7 hàng tuần', 'Every saturday');

-- --------------------------------------------------------

--
-- Table structure for table `db_sanpham_hinhanh`
--

CREATE TABLE `db_sanpham_hinhanh` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_sanpham_hinhanh`
--

INSERT INTO `db_sanpham_hinhanh` (`id`, `id_sp`, `hinh_anh`, `title`) VALUES
(458, 704, '391565767458_2.jpg', ''),
(459, 704, '462092970802_3.jpg', ''),
(460, 704, '336088017174_4.jpg', ''),
(461, 704, '750496332642_5.jpg', ''),
(462, 704, '839910253852_19-750x41-636468511413777403-hasthumb.jpg', ''),
(463, 704, '664381857806_chua-huong.jpg', ''),
(464, 705, '081202956508_2.jpg', ''),
(465, 705, '426938458051_3.jpg', ''),
(466, 705, '870760469699_4.jpg', ''),
(467, 705, '884544387081_5.jpg', ''),
(468, 705, '836742839805_19-750x41-636468511413777403-hasthumb.jpg', ''),
(469, 705, '942912890345_chua-huong.jpg', ''),
(470, 706, '059383271714_2.jpg', ''),
(471, 706, '446279157509_3.jpg', ''),
(472, 706, '752942748786_4.jpg', ''),
(473, 706, '104385729447_5.jpg', ''),
(474, 706, '462113088283_19-750x41-636468511413777403-hasthumb.jpg', ''),
(475, 706, '567345956384_chua-huong.jpg', ''),
(476, 707, '490334562536_2.jpg', ''),
(477, 707, '200398539062_3.jpg', ''),
(478, 707, '012329978001_4.jpg', ''),
(479, 707, '568722442472_5.jpg', ''),
(480, 707, '226233444776_19-750x41-636468511413777403-hasthumb.jpg', ''),
(481, 707, '663473620402_chua-huong.jpg', ''),
(482, 708, '330353203302_2.jpg', ''),
(483, 708, '545191529904_3.jpg', ''),
(484, 708, '587680323369_4.jpg', ''),
(485, 708, '780120474093_5.jpg', ''),
(486, 708, '145046595264_19-750x41-636468511413777403-hasthumb.jpg', ''),
(487, 708, '296632510523_chua-huong.jpg', ''),
(488, 709, '352323097051_2.jpg', ''),
(489, 709, '752167991731_3.jpg', ''),
(490, 709, '631060895037_4.jpg', ''),
(491, 709, '447142318534_5.jpg', ''),
(492, 709, '324408672878_19-750x41-636468511413777403-hasthumb.jpg', ''),
(493, 709, '858361116831_chua-huong.jpg', ''),
(494, 710, '644646313388_2.jpg', ''),
(495, 710, '098909768481_3.jpg', ''),
(496, 710, '876513987351_4.jpg', ''),
(497, 710, '983321121021_5.jpg', ''),
(498, 710, '008846934686_19-750x41-636468511413777403-hasthumb.jpg', ''),
(499, 710, '984719918250_chua-huong.jpg', ''),
(500, 711, '331633014987_2.jpg', ''),
(501, 711, '805853965586_3.jpg', ''),
(502, 711, '587693737991_4.jpg', ''),
(503, 711, '302700590076_5.jpg', ''),
(504, 711, '472020689459_19-750x41-636468511413777403-hasthumb.jpg', ''),
(505, 711, '722511652832_chua-huong.jpg', ''),
(506, 712, '739470813683_2.jpg', ''),
(507, 712, '422133934195_3.jpg', ''),
(508, 712, '979830414352_4.jpg', ''),
(509, 712, '343602955279_5.jpg', ''),
(510, 712, '562971578452_19-750x41-636468511413777403-hasthumb.jpg', ''),
(511, 712, '593938263534_chua-huong.jpg', ''),
(512, 713, '165030167339_2.jpg', ''),
(513, 713, '456212179230_3.jpg', ''),
(514, 713, '377848354968_4.jpg', ''),
(515, 713, '074708653374_5.jpg', ''),
(516, 713, '592415453237_19-750x41-636468511413777403-hasthumb.jpg', ''),
(517, 713, '073569376847_chua-huong.jpg', ''),
(518, 714, '488922228407_2.jpg', ''),
(519, 714, '922074168983_3.jpg', ''),
(520, 714, '750106654546_4.jpg', ''),
(521, 714, '779620322629_5.jpg', ''),
(522, 714, '146945320331_19-750x41-636468511413777403-hasthumb.jpg', ''),
(523, 714, '006551239192_chua-huong.jpg', ''),
(524, 715, '597231474833_2.jpg', ''),
(525, 715, '200962095529_3.jpg', ''),
(526, 715, '478553412146_4.jpg', ''),
(527, 715, '393777007194_5.jpg', ''),
(528, 715, '303956893759_19-750x41-636468511413777403-hasthumb.jpg', ''),
(529, 715, '091316945323_chua-huong.jpg', ''),
(530, 716, '858772848072_2.jpg', ''),
(531, 716, '993524315183_3.jpg', ''),
(532, 716, '327116892770_4.jpg', ''),
(533, 716, '964761061313_5.jpg', ''),
(534, 716, '854463705417_19-750x41-636468511413777403-hasthumb.jpg', ''),
(535, 716, '106474470947_chua-huong.jpg', ''),
(536, 717, '674200813669_2.jpg', ''),
(537, 717, '713575678130_3.jpg', ''),
(538, 717, '228894062482_4.jpg', ''),
(539, 717, '573930811169_5.jpg', ''),
(540, 717, '737540673463_19-750x41-636468511413777403-hasthumb.jpg', ''),
(541, 717, '969218565958_chua-huong.jpg', ''),
(542, 718, '540558958888_2.jpg', ''),
(543, 718, '214535336926_3.jpg', ''),
(544, 718, '911830595641_4.jpg', ''),
(545, 718, '446325256719_5.jpg', ''),
(546, 718, '343936637711_19-750x41-636468511413777403-hasthumb.jpg', ''),
(547, 718, '860325579212_chua-huong.jpg', ''),
(548, 719, '980280630338_2.jpg', ''),
(549, 719, '556754806677_3.jpg', ''),
(550, 719, '511767765883_4.jpg', ''),
(551, 719, '957981746421_5.jpg', ''),
(552, 719, '902570321597_19-750x41-636468511413777403-hasthumb.jpg', ''),
(553, 719, '273761056855_chua-huong.jpg', ''),
(554, 720, '512710768439_2.jpg', ''),
(555, 720, '868380711292_3.jpg', ''),
(556, 720, '977202364535_4.jpg', ''),
(557, 720, '512465442270_5.jpg', ''),
(558, 720, '251481688309_19-750x41-636468511413777403-hasthumb.jpg', ''),
(559, 720, '636089541787_chua-huong.jpg', ''),
(560, 721, '950953157844_2.jpg', ''),
(561, 721, '573500378051_3.jpg', ''),
(562, 721, '698548033039_4.jpg', ''),
(563, 721, '345029476837_5.jpg', ''),
(564, 721, '865670840694_19-750x41-636468511413777403-hasthumb.jpg', ''),
(565, 721, '498802736248_chua-huong.jpg', ''),
(566, 722, '671795225211_2.jpg', ''),
(567, 722, '084859709293_3.jpg', ''),
(568, 722, '480643000270_4.jpg', ''),
(569, 722, '702323422818_5.jpg', ''),
(570, 722, '899718067131_19-750x41-636468511413777403-hasthumb.jpg', ''),
(571, 722, '532550630973_chua-huong.jpg', ''),
(572, 723, '392605221265_2.jpg', ''),
(573, 723, '490555035865_3.jpg', ''),
(574, 723, '722339879049_4.jpg', ''),
(575, 723, '562789239384_5.jpg', ''),
(576, 723, '898474057291_19-750x41-636468511413777403-hasthumb.jpg', ''),
(577, 723, '278182149417_chua-huong.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_seo`
--

CREATE TABLE `db_seo` (
  `id` int(11) NOT NULL,
  `title_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_seo`
--

INSERT INTO `db_seo` (`id`, `title_vn`, `title_us`, `keyword_vn`, `keyword_us`, `description_vn`, `description_us`) VALUES
(1, 'Vé máy bay thanh tùng', '', 'Vé máy bay thanh tùng', '', 'Vé máy bay thanh tùng', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_setting`
--

CREATE TABLE `db_setting` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_jp` varchar(255) NOT NULL,
  `ten_ch` text NOT NULL,
  `noi_dung_vn` longtext NOT NULL,
  `noi_dung_us` longtext NOT NULL,
  `noi_dung_jp` longtext NOT NULL,
  `noi_dung_ch` text NOT NULL,
  `hinh_anh_vn` varchar(255) NOT NULL,
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_jp` varchar(255) NOT NULL,
  `title_ch` text NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `hien_thi` int(11) NOT NULL,
  `hinh_anh_us` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_setting`
--

INSERT INTO `db_setting` (`id`, `ten_vn`, `ten_us`, `ten_jp`, `ten_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_jp`, `noi_dung_ch`, `hinh_anh_vn`, `title_vn`, `title_us`, `title_jp`, `title_ch`, `keyword`, `des`, `hien_thi`, `hinh_anh_us`) VALUES
(10, 'Text trang liên hệ', '', '', '', '<p>Thông tin liên hệ</p>\r\n', '', '', '', '', '', '', '', '', '', '', 1, ''),
(28, 'Text Footer', '', '', '', '<p><strong>CÔNG TY TNHH ĐẦU TƯ VÀ THƯƠNG MẠI VINACONNECT&nbsp;</strong></p>\r\n\r\n<p>Địa chỉ: 76 Trần Đình Xu, P. Cô Giang, Quận 1</p>\r\n\r\n<p>Chi nhánh: 1B9 - 1B11 Đường số 27, KP 05, P. Phú An, Quận 2&nbsp;</p>\r\n\r\n<p>Điện thoại: 08 3620 7663 - Fax: 3620 4792&nbsp;</p>\r\n\r\n<p>Email: vinaconnect@vinaconnect.com.vn&nbsp;</p>\r\n', '<p><strong><span style=\"font-size:16px\">DHT TRADING DEVELOPMENT COMPANY LIMITED</span></strong></p>\r\n\r\n<p>Address: Thu Thiem Star Tower, C8.7 A5 St, Binh Trung Dong Ward, Dicstrict 2, Ho Chi Minh City</p>\r\n\r\n<p>Phone: (08) 62 814 677 -&nbsp;Fax: (08) 62 814 657</p>\r\n\r\n<p>​Email: dht.co@outlook.com</p>\r\n', '', '', '', '', '', '', '', '', '', 1, ''),
(30, 'Logo', '', '', '', '', '', '', '', '961143795499_logo.png', '', '', '', '', '', '', 1, '463551056257_banner_us.png');

-- --------------------------------------------------------

--
-- Table structure for table `db_slide_sp`
--

CREATE TABLE `db_slide_sp` (
  `id` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `href` varchar(255) DEFAULT NULL,
  `title_vn` varchar(255) DEFAULT NULL,
  `mo_ta_vn` varchar(255) NOT NULL,
  `mo_ta_us` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL DEFAULT '1',
  `hien_thi` tinyint(1) NOT NULL DEFAULT '1',
  `id_loai` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_slide_sp`
--

INSERT INTO `db_slide_sp` (`id`, `hinh_anh`, `video`, `href`, `title_vn`, `mo_ta_vn`, `mo_ta_us`, `title_us`, `so_thu_tu`, `hien_thi`, `id_loai`) VALUES
(107, '326424607023_slider_1.jpg', '', '', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_tags`
--

CREATE TABLE `db_tags` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_tags`
--

INSERT INTO `db_tags` (`id`, `ten_vn`, `alias`) VALUES
(91, 'rau sach', 'rau-sach'),
(90, 'tag3', 'tag3'),
(89, 'tag2', 'tag2'),
(88, 'tag1', 'tag1'),
(92, 'may dong phuc', 'may-dong-phuc'),
(93, 'may ao thun', 'may-ao-thun'),
(94, 'dong phuc cong so', 'dong-phuc-cong-so'),
(95, 'vinaconnect1', 'vinaconnect1'),
(96, 'vinaconnect2', 'vinaconnect2'),
(97, 'vinaconnect3', 'vinaconnect3'),
(98, 'tags', 'tags'),
(99, 'tags1', 'tags1'),
(100, 'tags3', 'tags3');

-- --------------------------------------------------------

--
-- Table structure for table `db_thanhpho`
--

CREATE TABLE `db_thanhpho` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_thanhpho`
--

INSERT INTO `db_thanhpho` (`id`, `ten_vn`, `so_thu_tu`, `hien_thi`) VALUES
(1, 'Hồ Chí Minh', 1, 1),
(2, 'Bình Dương', 2, 1),
(3, 'Vũng Tàu', 3, 1),
(4, 'Hà Nội', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_thanhvien`
--

CREATE TABLE `db_thanhvien` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `dienthoai` varchar(12) NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `hienthi` tinyint(1) NOT NULL,
  `mathanhvien` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_thanhvien`
--

INSERT INTO `db_thanhvien` (`id`, `email`, `password`, `ten`, `dienthoai`, `gioitinh`, `diachi`, `ngaytao`, `hienthi`, `mathanhvien`) VALUES
(28, 'conghau0401@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Công Hậu', '0978192307', 'Nam', 'Quận Thủ đức, TPHCM', 1498634512, 1, '0uhmk5'),
(31, 'myhome2211@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'Hậu', '0978192307', 'Nam', 'Thủ đức', 1501060615, 1, 'hcawC9'),
(32, 'kythuat02.pnvn@gmail.com', '018108648935298bc4e6a312c4a443af', 'Công Hậu', '0978192307', '', '', 1519886539, 1, 'rlLNJ');

-- --------------------------------------------------------

--
-- Table structure for table `db_thongke`
--

CREATE TABLE `db_thongke` (
  `id` int(11) NOT NULL,
  `trong_ngay` int(11) NOT NULL,
  `trong_ngay_date` int(11) NOT NULL,
  `trong_tuan` int(11) NOT NULL,
  `trong_tuan_date` int(11) NOT NULL,
  `trong_thang` int(11) NOT NULL,
  `trong_thang_date` int(11) NOT NULL,
  `tong_truy_cap` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_thongke`
--

INSERT INTO `db_thongke` (`id`, `trong_ngay`, `trong_ngay_date`, `trong_tuan`, `trong_tuan_date`, `trong_thang`, `trong_thang_date`, `tong_truy_cap`) VALUES
(1, 1, 15, 1, 29, 3, 7, 15878);

-- --------------------------------------------------------

--
-- Table structure for table `db_thongke_detail`
--

CREATE TABLE `db_thongke_detail` (
  `session_id` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_thongke_detail`
--

INSERT INTO `db_thongke_detail` (`session_id`, `time`) VALUES
('sgptc5ta8pup222b2ijla443b0', 1594807453);

-- --------------------------------------------------------

--
-- Table structure for table `db_thongtin`
--

CREATE TABLE `db_thongtin` (
  `id` int(11) NOT NULL,
  `company_vn` text NOT NULL,
  `company_us` text NOT NULL,
  `address_us` text NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `address_vn` text NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `dien_thoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `toado` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `gg` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_thongtin`
--

INSERT INTO `db_thongtin` (`id`, `company_vn`, `company_us`, `address_us`, `hotline`, `address_vn`, `twitter`, `facebook`, `google`, `dien_thoai`, `email`, `toado`, `youtube`, `skype`, `gg`) VALUES
(1, 'Vé máy bay thanh tùng', 'PHU MY SOP JOINT STOCK COMPANY', 'No. 12 Le Ngo Cat Street, Ward 7, District 3, Ho Chi Minh City. Ho Chi Minh', '0978192307', '49 Hoàng Văn Thụ, P.15, Quận Phú Nhuận, TPHCM', 'https://www.youtube.com/embed/QdkZmzCSPDQ', 'https://www.facebook.com/rememberforlife/', '', '', 'tung@gmail.com', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_thuvienanh`
--

CREATE TABLE `db_thuvienanh` (
  `id` int(11) NOT NULL,
  `id_loai` tinyint(1) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `hinh_anh_thumb` varchar(255) NOT NULL,
  `id_video` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_tintuc`
--

CREATE TABLE `db_tintuc` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `alias_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_vn` text NOT NULL,
  `noi_dung_us` text NOT NULL,
  `noi_dung_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `ngay_dang` int(11) NOT NULL,
  `noi_bat` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 la noi bat, mac định là 0',
  `tieu_bieu` tinyint(4) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL COMMENT '0 là ẩn, 1 là hiện',
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `tags_hienthi` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hen_ngay` varchar(255) NOT NULL,
  `hen_gio` varchar(255) NOT NULL,
  `hen_ngay_dang` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_tintuc`
--

INSERT INTO `db_tintuc` (`id`, `ten_vn`, `ten_us`, `ten_ch`, `alias_vn`, `alias_us`, `alias_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_ch`, `hinh_anh`, `ngay_dang`, `noi_bat`, `tieu_bieu`, `hien_thi`, `title_vn`, `title_us`, `title_ch`, `keyword`, `tags`, `tags_hienthi`, `des`, `id_loai`, `so_thu_tu`, `hen_ngay`, `hen_gio`, `hen_ngay_dang`) VALUES
(610, 'Lễ hội hoa 5 châu', '', '', 'le-hoi-hoa-5-chau', '', '', 'Thưởng ngoạn hoa anh đào trên đảo Jeju và thủ đô Seoul nơi xứ sở Kim Chi - Hàn Quốc. Khám phá thủ đô Seoul sầm uất, thưởng thức show diễn nghệ thuật Painters Hero vẽ tranh độc đáo trên nền nhạc sôi động kết hợp các điệu nhảy vui nhộn', '', '', '<p>Nội dung bài viết here</p>\r\n', '', '', '', 1596095096, 0, 0, 1, 'Lễ hội hoa 5 châu', '', '', '', '', '', '', 272, 0, '', '', ''),
(611, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '014290536640_chua-huong.jpg', 1596096499, 0, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(612, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-897', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '931605698826_chua-huong.jpg', 1596096501, 0, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(613, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-787', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '608863466097_chua-huong.jpg', 1596096502, 0, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(614, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-342', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '262425048922_chua-huong.jpg', 1596096504, 0, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(615, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-996', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '592952679667_chua-huong.jpg', 1596096506, 0, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(616, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-546', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '046671203575_chua-huong.jpg', 1596096507, 0, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(617, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-922', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '265465322610_chua-huong.jpg', 1596096508, 0, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(618, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-888', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '761718732833_chua-huong.jpg', 1596096509, 0, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(619, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-270', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '080765949186_chua-huong.jpg', 1596096511, 0, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(620, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-67', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '071761677233_chua-huong.jpg', 1596096512, 0, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(621, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-977', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '767839471870_chua-huong.jpg', 1596096514, 1, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(622, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-683', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '449877752922_chua-huong.jpg', 1596096515, 1, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(623, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-831', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '644926106930_chua-huong.jpg', 1596096518, 1, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(624, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-741', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '036090164276_chua-huong.jpg', 1596096519, 1, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', ''),
(625, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', 'xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-720', '', '', 'Vậy ở chùa Hương có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng. Chùa Hương hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng', '', '', '<p>Vậy ở&nbsp;<strong>chùa Hương</strong>&nbsp;có gì thú vị mà lại thu hút nhiều du khách trong lẫn ngoài nước đến như vậy, chúng ta hãy cùng tìm hiểu xem nhé.</p>\r\n\r\n<p><strong><em>Chùa Hương</em>&nbsp;</strong>hay tên gọi đầy đủ là chùa Hương Sơn, là một quần thể di tích thắng cảnh với rất nhiều ngôi chùa, đền, đình, bao quanh là non nước hùng vĩ và hoang sơ.</p>\r\n\r\n<p>Cảnh vật ở nơi đây nên thơ đến lạ, khiến cho biết bao du khách không khỏi trầm trồ khen ngợi và thích thú. Chẳng vậy mà đã từ lâu, người ta coi chùa Hương là một điểm đến lí tưởng cho các phật tử vào những tháng đầu năm, đặc biệt là thời điểm diễn ra mùa lễ hội.</p>\r\n\r\n<p>Muốn khám phá cảnh đẹp ở<em>&nbsp;chùa Hương</em>, bạn phải đi đò trên sông nước trong khoảng thời gian khá dài, từ bến Đục bạn lên thuyền du ngoạn trên con suối Yến, đến bến Trò thuyền mới quay ra.</p>\r\n\r\n<p>Nhiều người thắc mắc rằng tại sao họ không xây dựng nên những con đường đi bộ hoặc những chiếc cầu để người dân và du khách chủ động đi lại dễ dàng hơn. Thế nhưng nếu vậy sẽ không còn cái nét riêng mà chỉ chùa Hương mới có nữa, du khách cũng không còn được cảm nhận hết nét đặc sắc mà phong cảnh nơi đây sở hữu và được ban tặng.</p>\r\n\r\n<p><img alt=\"Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương\" src=\"https://cdn3.ivivu.com/2018/01/xieu-long-voi-nhung-canh-dep-nen-tho-o-chua-huong-ivivu-3.jpg\" style=\"border:0px none; box-sizing:border-box; display:block; height:auto !important; margin:0px auto; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>Đến đây, bạn chỉ có một cách duy nhất là ngồi trên những con thuyền bé xinh dưới bàn tay chèo thuyền điêu luyện của những người lái đò, họ sẽ đưa bạn đi khám phá những đền chùa trên những ngọn núi, cách nhau bởi những khúc sông quanh co uốn lượn. Dòng suối Yến mang một vẻ đẹp hiền hòa, buông mình giữa hai triền núi với những khúc cong mềm mại.</p>\r\n\r\n<p>Du khách chắc hẳn sẽ cảm thấy mới lạ và hứng thú khi được ngồi thuyền vi vu trên sông nước, hòa mình vào cùng với thiên nhiên để cảm nhận cái nét đẹp hoang sơ của phong cảnh nơi đây. Từ trên thuyền, bạn sẽ được chiêm ngưỡng những ngọn núi, ngọn đồi được bao phủ bởi những hàng cây xanh mướt, được cảm nhận sự hòa quyện của gió, nắng, nước và cây cỏ.</p>\r\n', '', '', '744101746786_chua-huong.jpg', 1596096520, 1, 0, 1, 'Xiêu lòng với những cảnh đẹp nên thơ ở chùa Hương', '', '', '', '', '', '', 476, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `user_hash` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass_hash` text NOT NULL,
  `tai_khoan` text NOT NULL,
  `email` text NOT NULL,
  `ho_ten` text NOT NULL,
  `dien_thoai` text NOT NULL,
  `dia_chi` text NOT NULL,
  `hinh_anh` text NOT NULL,
  `ngay_sinh` text NOT NULL,
  `gioi_tinh` int(11) NOT NULL,
  `quyen_han` int(11) NOT NULL,
  `hien_thi` int(11) NOT NULL,
  `ngay_tao` int(11) NOT NULL,
  `is_admin` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `token`, `user_hash`, `pass_hash`, `tai_khoan`, `email`, `ho_ten`, `dien_thoai`, `dia_chi`, `hinh_anh`, `ngay_sinh`, `gioi_tinh`, `quyen_han`, `hien_thi`, `ngay_tao`, `is_admin`) VALUES
(19, '', '718c62ed368106ebe4fd82717b09bc7ff63f6284', 'f291fde01abec6b47ccf4af498f27113d8f9f77e', 'Admin', '', 'Admin', '', '', '', '', 1, 1, 1, 1473306606, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user_permission_group`
--

CREATE TABLE `db_user_permission_group` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_permission` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_user_permission_group`
--

INSERT INTO `db_user_permission_group` (`id`, `id_user`, `id_permission`, `stt`, `hide`) VALUES
(3, 10, 1, 0, 0),
(4, 10, 2, 0, 0),
(9, 11, 1, 0, 0),
(10, 11, 2, 0, 0),
(11, 11, 5, 0, 0),
(12, 11, 6, 0, 0),
(13, 11, 10, 0, 0),
(14, 17, 1, 0, 0),
(15, 17, 2, 0, 0),
(16, 17, 6, 0, 0),
(17, 16, 1, 0, 0),
(18, 16, 2, 0, 0),
(19, 16, 6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_video`
--

CREATE TABLE `db_video` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL,
  `id_loai` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `names`
--

CREATE TABLE `names` (
  `id` int(11) NOT NULL,
  `first` text COLLATE utf8_unicode_ci,
  `middle` text COLLATE utf8_unicode_ci,
  `last` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `names`
--

INSERT INTO `names` (`id`, `first`, `middle`, `last`, `email`) VALUES
(99, 'sản phẩm 4', 'hehe', 'jjj', 'jjj@yahoo.com'),
(98, 'sản phẩm 3', 'hoho', 'yyuy', 'yyy@gmail.com'),
(97, 'sản phẩm 2', 'kk', 'xxx', 'xxx@yahoo.com'),
(96, 'sản phẩm 1', '', 'vv', 'vv@yahoo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_baiviet_hinhanh`
--
ALTER TABLE `db_baiviet_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_chitietdathang`
--
ALTER TABLE `db_chitietdathang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_danhmuc_hoidap`
--
ALTER TABLE `db_danhmuc_hoidap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_dathang`
--
ALTER TABLE `db_dathang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_datlich`
--
ALTER TABLE `db_datlich`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_dknhamau`
--
ALTER TABLE `db_dknhamau`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_email`
--
ALTER TABLE `db_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_extra`
--
ALTER TABLE `db_extra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_file`
--
ALTER TABLE `db_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_gallery`
--
ALTER TABLE `db_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_hinhanh`
--
ALTER TABLE `db_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_hinhthucthanhtoan`
--
ALTER TABLE `db_hinhthucthanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_hotro`
--
ALTER TABLE `db_hotro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_khachhang`
--
ALTER TABLE `db_khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_kichthuoc`
--
ALTER TABLE `db_kichthuoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_lienhe`
--
ALTER TABLE `db_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_lienketwebsite`
--
ALTER TABLE `db_lienketwebsite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_loaisanpham`
--
ALTER TABLE `db_loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_loaitintuc`
--
ALTER TABLE `db_loaitintuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_map`
--
ALTER TABLE `db_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_mausac`
--
ALTER TABLE `db_mausac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_module`
--
ALTER TABLE `db_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_nhomhotro`
--
ALTER TABLE `db_nhomhotro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_permission_group`
--
ALTER TABLE `db_permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_phuongtien`
--
ALTER TABLE `db_phuongtien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_quan`
--
ALTER TABLE `db_quan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_question`
--
ALTER TABLE `db_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_sanpham`
--
ALTER TABLE `db_sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_sanpham_hinhanh`
--
ALTER TABLE `db_sanpham_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_seo`
--
ALTER TABLE `db_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_setting`
--
ALTER TABLE `db_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slide_sp`
--
ALTER TABLE `db_slide_sp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_tags`
--
ALTER TABLE `db_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_thanhpho`
--
ALTER TABLE `db_thanhpho`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_thanhvien`
--
ALTER TABLE `db_thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_thongke`
--
ALTER TABLE `db_thongke`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_thongke_detail`
--
ALTER TABLE `db_thongke_detail`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `db_thongtin`
--
ALTER TABLE `db_thongtin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_thuvienanh`
--
ALTER TABLE `db_thuvienanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_tintuc`
--
ALTER TABLE `db_tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user_permission_group`
--
ALTER TABLE `db_user_permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_video`
--
ALTER TABLE `db_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `names`
--
ALTER TABLE `names`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_baiviet_hinhanh`
--
ALTER TABLE `db_baiviet_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;

--
-- AUTO_INCREMENT for table `db_chitietdathang`
--
ALTER TABLE `db_chitietdathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT for table `db_danhmuc_hoidap`
--
ALTER TABLE `db_danhmuc_hoidap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_dathang`
--
ALTER TABLE `db_dathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `db_datlich`
--
ALTER TABLE `db_datlich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_dknhamau`
--
ALTER TABLE `db_dknhamau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_email`
--
ALTER TABLE `db_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `db_extra`
--
ALTER TABLE `db_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `db_file`
--
ALTER TABLE `db_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `db_gallery`
--
ALTER TABLE `db_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `db_hinhanh`
--
ALTER TABLE `db_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `db_hinhthucthanhtoan`
--
ALTER TABLE `db_hinhthucthanhtoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_hotro`
--
ALTER TABLE `db_hotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `db_khachhang`
--
ALTER TABLE `db_khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_kichthuoc`
--
ALTER TABLE `db_kichthuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_lienhe`
--
ALTER TABLE `db_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `db_lienketwebsite`
--
ALTER TABLE `db_lienketwebsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `db_loaisanpham`
--
ALTER TABLE `db_loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `db_loaitintuc`
--
ALTER TABLE `db_loaitintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `db_map`
--
ALTER TABLE `db_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `db_mausac`
--
ALTER TABLE `db_mausac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `db_module`
--
ALTER TABLE `db_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `db_nhomhotro`
--
ALTER TABLE `db_nhomhotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_permission_group`
--
ALTER TABLE `db_permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `db_phuongtien`
--
ALTER TABLE `db_phuongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_quan`
--
ALTER TABLE `db_quan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_question`
--
ALTER TABLE `db_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_sanpham`
--
ALTER TABLE `db_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=724;

--
-- AUTO_INCREMENT for table `db_sanpham_hinhanh`
--
ALTER TABLE `db_sanpham_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=578;

--
-- AUTO_INCREMENT for table `db_seo`
--
ALTER TABLE `db_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_setting`
--
ALTER TABLE `db_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `db_slide_sp`
--
ALTER TABLE `db_slide_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `db_tags`
--
ALTER TABLE `db_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `db_thanhpho`
--
ALTER TABLE `db_thanhpho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_thanhvien`
--
ALTER TABLE `db_thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `db_thongke`
--
ALTER TABLE `db_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_thongtin`
--
ALTER TABLE `db_thongtin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_thuvienanh`
--
ALTER TABLE `db_thuvienanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `db_tintuc`
--
ALTER TABLE `db_tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=626;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `db_user_permission_group`
--
ALTER TABLE `db_user_permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `db_video`
--
ALTER TABLE `db_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `names`
--
ALTER TABLE `names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
