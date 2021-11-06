<?php 
$baseUrl = '';
include_once('./layouts/header.php');
$category_id = Utility::getGet('id');

$db = new Database();
if($category_id == null || $category_id == '' )
{
	$sql = "select Product.*, Category.name as category_name from Product left join Category on 
	Product.category_id = Category.id order by Product.updated_at desc limit 0,12";
}
else{
	$sql = "select products.*, categories.name as category_name from 
products left join categories on products.category_id = categories.id 
WHERE products.category_id = $category_id ORDER BY id desc limit 0,12";
}

$lastestItems = $db->executeResult($sql);
?>

  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://t004.gokisoft.com/uploads/2021/07/1-s-1634-banner-web.jpg" alt="Los Angeles">
    </div>
    <div class="carousel-item">
      <img src="https://t004.gokisoft.com/uploads/2021/07/2-s-1634-banner-web.jpg" alt="Chicago">
    </div>
    <div class="carousel-item">
      <img src="https://t004.gokisoft.com/uploads/2021/07/3-s-1634-banner-web.jpg" alt="New York">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
  <div class="container" style="margin-top: 20px; margin-bottom: 20px;">
	<div class="row">
	<?php
		foreach($lastestItems as $item) {
			echo '<div class="col-md-3 col-6 product-item">
					<a href="detail.php?id='.$item['id'].'"><img src="'.$item['image'].'" style="width: 100%; height: 220px;"></a>
					<p style="font-weight: bold;">'.$item['category_name'].'</p>
					<a href="detail.php?id='.$item['id'].'"><p style="font-weight: bold;">'.$item['name'].'</p></a>
					<p style="color: red; font-weight: bold;">'.number_format($item['discount']).' VND</p>
					<p><button class="btn btn-success" onclick="addCart('.$item['id'].', 1)" style="width: 100%; 
					border-radius: 0px;"><i class="bi bi-cart-plus-fill"></i> Thêm giỏ hàng</button></p>
				</div>';
		}
	?>
	</div>
</div>
<?php
require_once('./layouts/footer.php');
?>