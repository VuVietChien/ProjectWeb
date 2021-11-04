-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 04, 2021 at 08:23 AM
-- Server version: 5.7.33
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
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
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_name`, `product_id`, `product_price`, `product_image`, `product_quantity`) VALUES
(1, 'Áo polo xanh', 1, '560000', 'product12.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'ĐỒ BÓNG ĐÁ'),
(2, 'TẬP GYM'),
(3, 'ĐỒ TẬP YOGA'),
(4, 'THẢM TẬP YOGA'),
(5, 'ÁO BRA'),
(6, 'QUẦN LEGGING');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
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
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`) VALUES
(1, 14, 'Nguyễn Kenshin', 'thuanbin1108@gmail.', '0132132231', 'Hà Nội', 'ABC', '2021-11-24 10:54:49', 2, 3),
(2, 4, 'neymar JR', 'xczc@gmail.com', '6545546', 'VP', 'BVV', '2021-11-22 10:54:49', 0, 6001);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
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
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `num`, `total_money`) VALUES
(1, 1, 1, 1, 2, 2),
(2, 2, 1, 1, 1, 1),
(3, 2, 5, 2000, 3, 6000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` int(255) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `description` text,
  `quantity` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0' COMMENT 'Xoá mềm ( mặc định là 0)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `discount`, `image`, `brand`, `description`, `quantity`, `active`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 2, 'Áo polo xanh', '560000', 2000, 'assets/photos/317485.png', '', 'ad', 1, 0, '2021-11-12 17:12:16', '2021-11-01 10:37:13', 1),
(2, 1, 'Áo adidas trắng123', '600000', 1000, 'assets/photos/414496.jpg', '', 'Đường chạy của bạn. Thời gian của bạn. Hãy tận dụng cả hai với chiếc áo thun chạy bộ adidas này. Áo có kiểu dáng hỗ trợ vận động với đường may lộn ngoài và vạt bầu. Chất vải AEROREADY thoát ẩm cho cảm giác mềm mại trên da. Áo còn thân thiện với hành tinh xanh, mang đến cho bạn cảm giác dễ chịu về nhiều mặt. Sản phẩm này may bằng vải công nghệ Primegreen, thuộc dòng chất liệu tái chế hiệu năng cao.', 1, 1, NULL, NULL, 0),
(3, 1, 'Quần trẻ trung', '10000', 5000, 'assets/photos/84631.jpg', '', 'adsad', 1, 0, NULL, NULL, 0),
(4, 2, 'Quảng Nam', '10000', 7000, 'assets/photos/106942.jpg', '', '123123123123', 14, 1, NULL, NULL, 0),
(5, 2, 'Nước hoa Nam', '10000', 4000, 'assets/photos/128706.png', '', 'sd', 14, 1, NULL, NULL, 0),
(6, 2, 'Nước hoa Nam', '10000', 2, 'assets/photos/718631.png', '', '<p>ads</p>', 14, 0, NULL, NULL, 0),
(7, 2, 'ken', '10000', 2, 'assets/photos/676679.jpg', '', '<p>adsdffdfffffffdsa</p>', 14, 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Nhân viên');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(70) NOT NULL,
  `content` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title`, `content`, `active`) VALUES
(1, 'anhslide1.jpg\r\n', 'ADIDAS X 007', 'Tôn vinh biểu tượng của nền điện ảnh hiện đại với bộ sưu tập mới. Adidas x 007 đã xuất hiện', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tokens`
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
(13, 'af08e39cb4fb5f11417b6bc89eef6114', '2021-10-30 14:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'asdasd', 'thuan@gmail.com', '', '', 'e6a109a81bb3c1c4a7f63fbfe4f1c48f', 1, '2021-10-28 06:51:13', '2021-11-04 03:53:00', 0),
(2, 'anhdepzai', 'thuan123@gmail.com', NULL, NULL, 'e6a109a81bb3c1c4a7f63fbfe4f1c48f', 2, '2021-10-28 06:52:43', '2021-11-04 03:51:45', 1),
(3, 'baby123', 'thuanbin1102@gmail.com', NULL, NULL, 'e6a109a81bb3c1c4a7f63fbfe4f1c48f', 2, '2021-10-29 06:26:47', '2021-10-30 14:02:49', 1),
(4, 'thuans', 'minhngoc1102@gmail.com', NULL, NULL, 'e6a109a81bb3c1c4a7f63fbfe4f1c48f', 2, '2021-10-29 06:28:22', '2021-10-30 14:02:52', 1),
(5, 'thuans', 'minhngoc1102@gmail.com21', NULL, NULL, 'e6a109a81bb3c1c4a7f63fbfe4f1c48f', 2, '2021-10-29 06:29:24', '2021-10-30 14:01:42', 1),
(6, 'thuans', 'thuan123123@gmail.com', 'asdasdasdsadad', '3', '0e6f6f594b8c3fb93335c4522b761b29', 1, '2021-10-30 07:59:37', '2021-10-30 07:59:37', 0),
(7, 'thuans', 'thuan1231233223323@gmail.com', 'asdasdasdsadad', '3', '0e6f6f594b8c3fb93335c4522b761b29', 1, '2021-10-30 08:01:38', '2021-10-30 08:01:38', 0),
(8, 'thuans', 'thuan12312332233235ggbgbgbgbgb@gmail.com', 'asdasdasdsadad', '3', '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-10-30 08:02:47', '2021-11-04 03:51:44', 1),
(9, 'thuans', 'basdasdy@gmail.com', 'asdasdasdsadad', '3', '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-10-30 08:03:37', '2021-11-04 03:51:43', 1),
(10, 'sđs', 'xzczxc@gmail.com', 'asdasdasdsadad', 'dsa', '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-10-30 08:49:09', '2021-11-04 03:51:42', 1),
(11, 'asashin', 'ken@gmail.com', NULL, NULL, 'e6a109a81bb3c1c4a7f63fbfe4f1c48f', 2, '2021-10-30 14:18:21', '2021-11-04 03:51:41', 1),
(12, 'nam', 'zxc@gmail.com', NULL, NULL, '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-10-30 14:19:40', '2021-11-04 03:51:40', 1),
(13, 'neymả', 'tanh@gmail.com', NULL, NULL, '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-10-30 14:25:07', '2021-11-04 03:51:39', 1),
(14, 'Thuận Nguyễn', 'thuanbin1108@gmail.com', '06545446', 'Hà Nội', '0e6f6f594b8c3fb93335c4522b761b29', 2, '2021-11-04 03:53:50', '2021-11-04 03:54:06', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_user` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderdetail_order` (`order_id`),
  ADD KEY `fk_orderdetail_product` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`,`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_orderdetail_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_orderdetail_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
