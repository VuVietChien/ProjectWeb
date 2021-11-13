<?php
session_start();
include_once('./utils/utility.php');
include_once('./db/database.php');

$db = new Database();
$sql = "select * from categories";
$menuItems = $db->executeResult($sql);
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Trang Chủ - Shop Thể Thao</title>
	<link rel="shortcut icon" href="https://t004.gokisoft.com/uploads/2021/07/1-s-1637-ico-web.jpg">
	<link href="https://kit-pro.fontawesome.com/releases/v5.15.4/css/pro.min.css" rel="stylesheet">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">

	<style type="text/css">
		.nav li {
			text-transform: uppercase;
			color: #28a745;
			margin-top: 10px;
		}

		.nav li a {
			color: rgba(102, 102, 102, 0.85);
			font-weight: bold;
		}

		.nav li a:hover {
			color: #3D2E5C;
			transition: 0.5s;
		}

		.carousel-inner img {
			height: 420px;
			width: 100%;
		}

		.product-item:hover {
			background-color: #f5f6f7;
			cursor: pointer;
		}

		footer {
			padding-top: 20px;
		}

		footer ul {
			list-style-type: none;
			padding: 0px;
			margin: 0px;
			padding-top: 10px;
			padding-bottom: 10px;
		}

		.cart_icon {
			position: fixed;
			z-index: 999;
			right: 0px;
			top: 45%;
		}

		.cart_icon img {
			width: 45px;
		}

		.cart_icon .cart_count {
			background-color: red;
			color: white;
			font-size: 16px;
			padding-top: 2px;
			padding-bottom: 2px;
			padding-left: 10px;
			padding-right: 10px;
			font-weight: bold;
			border-radius: 12px;
			position: fixed;
			right: 40px;
		}

		.preloader {
			background-color: #fff;
			bottom: 0;
			height: 100%;
			left: 0;
			position: fixed;
			right: 0;
			display: block;
			top: 0;
			width: 100%;
			z-index: 9999;
		}

		.preloader img {
			display: block;
			width: 100px;
			height: 100px;
			position: absolute;
			top: 50%;
			left: 50%;
			-webkit-transform: translate(-50%, -50%);
			-moz-transform: translate(-50%, -50%);
			-ms-transform: translate(-50%, -50%);
			-o-transform: translate(-50%, -50%);
			transform: translate(-50%, -50%);
		}

		#back-to-top {
			background-color: #171717;
			bottom: 20px;
			color: #fff;
			display: none;
			font-size: 24px;
			height: 40px;
			line-height: 40px;
			position: fixed;
			right: 20px;
			text-align: center;
			width: 40px;
			z-index: 99;
		}

		footer {
			margin-top: 30px;
		}
	</style>
</head>

<body>
	<!-- Menu START -->
	<ul class="nav" style="width: 100%;align-items:center;justify-content:center;padding:20px 0;">
			<li class="nav-item" style="margin-top: 0px !important;">
				<!-- <a href="index.php"><img src="https://t004.gokisoft.com/uploads/2021/07/1-s-1636-logo-web.jpg" style="height: 80px;"></a> -->
				<a href="index.php"><img src="./logo1.png" style="height: 50px;"></a>
			</li>
			<?php
			foreach ($menuItems as $item) {
				echo '<li class="nav-item">
				    <a class="nav-link" href="category.php?id=' . $item['id'] . '">' . $item['name'] . '</a>
				  </li>';
			}
			?>
			<li class="nav-item">
				    <a class="nav-link" href="contact.php">Liên Lạc</a>
			</li>
		</ul>
	<!-- Menu Stop -->