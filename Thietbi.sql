-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 15, 2019 lúc 05:42 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `Thietbi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Chitietdonhang`
--

CREATE TABLE `Chitietdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(10000) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `Chitietdonhang`
--

INSERT INTO `Chitietdonhang` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES
(1, 2, 1, 'Điện thoại iPhone 8 Plus 256GB', 25790000, 17),
(2, 2, 2, 'Điện thoại iPhone X 256GB', 27990000, 1),
(3, 23, 20, 'Laptop Lenovo Ideapad 330 15IKBR i5 8250U/4GB/1TB/Win10', 12490000, 1),
(4, 24, 20, 'Laptop Lenovo Ideapad 330 15IKBR i5 8250U/4GB/1TB/Win10', 12490000, 1),
(5, 25, 20, 'Laptop Lenovo Ideapad 330 15IKBR i5 8250U/4GB/1TB/Win10', 12490000, 1),
(6, 26, 20, 'Laptop Lenovo Ideapad 330 15IKBR i5 8250U/4GB/1TB/Win10', 12490000, 1),
(7, 27, 20, 'Laptop Lenovo Ideapad 330 15IKBR i5 8250U/4GB/1TB/Win10', 12490000, 1),
(8, 28, 20, 'Laptop Lenovo Ideapad 330 15IKBR i5 8250U/4GB/1TB/Win10', 12490000, 1),
(9, 29, 20, 'Laptop Lenovo Ideapad 330 15IKBR i5 8250U/4GB/1TB/Win10', 12490000, 1),
(10, 30, 20, 'Laptop Lenovo Ideapad 330 15IKBR i5 8250U/4GB/1TB/Win10', 12490000, 1),
(11, 31, 15, 'Điện thoại Nokia 8.1', 7990000, 1),
(12, 32, 19, 'Laptop Acer Aspire E5 576 34ND i3 8130U/4GB/1TB/Win10', 10790000, 1),
(13, 33, 19, 'Laptop Acer Aspire E5 576 34ND i3 8130U/4GB/1TB/Win10', 10790000, 1),
(14, 39, 20, 'Laptop Lenovo Ideapad 330 15IKBR i5 8250U/4GB/1TB/Win10', 12490000, 1),
(15, 40, 15, 'Điện thoại Nokia 8.1', 7990000, 1),
(16, 41, 19, 'Laptop Acer Aspire E5 576 34ND i3 8130U/4GB/1TB/Win10', 10790000, 1),
(17, 42, 19, 'Laptop Acer Aspire E5 576 34ND i3 8130U/4GB/1TB/Win10', 10790000, 1),
(18, 1, 19, 'Laptop Acer Aspire E5 576 34ND i3 8130U/4GB/1TB/Win10', 10790000, 1),
(19, 2, 19, 'Laptop Acer Aspire E5 576 34ND i3 8130U/4GB/1TB/Win10', 21580000, 2),
(20, 6, 3, 'Điện thoại iPhone Xs Max 512GB', 159960000, 4),
(21, 7, 20, 'Laptop Lenovo Ideapad 330 15IKBR i5 8250U/4GB/1TB/Win10', 24980000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DonHang`
--

CREATE TABLE `DonHang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `DonHang`
--

INSERT INTO `DonHang` (`id`, `tenkhachhang`, `sodienthoai`, `email`) VALUES
(1, 'hieu', 1234, 0),
(2, 'hieu', 31, 0),
(3, '1e', 123, 0),
(4, 'hieu', 8989, 0),
(5, 'jnjasdj', 21, 0),
(6, 'sfsv', 12, 0),
(7, 'asd', 213, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Loaisanpham`
--

CREATE TABLE `Loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `Loaisanpham`
--

INSERT INTO `Loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Điện thoại', 'https://cdn3.iconfinder.com/data/icons/essential-flat/100/mobile-512.png'),
(2, 'Laptop', 'https://cdn1.iconfinder.com/data/icons/flat-business-icons/128/laptop-512.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `SanPham`
--

CREATE TABLE `SanPham` (
  `id` int(11) NOT NULL,
  `TenSanPham` varchar(200) NOT NULL,
  `GiaSanPham` int(15) NOT NULL,
  `HinhAnhSanPham` varchar(200) NOT NULL,
  `MoTaSanPham` varchar(10000) NOT NULL,
  `idSanPham` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `SanPham`
--

INSERT INTO `SanPham` (`id`, `TenSanPham`, `GiaSanPham`, `HinhAnhSanPham`, `MoTaSanPham`, `idSanPham`) VALUES
(1, 'Điện thoại iPhone 8 Plus 256GB', 25790000, 'https://cdn.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb-red-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 12\r\nCamera sau:	Chính 12 MP & Phụ 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A11 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	2691 mAh, có sạc nhanh', 1),
(2, 'Điện thoại iPhone X 256GB', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/114111/iphone-x-256gb-silver-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	OLED, 5.8\", Super Retina\r\nHệ điều hành:	iOS 12\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A11 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	2716 mAh, có sạc nhanh', 1),
(3, 'Điện thoại iPhone Xs Max 512GB', 39990000, 'https://cdn.tgdd.vn/Products/Images/42/191482/iphone-xs-max-512gb-gold-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	OLED, 6.5\", Super Retina\r\nHệ điều hành:	iOS 12\r\nCamera sau:	Chính 12 MP & Phụ 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A12 Bionic 6 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	512 GB\r\nThẻ SIM:\r\nNano SIM & eSIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3174 mAh, có sạc nhanh', 1),
(4, 'Điện thoại Samsung Galaxy A50', 6990000, 'https://cdn.tgdd.vn/Products/Images/42/196963/samsung-galaxy-a50-black-1-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.4\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 25 MP & Phụ 8 MP, 5 MP\r\nCamera trước:	25 MP\r\nCPU:	Exynos 9610 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 1),
(5, 'Điện thoại Samsung Galaxy Note 9', 18990000, 'https://cdn.tgdd.vn/Products/Images/42/154897/samsung-galaxy-note-9-black-400x460-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.4\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	Chính 12 MP & Phụ 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 1),
(6, 'Điện thoại Samsung Galaxy S10+', 22990000, 'https://cdn.tgdd.vn/Products/Images/42/179530/samsung-galaxy-s10-plus-black-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	Dynamic AMOLED, 6.4\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 12 MP & Phụ 12 MP, 16 MP\r\nCamera trước:	Chính 10 MP & Phụ 8 MP\r\nCPU:	Exynos 9820 8 nhân 64-bit\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4100 mAh, có sạc nhanh', 1),
(7, 'Laptop Apple Macbook Air MREE2SA/A i5/8GB/128GB (2018)', 31990000, 'https://cdn.tgdd.vn/Products/Images/44/197305/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 1.60 GHz\r\nRAM:	8 GB, DDR3, 2133 MHz\r\nỔ cứng:	SSD: 128 GB\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics 617\r\nCổng kết nối:	2 x Thunderbolt 3 (USB-C)\r\nHệ điều hành:	Mac OS\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền\r\nKích thước:	Dày 4.1 đến 15.6 mm, 1.25 kg', 2),
(8, 'Laptop Asus VivoBook S510UN i5 8250U/4GB/1TB/ MX150/Win10/(BQ276T)', 16790000, 'https://cdn.tgdd.vn/Products/Images/44/195008/asus-s510un-i5-8250u-4gb-1tb-mx150-win10-bq276t-33397-thumb-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 8250U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA Geforce MX150, 2GB\r\nCổng kết nối:	2 x USB 2.0, HDMI, USB 3.0, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\r\nKích thước:	Dày 17 mm, 1.62 kg', 2),
(9, 'Laptop Dell Vostro 3578 i7 8550U/8GB/1TB/2GB 520/Win10', 20990000, 'https://cdn.tgdd.vn/Products/Images/44/166602/dell-vostro-3578-ngmpf11-450x300-600x600-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Kabylake Refresh, 8550U, 1.80 GHz\r\nRAM:	8 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, AMD Radeon 520, 2GB\r\nCổng kết nối:	HDMI 1.4, 2 x USB 3.0, LAN (RJ45), USB 2.0, VGA (D-Sub)\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN rời\r\nKích thước:	Dày 25.44 mm, 2.2 kg', 2),
(10, 'Laptop Apple Macbook Pro Touch MR9Q2SA/A i5 2.3GHz/8GB/256GB', 44490000, 'https://cdn.tgdd.vn/Products/Images/44/184384/apple-macbook-pro-touch-mr9q2sa-a-2018-thumb-1-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Kabylake Refresh, 2.30 GHz\r\nRAM:	8 GB, DDR3L(On board), 2133 MHz\r\nỔ cứng:	SSD: 256 GB\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)\r\nCard màn hình:	Card đồ họa tích hợp, Intel Iris Plus Graphics 655\r\nCổng kết nối:	4 x Thunderbolt 3 (USB-C)\r\nĐặc biệt:	Có đèn bàn phím\r\nHệ điều hành:	Mac OS\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền\r\nKích thước:	Dày 14.9 mm, 1.37 kg', 2),
(11, 'Điện thoại Huawei Mate 20 Pro', 17990000, 'https://cdn.tgdd.vn/Products/Images/42/188963/huawei-mate-20-pro-purple-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	OLED, 6.39\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 40 MP & Phụ 20 MP, 8 MP\r\nCamera trước:	24 MP\r\nCPU:	Hisilicon Kirin 980 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	NM card, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4200 mAh, có sạc nhanh', 1),
(12, 'Điện thoại Vivo V15', 7990000, 'https://cdn.tgdd.vn/Products/Images/42/199041/vivo-v15-1-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.53\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 12 MP & Phụ 8 MP, 5 MP\r\nCamera trước:	32 MP\r\nCPU:	MediaTek Helio P70 8 nhân\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 1),
(13, 'Điện thoại Huawei Mate 20 Pro', 17990000, 'https://cdn.tgdd.vn/Products/Images/42/188963/huawei-mate-20-pro-purple-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	OLED, 6.39\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 40 MP & Phụ 20 MP, 8 MP\r\nCamera trước:	24 MP\r\nCPU:	Hisilicon Kirin 980 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	NM card, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4200 mAh, có sạc nhanh', 1),
(14, 'Điện thoại Vivo V15', 7990000, 'https://cdn.tgdd.vn/Products/Images/42/199041/vivo-v15-1-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.53\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 12 MP & Phụ 8 MP, 5 MP\r\nCamera trước:	32 MP\r\nCPU:	MediaTek Helio P70 8 nhân\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 1),
(15, 'Điện thoại Nokia 8.1', 7990000, 'https://cdn.tgdd.vn/Products/Images/42/194917/nokia-81-silver-18thangbh-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.18”, Full HD+\r\nHệ điều hành:	Android 9 Pie (Android One)\r\nCamera sau:	Chính 12 MP & Phụ 13 MP\r\nCamera trước:	20 MP\r\nCPU:	Snapdragon 710 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3500 mAh, có sạc nhanh', 1),
(16, 'Laptop Lenovo Ideapad 330S 14IKBR i5 8250U/4GB/1TB/Win10', 12990000, 'https://cdn.tgdd.vn/Products/Images/44/195078/lenovo-ideapad-330s-14ikbr-i5-8250u-4gb-1tb-win10-33397-thumb-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 8250U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (On board +1 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® HD Graphics 620\r\nCổng kết nối:	HDMI 2.0, 2 x USB 3.1, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 18.9 mm, 1.67 kg', 2),
(17, 'Điện thoại Nokia 8.1', 7990000, 'https://cdn.tgdd.vn/Products/Images/42/194917/nokia-81-silver-18thangbh-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.18”, Full HD+\r\nHệ điều hành:	Android 9 Pie (Android One)\r\nCamera sau:	Chính 12 MP & Phụ 13 MP\r\nCamera trước:	20 MP\r\nCPU:	Snapdragon 710 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3500 mAh, có sạc nhanh', 1),
(18, 'Laptop HP Pavilion 15 cs1009TU i5 8265U/4GB/1TB/Win10', 15390000, 'https://cdn.tgdd.vn/Products/Images/44/195383/hp-pavilion-15-cs1009tu-i5-8265u-4gb-1tb-win10-5j-thumb-33397-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2666 MHz\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® HD Graphics 620\r\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\r\nKích thước:	Dày 17.9 mm, 1.8 kg', 2),
(19, 'Laptop Acer Aspire E5 576 34ND i3 8130U/4GB/1TB/Win10', 10790000, 'https://cdn.tgdd.vn/Products/Images/44/184747/acer-aspire-e5-576-34nd-nxgrysv004-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i3 Kabylake Refresh, 8130U, 2.20 GHz\r\nRAM:	4 GB, DDR3L (2 khe RAM), 1600 MHz\r\nỔ cứng:	HDD: 1 TB, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0, USB Type-C, VGA (D-Sub)\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 30.4 mm, 2.23 kg', 2),
(20, 'Laptop Lenovo Ideapad 330 15IKBR i5 8250U/4GB/1TB/Win10', 12490000, 'https://cdn.tgdd.vn/Products/Images/44/191992/lenovo-ideapad-330-15ikbr-81de01kwvn-450-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (On board +1 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB\r\nMàn hình:	15.6 inch, HD (1366 x 768)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® HD Graphics 620\r\nCổng kết nối:	2 x USB 3.0, HDMI, LAN (RJ45), USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 22.9 mm, 2.2 Kg', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `Chitietdonhang`
--
ALTER TABLE `Chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DonHang`
--
ALTER TABLE `DonHang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Loaisanpham`
--
ALTER TABLE `Loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `SanPham`
--
ALTER TABLE `SanPham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `Chitietdonhang`
--
ALTER TABLE `Chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `DonHang`
--
ALTER TABLE `DonHang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `Loaisanpham`
--
ALTER TABLE `Loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `SanPham`
--
ALTER TABLE `SanPham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
