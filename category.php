<?php 
require_once('layouts/header.php');

$category_id = getGet('id');

if($category_id == null || $category_id == '') {
	$sql = "select Product.*, Category.name as category_name from Product left join Category on Product.category_id = Category.id order by Product.updated_at desc limit 0,12";
} else {
	$sql = "select Product.*, Category.name as category_name from Product left join Category on Product.category_id = Category.id where Product.category_id = $category_id order by Product.updated_at desc limit 0,12";
}

$lastestItems = executeResult($sql);
?>
<div class="container" style="margin-top: 20px; margin-bottom: 20px;">
	<div class="row">
	<?php
		foreach($lastestItems as $item) {
			echo '<div class="col-md-3 col-6 product-item">
					<a href="detail.php?id='.$item['id'].'"><img src="'.$item['thumbnail'].'" style="width: 100%; height: 220px;"></a>
					<p style="font-weight: bold;">'.$item['category_name'].'</p>
					<a href="detail.php?id='.$item['id'].'"><p style="font-weight: bold;">'.$item['title'].'</p></a>
					<p style="color: red; font-weight: bold;">'.number_format($item['discount']).' VND</p>
					<p><button class="btn btn-success" onclick="addCart('.$item['id'].', 1)" style="width: 100%; border-radius: 0px;"><i class="bi bi-cart-plus-fill"></i> Thêm giỏ hàng</button></p>
				</div>';
		}
	?>
	</div>
</div>
<?php
require_once('layouts/footer.php');
?>