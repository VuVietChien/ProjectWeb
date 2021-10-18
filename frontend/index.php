<?php
include '../db/database.php';
$sql = "SELECT * FROM categories";
$categories = $connection->query($sql);
$sql1 = "SELECT * FROM sliders";
$sliders = $connection->query($sql1);
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="../frontend/themify-icons/themify-icons.css" />
  <link rel="stylesheet" href="../frontend/css/main.css" />
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <link rel="stylesheet" href="../frontend/css/swiper.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Scheherazade+New&display=swap" rel="stylesheet" />
  <title>Trang chu</title>
</head>

<body>
  <div class="header">
    <div class="header-top">
      <div class="row">
        <div class="col-1">
          <img class="logo" src="../frontend/image/logo.png" alt="#" />
          <div class="btn-group">
            <button class="btnUSA">USA</button>
            <ul class="dropdown-menu">
              <li><a href="#">VietNam</a></li>
              <li><a href="#">HanQuoc</a></li>
            </ul>
          </div>
          <div class="btn-group">
            <button>Dollar</button>
            <ul class="dropdown-menu">
              <li><a href="#">VietNam</a></li>
              <li><a href="#">HanQuoc</a></li>
              <li><a href="#">Canada</a></li>
            </ul>
          </div>
        </div>

        <div class="col-2">
          <li>
            <a href="#"> <i class="ti-user"></i> account</a>
          </li>
          <li>
            <a href="#"> <i class="ti-star"></i> wishlist</a>
          </li>
          <li>
            <a href="#"> <i class="ti-credit-card"></i> checkout</a>
          </li>
          <li>
            <a href="#"> <i class="ti-shopping-cart"></i> cart</a>
          </li>
          <li>
            <a href="../frontend/login.html">
              <i class="ti-lock"></i> login</a>
          </li>
        </div>
      </div>
    </div>

    <div class="header-bottom">
      <div class="row-2">
        <div class="col-3">
          <ul class="drop-main-menu">
            <li><a href="../frontend/index.php">Trang chủ</a></li>
            <li class="shop">
              <a href="#">Cửa hàng <i class="ti-angle-down"></i></a>
              <ul class="list-option">
                <li><a href="../frontend/product.html">Sản phẩm</a></li>
                <li>
                  <a href="../frontend/Product-details.html">Chi tiết sản phẩm</a>
                </li>
                <li><a href="#">Thanh toán</a></li>
                <li><a href="#">Giỏ hàng</a></li>
              </ul>
            </li>

            <li class="blog">
              <a href="#">Blog <i class="ti-angle-down"></i></a>
              <ul class="list-option">
                <li><a href="#"> Blog list </a></li>
                <li><a href="#"> Blog Single </a></li>
              </ul>
            </li>

            <li><a href="#">Contact</a></li>
          </ul>
        </div>
        <div class="col-4">
          <div class="search">
            <input class="txtsearch" type="text" placeholder="Search" />
            <i class="ti-search"></i>
          </div>
        </div>
      </div>
    </div>
  </div>

  <section class="Content">
    <div class="slider">
      <div class="swiper mySwiper">
        <div class="swiper-wrapper">
          <?php while($slider = $sliders->fetch_assoc()) :?>
          <div class="swiper-slide">
            <div class="content_slider">
              <div class="logo_slider">
                <img class="logo" src="../frontend/image/logo.png" alt="#" />
              </div>
              <h3><?=$slider['title']?></h3>
              <p>
              <?=$slider['content']?>
              </p>
              <div class="get_item">Get Now</div>
            </div>
            <div class="slider_img">
              <img src="../frontend/image/img_Slider/<?=$slider['image']?>" alt="" />
            </div>
          </div>
          <?php endwhile?>
        </div>
        <div class="btn swiper-button-next"></div>
        <div class="btn swiper-button-prev"></div>
        <div class="btn swiper-pagination"></div>
      </div>
    </div>

    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        pagination: {
          el: ".swiper-pagination",
          type: "fraction",
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    </script>

    <section class="Products">
      <div class="left-products">
        <h2 class="title">THỂ LOẠI</h2>
        <div class="category">
          <?php while ($category = $categories->fetch_assoc()) : ?>
            <div class="penel">
              <div class="panel_heading">
                <a href="product.php?id=<?= $category['id'] ?>"><?= $category['name'] ?></a>
              </div>
            </div>
          <?php endwhile ?>
        </div>
        <h2 class="title">CÁC HÃNG</h2>
        <div class="category">
          <div class="penel">
            <div class="panel_heading"><a href="#">NIKE</a></div>
          </div>
          <div class="penel">
            <div class="panel_heading"><a href="#">ADIDAS</a></div>
          </div>
          <div class="penel">
            <div class="panel_heading"><a href="#">JORDAN</a></div>
          </div>
          <div class="penel">
            <div class="panel_heading"><a href="#">PUMA</a></div>
          </div>
          <div class="penel">
            <div class="panel_heading"><a href="#">UNDER ARMOUR</a></div>
          </div>
          <div class="penel">
            <div class="panel_heading"><a href="#">KAPPA</a></div>
          </div>
          <div class="penel">
            <div class="panel_heading"><a href="#">FILA</a></div>
          </div>
        </div>
        <div class="shipping">
          <img src="../frontend/image/shipping.jpg" alt="#" />
        </div>
      </div>

      <div class="right-products">
        <h2 class="title">Sản Phẩm</h2>
        <div class="product_up">
          <div class="Products_view">
            <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
            <h2 class="Price">$56</h2>
            <p class="name_product">Áo polo thể thao nam</p>
            <div class="add_Cart">
              <i class="ti-shopping-cart"></i>
              <a class="a_sell" href="#">Add to cart</a>
            </div>

            <div class="foot-product">
              <div class="foot-product-con">
                <i class="ti-plus"></i>
                <a href="#">Add to wishlist</a>
              </div>
              <div class="foot-product-con">
                <i class="ti-plus"></i>
                <a href="#">Add to company</a>
              </div>
            </div>
          </div>
          <div class="Products_view">
            <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
            <h2 class="Price">$56</h2>
            <p class="name_product">Áo polo thể thao nam</p>
            <div class="add_Cart">
              <i class="ti-shopping-cart"></i>
              <a class="a_sell" href="#">Add to cart</a>
            </div>

            <div class="foot-product">
              <div class="foot-product-con">
                <i class="ti-plus"></i>
                <a href="#">Add to wishlist</a>
              </div>
              <div class="foot-product-con">
                <i class="ti-plus"></i>
                <a href="#">Add to company</a>
              </div>
            </div>
          </div>
          <div class="Products_view">
            <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
            <h2 class="Price">$56</h2>
            <p class="name_product">Áo polo thể thao nam</p>
            <div class="add_Cart">
              <i class="ti-shopping-cart"></i>
              <a class="a_sell" href="#">Add to cart</a>
            </div>

            <div class="foot-product">
              <div class="foot-product-con">
                <i class="ti-plus"></i>
                <a href="#">Add to wishlist</a>
              </div>
              <div class="foot-product-con">
                <i class="ti-plus"></i>
                <a href="#">Add to company</a>
              </div>
            </div>
          </div>
        </div>
        <div class="product_up">
          <div class="Products_view">
            <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
            <h2 class="Price">$56</h2>
            <p class="name_product">Áo polo thể thao nam</p>
            <div class="add_Cart">
              <i class="ti-shopping-cart"></i>
              <a class="a_sell" href="#">Add to cart</a>
            </div>

            <div class="foot-product">
              <div class="foot-product-con">
                <i class="ti-plus"></i>
                <a href="#">Add to wishlist</a>
              </div>
              <div class="foot-product-con">
                <i class="ti-plus"></i>
                <a href="#">Add to company</a>
              </div>
            </div>
          </div>
          <div class="Products_view">
            <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
            <h2 class="Price">$56</h2>
            <p class="name_product">Áo polo thể thao nam</p>
            <div class="add_Cart">
              <i class="ti-shopping-cart"></i>
              <a class="a_sell" href="#">Add to cart</a>
            </div>

            <div class="foot-product">
              <div class="foot-product-con">
                <i class="ti-plus"></i>
                <a href="#">Add to wishlist</a>
              </div>
              <div class="foot-product-con">
                <i class="ti-plus"></i>
                <a href="#">Add to company</a>
              </div>
            </div>
          </div>
          <div class="Products_view">
            <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
            <h2 class="Price">$56</h2>
            <p class="name_product">Áo polo thể thao nam</p>
            <div class="add_Cart">
              <i class="ti-shopping-cart"></i>
              <a class="a_sell" href="#">Add to cart</a>
            </div>

            <div class="foot-product">
              <div class="foot-product-con">
                <i class="ti-plus"></i>
                <a href="#">Add to wishlist</a>
              </div>
              <div class="foot-product-con">
                <i class="ti-plus"></i>
                <a href="#">Add to company</a>
              </div>
            </div>
          </div>
        </div>
        <div class="menu-product">
          <ul class="menu-small">
            <li class="menu-small-col1"><a href="#">Quần áo</a></li>
            <li><a href="#">Dụng cụ</a></li>
            <li><a href="#">Giày</a></li>
            <li><a href="#">Phụ kiện</a></li>
            <li><a href="#">Trẻ con</a></li>
          </ul>
        </div>
        <div class="div_row6">
          <div class="Products_view1">
            <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
            <h2 class="Price">$56</h2>
            <p class="name_product">Áo polo thể thao nam</p>
            <div class="add_Cart">
              <i class="ti-shopping-cart"></i>
              <a class="a_sell" href="#">Add to cart</a>
            </div>
          </div>
          <div class="Products_view1">
            <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
            <h2 class="Price">$56</h2>
            <p class="name_product">Áo polo thể thao nam</p>
            <div class="add_Cart">
              <i class="ti-shopping-cart"></i>
              <a class="a_sell" href="#">Add to cart</a>
            </div>
          </div>
          <div class="Products_view1">
            <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
            <h2 class="Price">$56</h2>
            <p class="name_product">Áo polo thể thao nam</p>
            <div class="add_Cart">
              <i class="ti-shopping-cart"></i>
              <a class="a_sell" href="#">Add to cart</a>
            </div>
          </div>
          <div class="Products_view1">
            <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
            <h2 class="Price">$56</h2>
            <p class="name_product">Áo polo thể thao nam</p>
            <div class="add_Cart">
              <i class="ti-shopping-cart"></i>
              <a class="a_sell" href="#">Add to cart</a>
            </div>
          </div>
        </div>

        <div class="recomended">
          <h2 class="title">Gợi Ý Cho Bạn</h2>
          <div class="recomended-products">
            <div class="Products_view2">
              <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
              <h2 class="Price">$56</h2>
              <p class="name_product">Áo polo thể thao nam</p>
              <div class="add_Cart">
                <i class="ti-shopping-cart"></i>
                <a class="a_sell" href="#">Add to cart</a>
              </div>
            </div>
            <div class="Products_view2">
              <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
              <h2 class="Price">$56</h2>
              <p class="name_product">Áo polo thể thao nam</p>
              <div class="add_Cart">
                <i class="ti-shopping-cart"></i>
                <a class="a_sell" href="#">Add to cart</a>
              </div>
            </div>
            <div class="Products_view2">
              <img src="../frontend/image/Ao_thun_chay_bo_3_Soc_Own_The_Run_DJen_H36450_21_model.jpg" alt="#" />
              <h2 class="Price">$56</h2>
              <p class="name_product">Áo polo thể thao nam</p>
              <div class="add_Cart">
                <i class="ti-shopping-cart"></i>
                <a class="a_sell" href="#">Add to cart</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </section>

  <footer class="footer">
    <div class="footer-main">
      <div class="footer-contact">
        <h4>Liên Hệ</h4>
        <p>Email : vuvietchien07042001@gmail.com</p>
        <p>Thắc mắc, liên hệ : 0865766032</p>
      </div>
      <div class="footer-store">
        <h4>Hệ Thống Cửa Hàng</h4>
        <p>Cơ sở 1: 22 - 24 Tam Khương, Đống Đa, Hà Nội | 0886.325.522</p>
        <p>
          Cơ sở 2: 372 Nguyễn Trãi (gần chợ Phùng Khoang), Nam Từ Liêm, Hà Nội
          | 0988.636.802
        </p>
      </div>
      <div class="footer-link">
        <h4>Kết Nối Với Chúng Tôi</h4>
        <a href="#"><img src="../frontend/image/fb_logo.png" alt="#" /></a>
        <a href="#"><img src="../frontend//image/insta_logo.png" alt="#" /></a>
        <a href="#"><img src="../frontend//image/logo-tiktok.png" alt="#" /></a>
      </div>
    </div>
  </footer>
</body>

</html>