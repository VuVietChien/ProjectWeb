<?php
session_start();
include "../db/database.php";
$db = new Database();

if (!isset($_GET['id']) || empty($_GET['id'])) {
    header("Location: 404.php");
} else {
    $idProductDetail = $_GET['id'];
}
$sql1 = "SELECT * FROM categories";
$categories = $db->connection->query($sql1);

$sql2 = "SELECT * FROM products WHERE id={$idProductDetail}";
$productDetail = $db->connection->query($sql2);
$rowProductDetail = $productDetail->fetch_assoc();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../frontend/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="./css/Product-details.css">
    <title>Shop | Chi tiết sản phẩm</title>

    <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
    <script type="text/javascript">
        $(() => {
            $('div img').click(function() {
                let imgPath = $(this).attr('src');
                $('#img-main').attr('src', imgPath);
            })
        })
    </script>
</head>

<body>
    <div class="shop">
        <div class="header">
            <div class="header-top">
                <div class="row">
                    <div class="col-1">
                        <img class="logo" src="../frontend/image/logo.png" alt="#">
                        <div class="btn-group">
                            <button class="btnUSA">USA</button>
                            <ul class="dropdown-menu">
                                <li> <a href="#">VietNam</a></li>
                                <li> <a href="#">HanQuoc</a></li>
                            </ul>

                        </div>
                        <div class="btn-group">
                            <button>Dollar</button>
                            <ul class="dropdown-menu">
                                <li> <a href="#">VietNam</a></li>
                                <li> <a href="#">HanQuoc</a></li>
                                <li> <a href="#">Canada</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-2">
                        <li><a href="#"> <i class="ti-user"></i> account</a></li>
                        <li><a href="#"> <i class="ti-star"></i> wishlist</a></li>
                        <li><a href="#"> <i class="ti-credit-card"></i> checkout</a></li>
                        <li><a href="#"> <i class="ti-shopping-cart"></i> cart</a></li>
                        <li><a href="#"> <i class="ti-lock"></i> login</a></li>
                    </div>
                </div>
            </div>


            <div class="header-bottom">
                <div class="row-2">
                    <div class="col-3">
                        <ul class="drop-main-menu">
                            <li><a href="../frontend/Index.html">Home</a></li>
                            <li class="shop"><a href="#">Shop <i class="ti-angle-down"></i></a>
                                <ul class="list-option">
                                    <li><a href="#">Product</a></li>
                                    <li><a href="#">Products details</a></li>
                                    <li><a href="#">Checkout</a></li>
                                    <li><a href="#">Cart</a></li>
                                </ul>
                            </li>

                            <li class="blog"><a href="#">Blog <i class="ti-angle-down"></i></a>
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
                            <input class="txtsearch" type="text" placeholder="Search">
                            <i class="ti-search"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="Content">
            <!-- <div class="sliderbar">
                <div class="sliderbar1">
                    <h2>THỂ LOẠI</h2>
                    <div class="sliderbar-1">
                        <ul>
                            <li class="mncap2"> <a href="#">Quần áo thể thao <i class="ti-angle-down"></i></a>
                                <ul class="sliderbar_1">
                                    <li><a href="">NIKE</a></li>
                                    <li><a href="">UNDER ARMOUR</a></li>
                                    <li><a href="">ADIDAS</a></li>
                                    <li><a href="">PUMA</a></li>
                                    <li><a href="">ASICS</a></li>
                                </ul>
                            </li>
                            <li class="mncap2"> <a href="#">Đàn ông <i class="ti-angle-down"></i></a>
                                <ul class="sliderbar_1">
                                    <li><a href="">FENDI</a></li>
                                    <li><a href="">GUESS</a></li>
                                    <li><a href="">PRADA</a></li>
                                    <li><a href="">CHANEL</a></li>
                                    <li><a href="">GUCCI</a></li>
                                </ul>
                            </li>
                            <li class="mncap2"> <a href="#">Phụ nữ <i class="ti-angle-down"></i></a>
                                <ul class="sliderbar_1">
                                    <li><a href="">FENDI</a></li>
                                    <li><a href="">GUESS</a></li>
                                    <li><a href="">VALENTINO</a></li>
                                    <li><a href="">DIOR</a></li>
                                    <li><a href="">VERSACE</a></li>
                                </ul>
                            </li>
                            <li> <a href="#">Trẻ em</a></li>
                            <li> <a href="#">Thời trang</a></li>
                            <li> <a href="#">Đồ gia đình</a></li>
                            <li> <a href="#">Đồ tập</a></li>
                            <li> <a href="#">Quần áo</a></li>
                            <li> <a href="#">Túi xách</a></li>
                            <li> <a href="#">Giày</a></li>
                        </ul>
                    </div>
                </div>
                <div class="sliderbar2">
                    <h2>Các hãng</h2>
                    <div class="sliderbar-2">
                        <ul>
                            <li><a href="#">Nike <p>(50)</p></a></li>
                            <li><a href="#">Adidas<p>(56)</p></a></li>
                            <li><a href="#">Jordan <p>(27)</p></a></li>
                            <li><a href="#">Puma <p>(32)</p></a></li>
                            <li><a href="#">Under Armour <p>(5)</p></a></li>
                            <li><a href="#">Kappa <p>(9)</p></a></li>
                            <li><a href="#">Fila <p>(4)</p></a></li>
                        </ul>
                    </div>
                </div>

                <div class="sliderbar3">
                    <img src="./image/slider-shipping.jpg" alt="">
                </div>

            </div> -->
            <?php
            include("./includes/sidebar.php")
            ?>
            <div class="Products">
                <div class="products-sp">
                    <div class="products_anh">
                        <img class="to" src="./image/<?= $rowProductDetail['image'] ?>" id="img-main" />
                        <div class="products_anh-nho">
                            <img class="nho" src="./image/ao2.jpg" id="nho">
                            <img class="nho" src="./image/<?= $rowProductDetail['image'] ?>" id="be">
                        </div>
                    </div>

                    <div class="products_tt">

                        <a><img src="./image/rating.png" alt=""> 196</a>
                        <h2><?= $rowProductDetail['name'] ?></h2>

                        <h4 class="chu" style="color: #FE980F;"><?= number_format($rowProductDetail['price']) ?> VNĐ</h4>
                        <div class="muah">
                            <span>Số lượng:</span>
                            <input type="number" style="margin: 10px 0;border-radius: 8px; text-align: center;">
                            <form action="./cart.php" method="POST">
                                
                                <input type="hidden" name="product_name" value="<?= $rowProductDetail['name'] ?>">
                                <input type="hidden" name="product_id" value="<?= $rowProductDetail['id'] ?>">
                                <input type="hidden" name="product_price" value="<?= $rowProductDetail['price'] ?>">
                                <input type="hidden" name="product_image" value="<?= $rowProductDetail['image'] ?>">
                                <input type="hidden" name="product_quantity" value="1">
                                <input class="" style="width: 200px;" type="submit" name="addToCart" value="Thêm vào giỏ hàng">
                                <!-- <i class="ti-shopping-cart"></i> -->
                                <!-- <a href="#" type="submit" style="margin-bottom: 10px;">Thêm vào giỏ hàng</a> -->
                            </form>
                        </div>
                        <h5>Tình trạng:
                            <?php if ($rowProductDetail['active'] == 1) : ?>
                                <span style="color: green;">Còn hàng</span>
                            <?php else : ?>
                                <span style="color: red;">Hết hàng</span>
                            <?php endif ?>
                        </h5>
                        <h5>Brand: <?= $rowProductDetail['brand'] ?></h5>

                    </div>
                </div>

                <div class="mntt">
                    MÔ TẢ
                </div>
                <div id="mota">
                    <div class="mota-tt">
                        <h2 class="mota-tt1"><?= $rowProductDetail['name'] ?></h2>

                        <p><?= $rowProductDetail['description'] ?></p>
                    </div>
                    <img src="./image/<?= $rowProductDetail['image'] ?>" alt="">
                </div>

                <div class="mntt">
                    CHĂM SÓC
                </div>
                <div id="chamsoc">
                    <div class="chamsoc-hh">
                        <div class="huongdan">
                            <h4>Hướng Dẫn Giặt</h4>
                            <ul>
                                <li><img class="hh-anh" src="./image/B1.svg" alt=""> Do not bleach</li>
                                <li><img class="hh-anh" src="./image/E1.svg" alt=""> Do not dry clean</li>
                                <li><img class="hh-anh" src="./image/A5.svg" alt=""> Machine wash warm</li>
                            </ul>
                        </div>
                        <div class="hd">
                            <ul>
                                <li><img class="hh-anh" src="./image/C2.svg" alt=""> Tumble dry low heat</li>
                                <li><img class="hh-anh" src="./image/D2.svg" alt=""> Touch up with cool iron</li>
                            </ul>
                        </div>
                        <div class="ttchamsoc">
                            <h4>Thông Tin Chăm Sóc Phụ Trợ</h4>
                            <ul>
                                <li><i class="ti-control-record"></i> Do not use fabric softener</li>
                                <li><i class="ti-control-record"></i> Use mild detergent only</li>
                                <li><i class="ti-control-record"></i> Wash with like colors</li>
                                <li><i class="ti-control-record"></i> Remove promptly after wash</li>
                                <li><i class="ti-control-record"></i> Wash inside out</li>
                            </ul>
                        </div>
                    </div>
                </div>


                <div class="mntt">
                    ĐÁNH GIÁ
                </div>
                <div class="danhgia">
                    <div class="danhgia1">
                        <h3>4.8</h3>
                        <h4>Trên 5</h4>
                        <img src="./image/rating.png" alt="">
                    </div>
                    <div class="danhgia2">
                        <ul>
                            <li>Tất Cả</li>
                            <li>5 Sao (170)</li>
                            <li>4 Sao (23)</li>
                            <li>3 Sao (1)</li>
                            <li>2 Sao (2)</li>
                            <li>1 Sao (0)</li>
                        </ul>

                    </div>
                </div>
                <div class="fromnx">
                    <h4>Nhận Xét</h4>
                    <textarea rows="8" cols="100" placeholder=" Nhập nội dung"></textarea>
                    <div class="fromgui">
                        <button>Gửi</button>
                    </div>
                </div>

                <div class="splienquan">
                    <div class="splienquan1">
                        <h3>Sản phẩm liên quan</h3>
                    </div>
                    <div class="sqlienquan2">
                        <div class="sqlq1">
                            <a href="#"><img src="./image/DV2905_01_laydown.jpg" alt=""></a>
                            <div class="sqlqtt">
                                <a href="#">
                                    <h4>Áo Phông TREFOIL</h4>
                                    <h5>Originals</h5>
                                    <h4 class="tien">700.000đ</h4>
                                </a>
                            </div>
                        </div>

                        <div class="sqlq1">
                            <a href="#"><img src="./image/DV2904_02_laydown.jpg" alt=""></a>
                            <div class="sqlqtt">
                                <a href="#">
                                    <h4>Áo Phông TREFOIL</h4>
                                    <h5>Originals</h5>
                                    <h4 class="tien">700.000đ</h4>
                                </a>
                            </div>
                        </div>

                        <div class="sqlq1">
                            <a href="#"><img src="./image/DV2872_03_laydown.jpg" alt=""></a>
                            <div class="sqlqtt">
                                <a href="#">
                                    <h4>Quần 3 Sọc</h4>
                                    <h5>Originals</h5>
                                    <h4 class="tien">800.000đ</h4>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>





        <footer class="footer">
            <div class="footer-main">
                <div class="footer-contact">
                    <h4>Liên Hệ</h4>
                    <p>Email : vuvietchien07042001@gmail.com</p>
                    <p>Thắc mắc, liên hệ : 0865766032 </p>
                </div>
                <div class="footer-store">
                    <h4>Hệ Thống Cửa Hàng</h4>
                    <p>Cơ sở 1: 22 - 24 Tam Khương, Đống Đa, Hà Nội | 0886.325.522</p>
                    <p>Cơ sở 2: 372 Nguyễn Trãi (gần chợ Phùng Khoang), Nam Từ Liêm, Hà Nội | 0988.636.802</p>
                </div>
                <div class="footer-link">
                    <h4>Kết Nối Với Chúng Tôi</h4>
                    <a href="#"><img src="../frontend/image/fb_logo.png" alt="#"></a>
                    <a href="#"><img src="../frontend/image/insta_logo.png" alt="#"></a>
                    <a href="#"><img src="../frontend/image/logo-tiktok.png" alt="#"></a>
                </div>
            </div>
        </footer>
    </div>
</body>

</html>