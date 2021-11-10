<?php
$baseUrl = './mail';
require_once('layouts/header.php');
require_once("./mail/sendmail.php");
$tieude = "Đặt hàng website sportstore.vn thành công!";
$noidung = "<p>Cảm ơn quý khách đã đặt hàng của chúng tôi: </p>";
$noidung .= "<h4>Đơn hàng của bạn bao gồm: </h4>";
?>
<?php foreach ($_SESSION['cart'] as $key => $value) {
	$noidung .= "<ul style='border:1px solid black;margin:10px;'>
	<li>Sản phẩm:" . $value['name'] . "</li>
	<li>Giá:" . number_format($value['discount']) . " VNĐ</li>
	<li>Số lượng:" . $value['num'] . "</li>
	<li>Tổng:" . number_format($value['num'] * $value['discount']) . " VNĐ</li>
	</ul>";
}



$maildathang = $_SESSION['email'];
$mail = new Mailer();
$mail->datHangMail($tieude, $noidung, $maildathang);
unset($_SESSION['cart']);

// echo '
// <pre>';
// print_r($_SESSION['cart']);
// echo '</pre>';
// die();
?>
<div class="container" style="margin-top: 20px; margin-bottom: 20px;">
	<div class="row">
		<div class="col-md-12" style="text-align: center;">
			<h1 style="color: green">BẠN ĐÃ TẠO ĐƠN HÀNG THÀNH CÔNG!!!</h1>
			<h4>Cảm ơn quý khách đã đặt mua sản phẩm của chúng tôi !
				Đơn hàng của quý khách đã được gửi đến email của bạn và sẽ giao hàng trong thời gian sớm nhất.</h4>
			<a href="index.php"><button class="btn btn-success" style="border-radius: 0px; font-size: 26px;">TIẾP TỤC MUA HÀNG</button></a>
		</div>
	</div>
</div>
<?php
require_once('layouts/footer.php');
?>