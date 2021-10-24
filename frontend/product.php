<?php
include "../db/database.php";
if (!isset($_GET['id']) || empty($_GET['id'])) {
    header("Location: 404.php");
} else {
    $idCategory = $_GET['id'];
}

$sql = "SELECT * FROM categories,products 
WHERE categories.id = products.category_id AND
products.category_id={$idCategory}";
$sql1 = "SELECT * FROM categories WHERE id={$idCategory}";
$sql2 = "SELECT * FROM categories";
$categories = $connection->query($sql2);
$products = $connection->query(($sql));
$category = $connection->query($sql1);
$rowCategory = $category->fetch_assoc();

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Shop | Sản phảm </title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <!-- <link href="css/animate.css" rel="stylesheet"> -->

    <link href="css/main2.css" rel="stylesheet">

    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->

<body>
    <div class="header" style="overflow: hidden;">
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
    <section id="advertisement">
        <div class="container">
            <img src="./image/advertisement.jpg" alt="" />
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <?php
                    include("./includes/sidebar.php")
                    ?>

                </div>

                <div class="col-sm-9 padding-right">
                    <div class="features_items">
                        <!--features_items-->
                        <h2 class="title text-center"><?= $rowCategory['name'] ?></h2>
                        <?php while ($product = $products->fetch_assoc()) : ?>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <a href="./product-details.php?id=<?= $product['id'] ?>" title="Xem chi tiết sản phẩm"><img height="249" width="268" src="./image/<?= $product['image'] ?>" alt="" /></a>
                                            <h2><?php echo number_format($product['price']) . ' VNĐ' ?></h2>
                                            <p><?= $product['name'] ?></p>
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        <?php endwhile ?>
                        <div class="">

                        </div>

                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <ul class="pagination">
                                <li class="active"><a href="">1</a></li>
                                <li><a href="">2</a></li>
                                <li><a href="">3</a></li>
                                <li><a href="">&raquo;</a></li>
                            </ul>
                        </div>
                    </div>

                    <!--features_items-->
                </div>
            </div>
        </div>
    </section>

</body>

</html>