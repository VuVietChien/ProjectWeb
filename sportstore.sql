-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2021 lúc 04:09 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sportstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `mota`) VALUES
(1, 'ADIDAS', 'tuyệt123'),
(2, 'Pimo', '123213213');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `product_name`, `product_id`, `product_price`, `product_image`, `product_quantity`) VALUES
(1, 'Áo polo xanh', 1, '560000', 'product12.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'ĐỒ BÓNG ĐÁ'),
(2, 'TẬP GYM'),
(4, 'THẢM TẬP YOGA'),
(5, 'ÁO BRA'),
(6, 'QUẦN LEGGING'),
(7, 'PHỤ KIỆN'),
(8, 'Thực phẩm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(100) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`) VALUES
(1, 14, 'Nguyễn Kenshin', 'thuanbin1108@gmail.', '0132132231', 'Hà Nội', 'ABC', '2021-11-24 10:54:49', 2, 3),
(2, 4, 'neymar JR', 'xczc@gmail.com', '6545546', 'VP', 'BVV', '2021-11-22 10:54:49', 1, 6001),
(3, 17, 'thuans', 'thuanbin1102@gmail.com', '0564651231', 'Đông Anh', '', '2021-11-10 01:54:39', 1, 100000),
(4, 17, 'babyken', 'thuanbin1108@gmail.com', '0564651231', 'ALAO', '', '2021-11-10 02:01:23', 2, 200000),
(5, 17, 'zxczxc', 'thuanbin1108@gmail.com', '123', 'dsa', 'sadádád', '2021-11-10 03:14:47', 1, 10000),
(6, 17, 'Laydykil', 'thuan@gmail.com', '123', '12346', 'zXCAASd', '2021-11-10 07:40:44', 1, 10002),
(7, 17, 'asdasd', 'thuan@gmail.com', '0564651231', 'Đông Anh', 'asd', '2021-11-10 07:47:32', 1, 400000),
(8, 17, 'asdasd', 'thuan@gmail.com', '213', '321', '231', '2021-11-10 09:41:40', 0, 50000),
(9, 17, 'thuans', 'thuanbin1102@gmail.com', '0564651231', 'Đông Anh', '21212', '2021-11-10 09:52:18', 0, 50000),
(10, 17, 'thuans', 'thuanbin1102@gmail.com', '0564651231', 'Đông Anh', '123123213', '2021-11-10 10:02:56', 0, 300000),
(11, 17, 'Thuận Nguyễn', 'thuanbin1102@gmail.com', '0865532467', 'Đông Anh', '123213', '2021-11-10 10:14:54', 0, 200000),
(12, 17, 'asdasd', 'thuanbin1102@gmail.com', 'ád', 'sad', 'ssdsd', '2021-11-10 10:17:56', 0, 40000),
(13, 17, 'baby', 'thuanbin1108@gmail.com', 'sad', 'sad', 'sa', '2021-11-10 10:20:49', 0, 500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `num`, `total_money`) VALUES
(1, 1, 1, 1, 2, 2),
(2, 2, 1, 1, 1, 1),
(3, 2, 5, 2000, 3, 6000),
(4, 3, 35, 100000, 1, 100000),
(5, 4, 35, 100000, 2, 200000),
(6, 5, 22, 10000, 1, 10000),
(7, 6, 16, 10000, 1, 10000),
(8, 6, 7, 2, 1, 2),
(9, 7, 35, 100000, 4, 400000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` int(255) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT 'Xoá mềm ( mặc định là 0)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `discount`, `image`, `brand`, `description`, `quantity`, `active`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 2, 'Áo polo xanh', '560000', 2000, 'assets/photos/317485.png', '', 'ad', 1, 0, '2021-11-12 17:12:16', '2021-11-01 10:37:13', 1),
(2, 2, 'Áo thun thể thao Design màu đen', '280000', 175000, 'assets/photos/Ao-thun-the-thao-design-mau-den-1-300x300.jpg', '', '<p>&Aacute;o thun thể thao&nbsp;<strong>Design m&agrave;u đen&nbsp;</strong>l&agrave; một trong những mẫu &aacute;o thể thao Activity 2021 năm nay. &Aacute;o được thiết kế với phong c&aacute;ch thời trang, năng động, c&ugrave;ng với chất liệu co giản 4 chiều. Đ&acirc;y sẽ l&agrave; một trong những mẫu trang phục kh&ocirc;ng thể thiếu khi đồng h&agrave;nh c&ugrave;ng bạn đến ph&ograve;ng tập hay bất cứ m&ocirc;n thể thao n&agrave;o.</p>\r\n\r\n<p><strong>Chất liệu:&nbsp;</strong>88% Polyester &ndash; 12% Spandex</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Đen &ndash; Xanh r&ecirc;u &ndash; Xanh đen</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng:&nbsp;</strong>&Aacute;o thun thể thao nam</p>', 1, 1, NULL, NULL, 0),
(3, 2, 'Áo thun thể thao Poseidon xám', '280000', 175000, 'assets/photos/Ao-poseidon-xam-1-300x300.jpg', '', '<p>&Aacute;o thun thể thao&nbsp;<strong>Poseidon x&aacute;m&nbsp;</strong>l&agrave; một trong những mẫu &aacute;o thể thao &ldquo;Thần Thoại Hy Lạp&rdquo; của 2020 năm nay. &Aacute;o được thiết kế với phong c&aacute;ch thời trang, năng động, c&ugrave;ng với chất liệu co giản 4 chiều. Đ&acirc;y sẽ l&agrave; một trong những mẫu trang phục kh&ocirc;ng thể thiếu khi đồng h&agrave;nh c&ugrave;ng bạn đến ph&ograve;ng tập hay bất cứ m&ocirc;n thể thao n&agrave;o.</p>\r\n\r\n<p><strong>Chất liệu: 80</strong>% Polyester &ndash; 20% Spandex</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Đen &ndash; X&aacute;m &ndash; Xanh đen &ndash; Xanh dương</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng:&nbsp;</strong>&Aacute;o thun thể thao nam</p>', 1, 1, NULL, NULL, 0),
(4, 2, 'Bra 360s Lux màu xanh đen', '300000', 200000, 'assets/photos/Bra-lux-xanh-den-30-300x300.jpg', '', '<p>&Aacute;o&nbsp;<strong>Bras 360s Lux&nbsp;</strong>m&agrave;u xanh đen kiểu d&aacute;ng thể thao, với thiết kế n&acirc;ng đỡ ngực khi tập luyện &ndash; vận động thể thao, gi&uacute;p bảo vệ v&ugrave;ng ngực khỏi xung lực c&oacute; hại đến ngực. Chất liệu co giản 4 chiều của Spandex gi&uacute;p bạn thoải m&aacute;i vận động, di chuyển trong từng động t&aacute;c v&agrave; ph&ugrave; hợp với mọi bộ m&ocirc;n thể thao.</p>\r\n\r\n<p><strong>Chất liệu:&nbsp;</strong>94% Polyester &ndash; 6% Spandex</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Đen &ndash; Nude &ndash; Cam &ndash; V&agrave;ng &ndash; Xanh đen &ndash; Xanh l&aacute;</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng:&nbsp;</strong>Crop-top</p>', 14, 1, NULL, NULL, 0),
(5, 2, 'Bra 360s Crossfit màu trắng', '250000', 195000, 'assets/photos/Bra-crossfit-trang-30-300x300.jpg', '', '<p>&Aacute;o&nbsp;<strong>Bras 360s Crossfit</strong>&nbsp;m&agrave;u trắng kiểu d&aacute;ng thể thao, với thiết kế n&acirc;ng đỡ ngực khi tập luyện &ndash; vận động thể thao, gi&uacute;p bảo vệ v&ugrave;ng ngực khỏi xung lực c&oacute; hại đến ngực. Chất liệu co giản 4 chiều của Spandex gi&uacute;p bạn thoải m&aacute;i vận động, di chuyển trong từng động t&aacute;c v&agrave; ph&ugrave; hợp với mọi bộ m&ocirc;n thể thao.</p>\r\n\r\n<p><strong>Chất liệu:&nbsp;</strong>90% Polyester &ndash; 10% Spandex</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Đen &ndash; Trắng &ndash; Hồng &ndash; Mint &ndash; Xanh biển</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng:&nbsp;</strong>Crop-top</p>', 14, 1, NULL, NULL, 0),
(6, 2, 'Bra 360s Shine màu cam', '250000', 145000, 'assets/photos/Bra-shine-cam-30-300x300.jpg', '', '<p>&Aacute;o&nbsp;<strong>Bras 360s Shine</strong>&nbsp;m&agrave;u cam kiểu d&aacute;ng thể thao, với thiết kế n&acirc;ng đỡ ngực khi tập luyện &ndash; vận động thể thao, gi&uacute;p bảo vệ v&ugrave;ng ngực khỏi xung lực c&oacute; hại đến ngực. Chất liệu co giản 4 chiều của Spandex gi&uacute;p bạn thoải m&aacute;i vận động, di chuyển trong từng động t&aacute;c v&agrave; ph&ugrave; hợp với mọi bộ m&ocirc;n thể thao.</p>\r\n\r\n<p><strong>Chất liệu:&nbsp;</strong>90% Polyester &ndash; 10% Spandex</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Đen &ndash; X&aacute;m &ndash; Hồng &ndash; Neon &ndash; Cam &ndash; Xanh biển</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng:&nbsp;</strong>Bras thể thao from d&acirc;y X</p>', 14, 1, NULL, NULL, 0),
(7, 2, 'Bra 360s Zipper màu tím', '250000', 145000, 'assets/photos/Ao-bra-360s-zipper-mau-xanh-duong-1-300x300.jpg', '', '<p>&Aacute;o ngực thể thao (bras) 360s 3D Zipper t&iacute;m. Đ&acirc;y l&agrave; mẫu &aacute;o được thiết kế dựa tr&ecirc;n kiểu d&aacute;ng đẹp hiện đại v&agrave; được xem l&agrave; bộ trang phục thể thao ho&agrave;n hảo mang lại cho bạn cảm gi&aacute;c thoải m&aacute;i v&agrave; dễ chịu khi tập c&aacute;c b&agrave;i tập thể dục&nbsp;từ đơn giản đến phức tạp, mang đến cho bạn sự an to&agrave;n v&agrave; linh hoạt hơn trong ph&ograve;ng tập.</p>\r\n\r\n<p>Mẫu &aacute;o n&agrave;y thường được kết hợp với 1 chiếc &aacute;o tank top ở ngo&agrave;i v&agrave; quần th&igrave; bạn c&oacute; thể phối&nbsp;<strong>quần legging tập Yoga</strong>&nbsp;hoặc&nbsp;<strong>quần lửng</strong>,&nbsp;<strong>quần shorts</strong>&nbsp;đều ph&ugrave; hợp.</p>\r\n\r\n<p>Sản phẩm c&oacute; nhiều m&agrave;u sắc để bạn c&oacute; thể dễ d&agrave;ng chọn lựa.</p>', 14, 1, NULL, NULL, 0),
(8, 2, 'Áo thun thể thao Ceres đỏ', '280000', 175000, 'assets/photos/Ao-ceres-do-1-300x300.jpg', '', '<p>&Aacute;o thun thể thao&nbsp;<strong>Ceres đỏ&nbsp;</strong>l&agrave; một trong những mẫu &aacute;o thể thao &ldquo;Thần Thoại Hy Lạp&rdquo; của 2020 năm nay. &Aacute;o được thiết kế với phong c&aacute;ch thời trang, năng động, c&ugrave;ng với chất liệu co giản 4 chiều. Đ&acirc;y sẽ l&agrave; một trong những mẫu trang phục kh&ocirc;ng thể thiếu khi đồng h&agrave;nh c&ugrave;ng bạn đến ph&ograve;ng tập hay bất cứ m&ocirc;n thể thao n&agrave;o.</p>\r\n\r\n<p><strong>Chất liệu: 90</strong>% Polyester &ndash;&nbsp;<strong>10</strong>% Spandex</p>\r\n\r\n<p><strong>M&agrave;u sắc:</strong>&nbsp;Đen &ndash; Đỏ &ndash; Trắng</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng:&nbsp;</strong>&Aacute;o thun thể thao nam</p>', 10, 1, NULL, NULL, 0),
(9, 2, 'Áo thun thể thao Running đen', '280000', 175000, 'assets/photos/Ao-thun-the-thao-running-mau-den-1-300x300.jpg', '', '<p>&Aacute;o thun thể thao&nbsp;<strong>Running m&agrave;u đen&nbsp;</strong>l&agrave; một trong những mẫu &aacute;o thể thao Activity 2021 năm nay. &Aacute;o được thiết kế với phong c&aacute;ch thời trang, năng động, c&ugrave;ng với chất liệu co giản 4 chiều. Đ&acirc;y sẽ l&agrave; một trong những mẫu trang phục kh&ocirc;ng thể thiếu khi đồng h&agrave;nh c&ugrave;ng bạn đến ph&ograve;ng tập hay bất cứ m&ocirc;n thể thao n&agrave;o.</p>\r\n\r\n<p><strong>Chất liệu:&nbsp;</strong>88% Polyester &ndash; 12% Spandex</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Đen &ndash; Xanh r&ecirc;u &ndash; Xanh đen &ndash; Xanh dương</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng:&nbsp;</strong>&Aacute;o thun thể thao nam</p>', 20, 1, NULL, NULL, 0),
(10, 1, 'Áo AC Milan sân nhà 2021 – 2022', '250000', 190000, 'assets/photos/Ao-ac-milan-san-nha-40-300x300.jpg', '', '<p>&Aacute;o b&oacute;ng đ&aacute;&nbsp;<a href=\"https://www.sporter.vn/ao-ac-milan/\"><strong>AC Milan</strong></a>&nbsp;s&acirc;n nh&agrave;:<br />\r\n-H&agrave;ng VN:&nbsp;<strong>90.000</strong>&nbsp;VNĐ /1 bộ<br />\r\n<strong>Từ 10 bộ trở l&ecirc;n: 85.000VNĐ /1 bộ.</strong><br />\r\n-H&agrave;ng Th&aacute;i Lan F1:&nbsp;<strong>260.000</strong>VNĐ /1 &aacute;o &ndash;&nbsp;<strong>330.000</strong>VNĐ /1 bộ<br />\r\n<strong>Gi&aacute; ưu đ&atilde;i từ 10 bộ trở l&ecirc;n: 250,000VNĐ/ 1 &aacute;o &ndash; 320,000VNĐ/ 1 bộ</strong></p>', 10, 1, NULL, NULL, 0),
(11, 1, 'Áo Chelsea sân nhà 2020-2021', '250000', 190000, 'assets/photos/Ao-chelsea-san-nha-40-280x280.jpg', '', '<p>&Aacute;o b&oacute;ng đ&aacute;&nbsp;<a href=\"https://www.sporter.vn/ao-chelsea/\"><strong>Chelsea</strong></a>&nbsp;s&acirc;n nh&agrave; được giới thiệu v&agrave;o trận Chung Kết FA Cup 20/21 vừa qua.<br />\r\n-H&agrave;ng VN:&nbsp;<strong>90.000</strong>&nbsp;VNĐ /1 bộ<br />\r\n<strong>Từ 10 bộ trở l&ecirc;n: 85.000VNĐ /1 bộ.</strong><br />\r\n-H&agrave;ng Th&aacute;i Lan F1:&nbsp;<strong>260.000</strong>VNĐ /1 &aacute;o &ndash;&nbsp;<strong>330.000</strong>VNĐ /1 bộ<br />\r\n<strong>Gi&aacute; ưu đ&atilde;i từ 10 bộ trở l&ecirc;n: 250,000VNĐ/ 1 &aacute;o &ndash; 320,000VNĐ/ 1 bộ</strong></p>', 12, 1, NULL, NULL, 0),
(12, 1, 'Áo Dortmund sân nhà 2020-2021', '250000', 190000, 'assets/photos/Ao-dortmund-san-nha-40-280x280.jpg', '', '<p>&Aacute;o b&oacute;ng đ&aacute;&nbsp;<a href=\"https://www.sporter.vn/ao-dortmund/\"><strong>Dortmund</strong></a>&nbsp;s&acirc;n kh&aacute;ch mẫu ba:<br />\r\n-H&agrave;ng VN:&nbsp;<strong>90.000</strong>&nbsp;VNĐ /1 bộ<br />\r\n<strong>Từ 10 bộ trở l&ecirc;n: 85.000VNĐ /1 bộ.</strong><br />\r\n-H&agrave;ng Th&aacute;i Lan F1:&nbsp;<strong>260.000</strong>VNĐ /1 &aacute;o &ndash;&nbsp;<strong>330.000</strong>VNĐ /1 bộ<br />\r\n<strong>Gi&aacute; ưu đ&atilde;i từ 10 bộ trở l&ecirc;n: 250,000VNĐ/ 1 &aacute;o &ndash; 320,000VNĐ/ 1 bộ</strong></p>', 12, 1, NULL, NULL, 0),
(13, 1, 'Áo MU sân nhà 2020-2021', '250000', 190000, 'assets/photos/Ao-mu-san-nha-1-280x280.jpg', '', '<p>&Aacute;o b&oacute;ng đ&aacute;&nbsp;<a href=\"https://www.sporter.vn/ao-mu/\"><strong>Manchester United</strong></a>&nbsp;s&acirc;n nh&agrave; đang khuyến m&atilde;i giảm gi&aacute;:<br />\r\n-H&agrave;ng VN:&nbsp;<strong>90.000</strong>&nbsp;VNĐ /1 bộ<br />\r\n<strong>Từ 10 bộ trở l&ecirc;n: 85.000VNĐ /1 bộ.</strong><br />\r\n-H&agrave;ng Th&aacute;i Lan F1:&nbsp;<strong>260.000</strong>VNĐ /1 &aacute;o &ndash;&nbsp;<strong>330.000</strong>VNĐ /1 bộ<br />\r\n<strong>Gi&aacute; ưu đ&atilde;i từ 10 bộ trở l&ecirc;n: 250,000VNĐ/ 1 &aacute;o &ndash; 320,000VNĐ/ 1 bộ</strong></p>', 12, 1, NULL, NULL, 0),
(14, 4, 'Thảm TPE 360s Venus 2 lớp 8mm màu hồng', '650000', 380000, 'assets/photos/tham-360s-venus-2-lop-6mm-hong-5-280x280.jpg', '', '<p><strong>Thảm tập Yoga</strong>&nbsp;2 lớp 360s Venus sản xuất từ TPE d&agrave;y 8mm &ndash; cao su non với chất lượng tốt 360s Venus m&agrave;u hồng. Cam kết c&aacute;c loại thảm Sporter cung cấp an to&agrave;n cho người sử dụng v&agrave; kh&ocirc;ng chứa chất g&acirc;y ung thư.</p>\r\n\r\n<p><strong>Bảo h&agrave;nh 12 th&aacute;ng ch&iacute;nh h&atilde;ng 360s</strong></p>\r\n\r\n<p>Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại &eacute;p khu&ocirc;n bằng nhiệt, loại bỏ h&oacute;a chất độc hại, th&acirc;n thiện với m&ocirc;i trường (c&oacute; thể t&aacute;i sử dụng) v&agrave; an to&agrave;n khi tiếp x&uacute;c với da, tuyệt đối an to&agrave;n kể cả cho trẻ nhỏ v&agrave; phụ nữ mang thai.</p>\r\n\r\n<p>Thảm được thiết kế 2 lớp c&oacute; độ d&agrave;y 8mm &ndash; đ&acirc;y l&agrave; k&iacute;ch thước l&yacute; tưởng đối với nhiều h&igrave;nh thức tập Yoga.</p>\r\n\r\n<p>C&oacute; nhiều m&agrave;u sắc để c&aacute;c bạn dễ d&agrave;ng lựa chọn.</p>', 20, 1, NULL, NULL, 0),
(15, 4, 'Thảm TPE 6mm 360s Venus 2 lớp màu xanh bích', '450000', 300000, 'assets/photos/tham-360s-venus-2-lop-6mm-xanh-duong-5-280x280.jpg', '', '<p><strong>Thảm tập Yoga</strong>&nbsp;2 lớp sản xuất từ TPE m&agrave;u xanh b&iacute;ch d&agrave;y 6mm &ndash; cao su non với chất lượng cao của thương hiệu 360s Venus. Cam kết c&aacute;c loại thảm Sporter cung cấp an to&agrave;n cho người sử dụng v&agrave; kh&ocirc;ng chứa chất g&acirc;y ung thư.</p>\r\n\r\n<p><strong>Bảo h&agrave;nh 12 th&aacute;ng ch&iacute;nh h&atilde;ng 360s</strong></p>\r\n\r\n<p>Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại &eacute;p khu&ocirc;n bằng nhiệt, loại bỏ h&oacute;a chất độc hại, th&acirc;n thiện với m&ocirc;i trường (c&oacute; thể t&aacute;i sử dụng) v&agrave; an to&agrave;n khi tiếp x&uacute;c với da, tuyệt đối an to&agrave;n kể cả cho trẻ nhỏ v&agrave; phụ nữ mang thai.</p>\r\n\r\n<p>Thảm được thiết kế 2 lớp c&oacute; độ d&agrave;y 6mm &ndash; đ&acirc;y l&agrave; k&iacute;ch thước l&yacute; tưởng đối với nhiều h&igrave;nh thức tập Yoga.</p>\r\n\r\n<p>C&oacute; nhiều m&agrave;u sắc để c&aacute;c bạn dễ d&agrave;ng lựa chọn.</p>', 20, 1, NULL, NULL, 0),
(16, 4, 'Thảm TPE 6mm 360s Venus 2 lớp màu xanh lá', '450000', 300000, 'assets/photos/tham-360s-venus-2-lop-6mm-xanh-la-3-280x280.jpg', '', '<p><strong>Thảm tập Yoga</strong>&nbsp;2 lớp 360s Venus m&agrave;u xanh l&aacute; d&agrave;y 6mm sản xuất từ TPE &ndash; cao su non với chất lượng tốt. Cam kết c&aacute;c loại thảm Sporter cung cấp an to&agrave;n cho người sử dụng v&agrave; kh&ocirc;ng chứa chất g&acirc;y ung thư.</p>\r\n\r\n<p><strong>Bảo h&agrave;nh 12 th&aacute;ng ch&iacute;nh h&atilde;ng 360s</strong></p>\r\n\r\n<p>Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại &eacute;p khu&ocirc;n bằng nhiệt, loại bỏ h&oacute;a chất độc hại, th&acirc;n thiện với m&ocirc;i trường (c&oacute; thể t&aacute;i sử dụng) v&agrave; an to&agrave;n khi tiếp x&uacute;c với da, tuyệt đối an to&agrave;n kể cả cho trẻ nhỏ v&agrave; phụ nữ mang thai.</p>\r\n\r\n<p>Thảm được thiết kế 2 lớp c&oacute; độ d&agrave;y 6mm &ndash; đ&acirc;y l&agrave; k&iacute;ch thước l&yacute; tưởng đối với nhiều h&igrave;nh thức tập Yoga.</p>\r\n\r\n<p>C&oacute; nhiều m&agrave;u sắc để c&aacute;c bạn dễ d&agrave;ng lựa chọn.</p>', 20, 1, NULL, NULL, 0),
(17, 4, 'Thảm TPE 360s Venus 2 lớp 8mm màu tím', '650000', 450000, 'assets/photos/tham-hummal-cao-su-tim-2-300x300.jpg', '', '<p><strong>Thảm tập Yoga</strong>&nbsp;2 lớp 360s Venus d&agrave;y 8mm sản xuất từ TPE &ndash; cao su non với chất lượng tốt. Cam kết c&aacute;c loại thảm Sporter cung cấp an to&agrave;n cho người sử dụng v&agrave; kh&ocirc;ng chứa chất g&acirc;y ung thư.</p>\r\n\r\n<p><strong>Bảo h&agrave;nh 12 th&aacute;ng.</strong></p>\r\n\r\n<p>Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại &eacute;p khu&ocirc;n bằng nhiệt, loại bỏ h&oacute;a chất độc hại, th&acirc;n thiện với m&ocirc;i trường (c&oacute; thể t&aacute;i sử dụng) v&agrave; an to&agrave;n khi tiếp x&uacute;c với da, tuyệt đối an to&agrave;n kể cả cho trẻ nhỏ v&agrave; phụ nữ mang thai.</p>\r\n\r\n<p>Thảm được thiết kế 2 lớp c&oacute; độ d&agrave;y 8mm &ndash; đ&acirc;y l&agrave; k&iacute;ch thước l&yacute; tưởng đối với nhiều h&igrave;nh thức tập Yoga.</p>\r\n\r\n<p>C&oacute; nhiều m&agrave;u sắc để c&aacute;c bạn dễ d&agrave;ng lựa chọn.</p>', 20, 1, NULL, NULL, 0),
(22, 6, 'Quần Legging lửng Power hồng', '250000', 200000, 'assets/photos/Quan-legging-lung-power-hong-1-300x300.jpg', '', '<p>Quần legging lửng<strong>&nbsp;Power hồng phối lưới</strong>&nbsp;hỗ trợ tập Yoga, GYM &amp; Thể dục thẩm mỹ d&agrave;nh cho nữ. Được sản xuất từ chất liệu cotton kết hợp với sợi gi&atilde;n spandex v&agrave; thiết kế kiểu d&aacute;ng đẹp, mang lại cho bạn cảm gi&aacute;c m&aacute;t mẻ v&agrave; dễ chịu khi thực hiện c&aacute;c b&agrave;i tập thể dục.<br />\r\nBạn c&oacute; thể kết hợp quần legging n&agrave;y với&nbsp;<strong>&aacute;o bra</strong>&nbsp;thể thao v&agrave; một chiếc &aacute;o tanktop ở b&ecirc;n ngo&agrave;i rất ph&ugrave; hợp.</p>', 10, 1, NULL, NULL, 0),
(23, 6, 'Quần Legging lửng Power xám', '250000', 200000, 'assets/photos/Quan-legging-lung-power-xam-1-300x300.jpg', '', '<p>Quần legging lửng<strong>&nbsp;Power x&aacute;m phối lưới</strong>&nbsp;hỗ trợ tập Yoga, GYM &amp; Thể dục thẩm mỹ d&agrave;nh cho nữ. Được sản xuất từ chất liệu cotton kết hợp với sợi gi&atilde;n spandex v&agrave; thiết kế kiểu d&aacute;ng đẹp, mang lại cho bạn cảm gi&aacute;c m&aacute;t mẻ v&agrave; dễ chịu khi thực hiện c&aacute;c b&agrave;i tập thể dục.<br />\r\nBạn c&oacute; thể kết hợp quần legging n&agrave;y với&nbsp;<strong>&aacute;o bra</strong>&nbsp;thể thao v&agrave; một chiếc &aacute;o tanktop ở b&ecirc;n ngo&agrave;i rất ph&ugrave; hợp.</p>', 10, 1, NULL, NULL, 0),
(24, 6, 'Quần legging lửng Shaping xám', '350000', 220000, 'assets/photos/Quan-legging-lung-shaping-xam-2-300x300.jpg', '', '<p>Quần legging lửng<strong>&nbsp;Shaping x&aacute;m phối sọc</strong>&nbsp;hỗ trợ tập Yoga, GYM &amp; Thể dục thẩm mỹ d&agrave;nh cho nữ. Được sản xuất từ chất liệu cotton kết hợp với sợi gi&atilde;n spandex v&agrave; thiết kế kiểu d&aacute;ng đẹp, mang lại cho bạn cảm gi&aacute;c m&aacute;t mẻ v&agrave; dễ chịu khi thực hiện c&aacute;c b&agrave;i tập thể dục.<br />\r\nBạn c&oacute; thể kết hợp quần legging n&agrave;y với&nbsp;<strong>&aacute;o bra</strong>&nbsp;thể thao v&agrave; một chiếc &aacute;o tanktop ở b&ecirc;n ngo&agrave;i rất ph&ugrave; hợp.</p>', 10, 1, NULL, NULL, 0),
(25, 6, 'Quần legging 360s Rise màu đen', '280000', 180000, 'assets/photos/quan-legging-det-den-1-300x300.jpg', '', '<p>Quần&nbsp;<strong>legging 360s Rise</strong>&nbsp;m&agrave;u đen với thiết kế trơn đơn giản, dễ d&agrave;ng phối với &aacute;o Bras hay Tanktop khi bạn tham gia tập luyện thể thao. Mẫu quần legging được h&atilde;ng thể thao 360s chọn với phong c&aacute;ch đơn giản v&agrave; chất liệu co giản 4 chiều &ndash; ph&ugrave; hợp khi mặc dạo phố hay đến ph&ograve;ng tập GYM v&agrave; Yoga.</p>\r\n\r\n<p><strong>Chất liệu:&nbsp;</strong>90% Polyester &ndash; 10% Spandex</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Đen</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng:&nbsp;</strong>Legging cạp cao</p>', 10, 1, NULL, NULL, 0),
(26, 5, 'Bra 360s Agless màu tím', '180000', 150000, 'assets/photos/Ao-bras-agless-mau-tim-1-300x300.jpg', '', '<p>&Aacute;o Bras 360s Agless m&agrave;u t&iacute;m kiểu d&aacute;ng thể thao, với thiết kế n&acirc;ng đỡ ngực khi tập luyện &ndash; vận động thể thao, gi&uacute;p bảo vệ v&ugrave;ng ngực khỏi xung lực c&oacute; hại đến ngực. Chất liệu co giản 4 chiều của Spandex gi&uacute;p bạn thoải m&aacute;i vận động, di chuyển trong từng động t&aacute;c v&agrave; ph&ugrave; hợp với mọi bộ m&ocirc;n thể thao.</p>\r\n\r\n<p><strong>Chất liệu:&nbsp;</strong>90% Polyester &ndash; 10% Spandex</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Hồng &ndash; Đen &ndash; Trắng &ndash; Xanh biển &ndash; T&iacute;m &ndash; Hồng phấn</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng:&nbsp;</strong>&Aacute;o bras thể thao &ndash; n&acirc;ng đỡ ngực</p>', 10, 1, NULL, NULL, 0),
(27, 5, 'Bra 360s Dry Soft tím', '280000', 150000, 'assets/photos/Ao-bras-drysoft-mau-tim-2-300x300.jpg', '', '<p>&Aacute;o bra 360s Dry Soft t&iacute;m. Đ&acirc;y l&agrave; mẫu &aacute;o được thiết kế dựa tr&ecirc;n kiểu d&aacute;ng đẹp hiện đại v&agrave; được xem l&agrave; bộ quần &aacute;o thể thao ho&agrave;n hảo mang lại cho bạn cảm gi&aacute;c thoải m&aacute;i v&agrave; dễ chịu khi tập c&aacute;c b&agrave;i tập thể dục&nbsp;từ đơn giản đến phức tạp, mang đến cho bạn sự an to&agrave;n v&agrave; linh hoạt hơn trong ph&ograve;ng tập.</p>\r\n\r\n<p>Mẫu &aacute;o n&agrave;y thường được kết hợp với 1 chiếc &aacute;o tank top ở ngo&agrave;i v&agrave; quần th&igrave; bạn c&oacute; thể phối&nbsp;<strong>quần legging tập Yoga</strong>&nbsp;hoặc&nbsp;<strong>quần lửng</strong>,&nbsp;<strong>quần shorts</strong>&nbsp;thể thao đều ph&ugrave; hợp.</p>\r\n\r\n<p>Sản phẩm c&oacute; nhiều m&agrave;u sắc để bạn c&oacute; thể dễ d&agrave;ng chọn lựa.</p>', 10, 1, NULL, NULL, 0),
(28, 5, 'Bra 360s Galaxy màu đen', '180000', 150000, 'assets/photos/Bra-bufterfly-mau-den-2-300x300.jpg', '', '<p>&Aacute;o&nbsp;<strong>Bras 360s Galaxy&nbsp;</strong>m&agrave;u đen kiểu d&aacute;ng thể thao, với thiết kế n&acirc;ng đỡ ngực khi tập luyện &ndash; vận động thể thao, gi&uacute;p bảo vệ v&ugrave;ng ngực khỏi xung lực c&oacute; hại đến ngực. Chất liệu co giản 4 chiều của Spandex gi&uacute;p bạn thoải m&aacute;i vận động, di chuyển trong từng động t&aacute;c v&agrave; ph&ugrave; hợp với mọi bộ m&ocirc;n thể thao.</p>\r\n\r\n<p><strong>Chất liệu:&nbsp;</strong>90% Polyester &ndash; 10% Spandex</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Đen &ndash; X&aacute;m &ndash; Hồng</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng:&nbsp;</strong>&Aacute;o bras thể thao &ndash; n&acirc;ng đỡ ngực</p>', 10, 1, NULL, NULL, 0),
(29, 5, 'Bra 360s Strappy màu tím', '180000', 150000, 'assets/photos/Bra-strappy-mau-tim-1-300x300.jpg', '', '<p>&Aacute;o&nbsp;<strong>Bras 360s Strappy</strong>&nbsp;m&agrave;u t&iacute;m kiểu d&aacute;ng thể thao, với thiết kế n&acirc;ng đỡ ngực khi tập luyện &ndash; vận động thể thao, gi&uacute;p bảo vệ v&ugrave;ng ngực khỏi xung lực c&oacute; hại đến ngực. Chất liệu co giản 4 chiều của Spandex gi&uacute;p bạn thoải m&aacute;i vận động, di chuyển trong từng động t&aacute;c v&agrave; ph&ugrave; hợp với mọi bộ m&ocirc;n thể thao.</p>\r\n\r\n<p><strong>Chất liệu:&nbsp;</strong>88% Polyester &ndash; 12% Spandex</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Đen &ndash; Trắng &ndash; T&iacute;m &ndash; Hồng &ndash; Xanh Dương</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng:&nbsp;</strong>&Aacute;o bras thể thao &ndash; n&acirc;ng đỡ ngực</p>', 10, 1, NULL, NULL, 0),
(30, 7, 'DÀN TẠ ĐA NĂNG KIM THÀNH KT19', '10000000', 8500000, 'assets/photos/BK-899Pro overall-500x500.jpg', '', '<p>- Ghế tập tạ&nbsp;được thiết kế chắc chắn, bền, tiết kiệm diện t&iacute;ch, c&oacute; thể th&aacute;o rời từng bộ phận cất gọn sau khi tập.</p>\r\n\r\n<p>- Ghế được sơn tĩnh điện n&ecirc;n bảo đảm về độ bền đẹp v&agrave; thẩm mỹ.</p>\r\n\r\n<p>-&nbsp;Ghế tập tạ đa năng&nbsp;Kim Th&agrave;nh KT20&nbsp;chuy&ecirc;n d&ugrave;ng cho c&aacute;c b&agrave;i tập thể lực như: Tập tạ ngang tạo r&atilde;nh ngực, tập ngực tr&ecirc;n, tập cơ vai, đ&aacute; ch&acirc;n, cơ đ&ugrave;i v&agrave; k&eacute;o x&ocirc;, cho bạn một cơ thể săn chắc, khoẻ mạnh.</p>', 10, 1, NULL, NULL, 0),
(31, 7, 'MÁY CHẠY BỘ ĐIỆN CAO CẤP MOFIT PRO910', '12000000', 9500000, 'assets/photos/kungfu-da-nang-500x500.png', '', '<p>M&aacute;y chạy bộ điện cao cấp MOFIT PRO910&nbsp; bản n&acirc;ng cấp từ m&aacute;y chạy bộ điện cao cấp MOFIT MHT 1430&nbsp; với nhiều cải tiến mới v&agrave; những đột ph&aacute; về c&ocirc;ng nghệ gi&uacute;p bạn c&oacute; những trải nghiệm tuyệt vời khi tập luyện tại nh&agrave;.</p>\r\n\r\n<p>M&aacute;y chạy bộ cao cấp MOFIT PRO910&nbsp;được thiết kế rất đặc biệt với những cải tiến mới, gi&uacute;p bạn c&oacute; những trải nghiệm th&uacute; vị với m&ocirc;n thể thao chạy bộ. Bạn c&oacute; thể luyện tập ngay tại nh&agrave; của m&igrave;nh sau những giờ học tập v&agrave; l&agrave;m việc căng thẳng.</p>', 10, 1, NULL, NULL, 0),
(32, 7, 'GHẾ MASSAGE ELIP PLUTONI ĐA NĂNG HỒNG NGOẠI', '32000000', 28000000, 'assets/photos/G46 new-anh avata moi-900x900r-500x500.jpg', '', '<h3><strong>C&ocirc;ng nghệ con lăn massage 5D mạnh mẽ, to&agrave;n diện</strong></h3>\r\n\r\n<p>Ứng dụng&nbsp;hệ thống c&ocirc;ng nghệ con lăn massage 5D uyển chuyển, mạnh mẽ theo trục LLD si&ecirc;u d&agrave;i &ocirc;m s&aacute;t theo đường cong của cột sống gi&uacute;p con lăn massage khắp cơ thể, đồng thời nhấn huyệt kỹ c&agrave;ng tại c&aacute;c điểm đau, mang lại hiệu quả k&eacute;p tạo cảm gi&aacute;c ch&acirc;n thực như thao t&aacute;c của một chuy&ecirc;n vi&ecirc;n trị liệu h&agrave;ng đầu.</p>\r\n\r\n<h3><strong>Hệ thống t&uacute;i kh&iacute; diện rộng</strong></h3>\r\n\r\n<p>Ghế massage&nbsp;ELIP Plutoni được trang bị t&uacute;i kh&iacute; rộng khắp ở v&ugrave;ng vai, tay, bắp ch&acirc;n, b&agrave;n ch&acirc;n,&hellip; lu&acirc;n phi&ecirc;n bơm căng để b&oacute;p c&aacute;c cơ gi&uacute;p lưu th&ocirc;ng m&aacute;u từ đ&oacute; l&agrave;m giảm đau nhức cơ khớp v&agrave; t&ecirc; mỏi ch&acirc;n tay, đặc biệt ph&ugrave; hợp cho người cao tuổi.</p>\r\n\r\n<h3><strong>Chăm s&oacute;c, n&acirc;ng niu b&agrave;n ch&acirc;n, bảo vệ sức khỏe to&agrave;n diện</strong></h3>\r\n\r\n<p>Ghế massage ELIP Plutoni t&iacute;ch hợp c&aacute;c b&agrave;i massage chăm s&oacute;c ch&acirc;n chuy&ecirc;n s&acirc;u từ ng&oacute;n ch&acirc;n cho đến g&oacute;t ch&acirc;n, phối hợp nhịp nh&agrave;ng giữa t&uacute;i kh&iacute; v&agrave; con lăn, k&iacute;ch th&iacute;ch tuần ho&agrave;n m&aacute;u v&agrave; gia tăng lượng m&aacute;u lưu th&ocirc;ng đến tim v&agrave; n&atilde;o, cải thiện hoạt động thể chất lẫn tinh thần.</p>\r\n\r\n<h3><strong>Body Scan d&ograve; t&igrave;m huyệt đạo chuẩn x&aacute;c, tăng hiệu quả b&agrave;i massage</strong></h3>\r\n\r\n<p>Chức năng Body Scan th&ocirc;ng minh của ELIP Plutoni sẽ tự động đo chiều d&agrave;i từ v&ugrave;ng sau g&aacute;y đến m&ocirc;ng để x&aacute;c định c&aacute;c huyệt đạo. Từ đ&oacute; c&aacute;c b&agrave;i massage sẽ k&iacute;ch th&iacute;ch v&agrave;o đ&uacute;ng c&aacute;c vị tr&iacute; đau nhức tr&ecirc;n cơ thể, ph&aacute;t huy tối đa hiệu quả những giờ ph&uacute;t thư gi&atilde;n.</p>\r\n\r\n<h3><strong>Massage kh&ocirc;ng trọng lực, rũ bỏ mọi &aacute;p lực</strong></h3>\r\n\r\n<p>Chức năng kh&ocirc;ng trọng lực với hai g&oacute;c nằm chuy&ecirc;n biệt tr&ecirc;n ghế massage ELIP Plutoni đem đến cho người d&ugrave;ng tư thế thư gi&atilde;n tuyệt vời gi&uacute;p giảm đ&aacute;ng kể trọng lực t&aacute;c động l&ecirc;n cột sống v&agrave; cơ thể. B&ecirc;n cạnh đ&oacute; giảm &aacute;p lực l&ecirc;n c&aacute;c cơ quan ph&iacute;a b&ecirc;n trong, tăng cường khả năng lưu th&ocirc;ng m&aacute;u v&agrave; đả th&ocirc;ng kinh lạc.</p>\r\n\r\n<h3><strong>Nhiệt hồng ngoại đa điểm, thư gi&atilde;n to&agrave;n th&acirc;n</strong></h3>\r\n\r\n<p>Chức năng nhiệt hồng ngoại được thiết kế tại v&ugrave;ng lưng v&agrave; bắp ch&acirc;n gi&uacute;p c&aacute;c b&oacute; cơ được thư gi&atilde;n tối đa. Nhiệt độ 30 - 40 độ C tr&ecirc;n ghế massage ELIP Plutoni l&agrave; nhiệt độ l&yacute; tưởng để cơ thể thư gi&atilde;n, th&uacute;c đẩy qu&aacute; tr&igrave;nh thải độc v&agrave; k&iacute;ch th&iacute;ch tuần ho&agrave;n m&aacute;u, gi&uacute;p cơ thể khỏe khoắn từ s&acirc;u b&ecirc;n trong.</p>\r\n\r\n<h3><strong>Kết nối thế giới số đơn giản, trải nghiệm massage trị liệu bằng &acirc;m nhạc</strong></h3>\r\n\r\n<p>Ghế massge ELIP Plutoni tạo ra một kh&ocirc;ng gian &acirc;m nhạc sống động theo c&aacute; t&iacute;nh của chủ nh&acirc;n với kết nối &ldquo;không dây&rdquo; bằng c&ocirc;ng nghệ Bluetooth. Sự kết hợp độc đ&aacute;o giữa chế độ massage v&agrave; &acirc;m nhạc Hifi đẳng cấp ch&iacute;nh l&agrave; sự kết hợp tuyệt vời cho tinh thần v&agrave; sức khỏe của bạn được thăng hoa.</p>\r\n\r\n<p>&nbsp;</p>', 10, 1, NULL, NULL, 0),
(33, 7, 'Máy Đo Huyết Áp Bắp Tay Omron - HEM-8712 - 100610698', '850000', 650000, 'assets/photos/1_12-500x500.jpg', '', '<h4>M&ocirc; Tả Sản Phẩm</h4>\r\n\r\n<p>C&ocirc;ng nghệ Intellisense mới Lưu kết quả đo mới nhất Kiểu d&aacute;ng nhỏ gọn, sử dụng đơn giản Bơm v&agrave; xả kh&iacute; v&ograve;ng b&iacute;t bằng tay dễ d&agrave;ng, gi&uacute;p bạn thao t&aacute;c nhanh v&agrave; tiện lợi</p>\r\n\r\n<p><strong>M&aacute;y Đo Huyết &Aacute;p Bắp Tay Omron - HEM-8712 - 100610698</strong></p>\r\n\r\n<p><strong>M&aacute;y Đo Huyết &Aacute;p Bắp Tay Omron - HEM-8712 - 100610698</strong>&nbsp;ứng dụng&nbsp;c&ocirc;ng nghệ Intellisense mới cho kết quả đo ch&iacute;nh x&aacute;c cao, lưu kết quả đo mới nhất, b&aacute;o cử động người v&agrave; nhịp tim bất thường. M&aacute;y ho&agrave;n to&agrave;n tự động gi&uacute;p&nbsp;đo huyết &aacute;p đơn giản, nhanh ch&oacute;ng. M&aacute;y l&agrave; sản phẩm cần thiết với mọi gia đ&igrave;nh.</p>\r\n\r\n<p><strong>C&ocirc;ng nghệ Intellisense mới</strong></p>\r\n\r\n<p>M&aacute;y Đo Huyết &Aacute;p Bắp Tay Omron - HEM-8712 - 100610698&nbsp;ứng dụng c&ocirc;ng nghệ Intellisense mới cho&nbsp;kết quả ch&iacute;nh x&aacute;c cao, c&oacute; đ&egrave;n chỉ dẫn c&aacute;ch quấn v&ograve;ng b&iacute;t đ&uacute;ng, b&aacute;o lỗi cử động người khi đo.</p>\r\n\r\n<p><strong>Lưu kết quả đo mới nhất</strong></p>\r\n\r\n<p>Bộ nhớ cho ph&eacute;p lưu kết quả đo mới nhất gi&uacute;p bạn c&oacute; thể so s&aacute;nh với những lần đo sau để nắm r&otilde; được t&igrave;nh h&igrave;nh huyết &aacute;p của m&igrave;nh v&agrave; c&oacute; những điều chỉnh kịp thời trong chế độ ăn uống, thể thao v&agrave; nghỉ ngơi.</p>\r\n\r\n<p><strong>Kiểu d&aacute;ng nhỏ gọn, sử dụng đơn giản</strong></p>\r\n\r\n<p>M&aacute;y Đo Huyết &Aacute;p Bắp Tay Omron - HEM-8712 - 100610698 c&oacute;&nbsp;thiết kế nhỏ gọn tiện lợi để bạn c&oacute; thể mang theo mọi nơi. Hơn nữa c&aacute;ch sử dụng đơn giản v&agrave; cấu h&igrave;nh th&acirc;n thiện với tất cả mọi người sẽ gi&uacute;p bạn sử dụng m&aacute;y một c&aacute;ch dễ d&agrave;ng.</p>\r\n\r\n<p><strong>Dễ sử dụng</strong></p>\r\n\r\n<p>Bơm v&agrave; xả kh&iacute; v&ograve;ng b&iacute;t bằng tay dễ d&agrave;ng, gi&uacute;p bạn thao t&aacute;c nhanh v&agrave; tiện lợi.</p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>\r\n\r\n<p>Giới hạn đo:</p>\r\n\r\n<p>- Huyết &aacute;p: 0 tới 299 mm Hg</p>\r\n\r\n<p>- Nhịp tim: 40 tới 180 nhịp/ph&uacute;t.</p>\r\n\r\n<p>Độ ch&iacute;nh x&aacute;c:</p>\r\n\r\n<p>- Huyết &aacute;p: &plusmn;3 mm Hg.</p>\r\n\r\n<p>- Nhịp tim: &plusmn;5%.</p>\r\n\r\n<p>Tự động bơm v&agrave; xả kh&iacute;.</p>\r\n\r\n<p>Pin: 4 pin AA hoặc bộ đổi điện Omron</p>\r\n\r\n<p>Phụ kiện k&egrave;m theo:</p>\r\n\r\n<p>- V&ograve;ng b&iacute;t cỡ trung b&igrave;nh.</p>\r\n\r\n<p>- Hướng dẫn sử dụng.</p>\r\n\r\n<p>- Bộ pin.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 10, 1, NULL, NULL, 0),
(34, 8, 'Whey goldstandard 4.5', '2500000', 100000, 'assets/photos/upl_whey_gold_standard_10lbs_4_5kg_1618384676_image_1618384676.jpg', '', '<p>sản phẩm bổ sung protein nhanh tiện</p>', 10, 1, NULL, NULL, 0),
(35, 8, 'Omega 3 newblance', '1000000', 100000, 'assets/photos/129_image_catalog_now_omega-3_200_vien_image_catalog_1587722784.jpg', '', '<p>sản phẩm bổ sung protein nhanh tiện</p>', 10, 1, NULL, NULL, 0),
(36, 8, 'NitroTech Whey Mutant 4.5 kg', '2800000', 100000, 'assets/photos/upl_mutant_iso_surge_5lbs_2_27kg_1620788574_image_1620788574.jpg', '', '<p>sản phẩm bổ sung protein nhanh tiện</p>', 10, 1, NULL, NULL, 0),
(37, 8, 'Combo 5 bánh bổ sung protein', '200000', 100000, 'assets/photos/upl_biotech_zero_bar_1593678290_image_1593678290.png', '', '<p>sản phẩm bổ sung protein nhanh tiện</p>', 100, 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Nhân viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(70) NOT NULL,
  `content` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title`, `content`, `active`) VALUES
(5, 'assets/photos/249487017_2711082255862701_4798789910963190634_n.png', '', '', 1),
(6, 'assets/photos/249447922_217816347104607_3565008284785668205_n.jpg', '', '', 1),
(7, 'assets/photos/249774339_588685762379255_2603814280796767060_n.jpg', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `created_at`) VALUES
(1, '19288408c788054155ab1ac10fba5c71', '2021-10-28 08:16:31'),
(1, '1d552c60d420aca09b97ced942bfa207', '2021-10-31 07:18:09'),
(1, '20a2031fc6dea52852b51c8e2d276071', '2021-11-01 05:55:18'),
(1, '2c2f8d5e5af7ad2918a82f3e5eac9f8d', '2021-10-30 12:45:11'),
(1, '321041b0d1dda05369393d53d906edf3', '2021-10-29 06:30:00'),
(1, '4a49d22fb0ef171b33ba287f9fb831a1', '2021-10-29 08:56:01'),
(1, '5cfdf014aa983bc6a3247ff189ca57ce', '2021-11-01 05:48:32'),
(1, '637916d54f596007609ea7a5f44949c4', '2021-10-28 14:05:47'),
(1, '6706726d68bce3855dfa21b2e5084a4a', '2021-10-28 09:36:05'),
(1, '69824cff9e02af15308328f9ccbfa1eb', '2021-10-28 09:36:12'),
(1, '6da120980accbdd4574c1f6b6989237a', '2021-10-29 07:14:28'),
(1, 'a399c3cd78ecd71ab9c67ca329544a05', '2021-11-01 06:33:24'),
(1, 'a9e284d5bffd656afceb2f0c7072976c', '2021-10-30 14:24:12'),
(1, 'b711b8299b4721b2917b2b9d3c6635fd', '2021-10-28 09:30:38'),
(1, 'c2d7301408f0c58faa6453529e68cd87', '2021-10-28 09:16:54'),
(1, 'cb7d23d0441f849337efed0c22c17830', '2021-10-30 03:18:05'),
(1, 'ee4738999d0e3ea199fb871bc96340c1', '2021-10-28 14:08:47'),
(1, 'fb78230c3c129a0c5e22099339a4abd5', '2021-10-29 09:05:21'),
(12, '181078a30af3f528869514b78f40bb2b', '2021-10-30 14:24:41'),
(13, 'af08e39cb4fb5f11417b6bc89eef6114', '2021-10-30 14:25:14'),
(15, '463d15ae36b5deda07d258a98582611b', '2021-11-10 15:17:36'),
(15, '48e7e95f60f703f0e91e30c001b42f42', '2021-11-05 01:19:47'),
(16, '5d3c283c7c7fa562ed0b2407f2260e88', '2021-11-05 17:09:42'),
(17, 'f16fd3ddd04bf996c9136bfd25d5b009', '2021-11-08 06:45:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `created_at`, `updated_at`, `deleted`, `avatar`) VALUES
(1, 'Thuận Nguyễn', 'thuan@gmail.com', '0123456789', '', '', 1, '2021-10-28 06:51:13', '2021-11-08 05:56:35', 0, 'assets/photos/270187.jpg'),
(2, 'anhdepzai', 'thuan123@gmail.com', NULL, NULL, 'e6a109a81bb3c1c4a7f63fbfe4f1c48f', 2, '2021-10-28 06:52:43', '2021-11-04 03:51:45', 1, NULL),
(3, 'baby123', 'thuanbin1102@gmail.com', NULL, NULL, 'e6a109a81bb3c1c4a7f63fbfe4f1c48f', 2, '2021-10-29 06:26:47', '2021-10-30 14:02:49', 1, NULL),
(4, 'thuans', 'minhngoc1102@gmail.com', NULL, NULL, 'e6a109a81bb3c1c4a7f63fbfe4f1c48f', 2, '2021-10-29 06:28:22', '2021-10-30 14:02:52', 1, NULL),
(5, 'thuans', 'minhngoc1102@gmail.com21', NULL, NULL, 'e6a109a81bb3c1c4a7f63fbfe4f1c48f', 2, '2021-10-29 06:29:24', '2021-10-30 14:01:42', 1, NULL),
(6, 'thuans', 'thuan123123@gmail.com', 'asdasdasdsadad', '3', '0e6f6f594b8c3fb93335c4522b761b29', 1, '2021-10-30 07:59:37', '2021-10-30 07:59:37', 0, NULL),
(7, 'thuans', 'thuan1231233223323@gmail.com', 'asdasdasdsadad', '3', '0e6f6f594b8c3fb93335c4522b761b29', 1, '2021-10-30 08:01:38', '2021-10-30 08:01:38', 0, NULL),
(8, 'thuans', 'thuan12312332233235ggbgbgbgbgb@gmail.com', 'asdasdasdsadad', '3', '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-10-30 08:02:47', '2021-11-04 03:51:44', 1, NULL),
(9, 'thuans', 'basdasdy@gmail.com', 'asdasdasdsadad', '3', '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-10-30 08:03:37', '2021-11-04 03:51:43', 1, NULL),
(10, 'sđs', 'xzczxc@gmail.com', 'asdasdasdsadad', 'dsa', '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-10-30 08:49:09', '2021-11-04 03:51:42', 1, NULL),
(11, 'asashin', 'ken@gmail.com', NULL, NULL, 'e6a109a81bb3c1c4a7f63fbfe4f1c48f', 2, '2021-10-30 14:18:21', '2021-11-04 03:51:41', 1, NULL),
(12, 'nam', 'zxc@gmail.com', NULL, NULL, '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-10-30 14:19:40', '2021-11-04 03:51:40', 1, NULL),
(13, 'neymả', 'tanh@gmail.com', NULL, NULL, '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-10-30 14:25:07', '2021-11-04 03:51:39', 1, NULL),
(14, 'Thuận Nguyễn', 'thuanbin1108@gmail.com', '06545446', 'Hà Nội', '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-11-04 03:53:50', '2021-11-04 03:54:06', 0, NULL),
(15, 'Tam', 'doantam01@gmail', '', '', '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-11-05 01:19:38', '2021-11-10 15:18:44', 0, 'assets/photos/251999233_1239656816530067_7244606991173517546_n.jpg'),
(16, 'Vũ Viết Chiến', 'vuvietchien07042001@gmail.com', NULL, NULL, '8fa466b953e9025766a08181391b2120', 2, '2021-11-05 17:09:33', '2021-11-05 17:09:33', 0, NULL),
(17, 'ken', 'ken123@gmail.com', NULL, NULL, '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-11-08 06:45:35', '2021-11-08 06:45:35', 0, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_user` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderdetail_order` (`order_id`),
  ADD KEY `fk_orderdetail_product` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category` (`category_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`,`token`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_role` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_orderdetail_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_orderdetail_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
