<footer style="background-color: #81d742 !important;">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h4>GIỚI THIỆU</h4>
				<ul>
					<li>LIÊN HỆ CÔNG TY CỔ PHẦN SPORTSTORE</li>
					<li><i class="bi bi-mailbox2"></i> kenshin.com@gmail.com</li>
					<li><i class="bi bi-telephone-fill"></i> 123456789</li>
					<li><i class="bi bi-map-fill"></i> Ha Noi, Viet Nam</li>
					<li>Chúng tôi luôn tiên phong trong lĩnh vực xậy dựng website cho các doanh nghiệp và của hàng. Chúng tôi luôn nỗ lực để tạo ra sản phẩm có chất lượng tốt nhất cho khách hàng.</li>
				</ul>
			</div>
			<div class="col-md-4">
				<h4>SẢN PHẨM MỚI NHẤT</h4>
				<ul>
					<li>LIÊN HỆ CÔNG TY CỔ PHẦN SPORTSTORE</li>
					<li>Email: kenshin.com@gmail.com</li>
					<li>Phone: 123456789</li>
					<li>Chúng tôi luôn tiên phong trong lĩnh vực xậy dựng website cho các doanh nghiệp và của hàng. Chúng tôi luôn nỗ lực để tạo ra sản phẩm có chất lượng tốt nhất cho khách hàng.</li>
				</ul>
			</div>
			<div class="col-md-4">
				<h4>TIN TỨC MỚI NHẤT</h4>
				<ul>
					<li>LIÊN HỆ CÔNG TY CỔ PHẦN SPORTSTORE</li>
					<li>Email: kenshin.com@gmail.com</li>
					<li>Phone: 123456789</li>
					<li>Chúng tôi luôn tiên phong trong lĩnh vực xậy dựng website cho các doanh nghiệp và của hàng. Chúng tôi luôn nỗ lực để tạo ra sản phẩm có chất lượng tốt nhất cho khách hàng.</li>
				</ul>
			</div>
		</div>
	</div>
	<div style="background-color: #3f9609; width: 100%; text-align: center; padding: 20px;">
		© 2018 Zic Zac Group . Được thiết kế bời ZicZac. All rights reserved.
	</div>
</footer>
<!-- back to top -->
<div class="back-to-top" id="back-to-top" style="display: block;">
	<a href="#">
		<i class="fas fa-arrow-up"></i>
	</a>
</div>


<?php
if (!isset($_SESSION['cart'])) {
	$_SESSION['cart'] = [];
}
$count = 0;
// var_dump($_SESSION['cart']);
foreach ($_SESSION['cart'] as $item) {
	$count += $item['num'];
}
?>


<!-- Cart start -->
<span class="cart_icon">
	<span class="cart_count" id="cart_count"><?= $count ?></span>
	<a href="cart.php"><img src="https://gokisoft.com/img/cart.png"></a>
</span>
<!-- Cart stop -->
<!-- Jquery-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap JS-->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- Owl Carousel-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<!-- Slick JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<!-- jquery.elevateZoom-3.0.8.min.js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/elevatezoom/3.0.8/jquery.elevatezoom.min.js"></script>
<script type="text/javascript">
	function addCart(productId, num) {
		$.post("utils/ajax_request.php", {
			'action': 'cart',
			'id': productId,
			'num': num
		}, function(data) {
			alert("Đã thêm sản phẩm vào giỏ hàng")
			location.reload()

		})
	}
</script>
<script src="./main.js"></script>
</body>

</html>
