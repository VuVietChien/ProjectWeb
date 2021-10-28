<?php
include "../db/database.php";
session_start();
$db = new Database();

if (isset($_POST['addToCart'])) {
  $product_name = $_POST['product_name'];
  $product_id = $_POST['product_id'];
  $product_image = $_POST['product_image'];
  $product_price = $_POST['product_price'];
  $product_quantity = $_POST['product_quantity'];

  // Lay gio hang theo san pham 
  $sql3 = "SELECT * FROM carts WHERE product_id={$product_id}";
  $cartListProductId = $db->connection->query($sql3);
  if ($cartListProductId->num_rows > 0) {
    $row_product = $cartListProductId->fetch_assoc();
    $product_quantity = $row_product['product_quantity'] + 1;
    $sql4 = "UPDATE carts SET product_quantity={$product_quantity} WHERE product_id={$product_id}";
  } else {
    $sql4 = "INSERT INTO carts (product_name, product_id, product_price, product_image, product_quantity) VALUES ('{$product_name}',{$product_id},'{$product_price}','{$product_image}',{$product_quantity})";
  }
  $insert_product_cart = $db->connection->query($sql4);
  if ($insert_product_cart == 0) {
    header('Location: product-details.php?id=' . $product_id);
  }

  // Lay tat ca gio hang

} else if (isset($_POST['update_cart'])) {
  for ($i = 0; $i < count($_POST['product_id']); $i++) {
    $product_id = $_POST['product_id'][$i];
    $product_quantity = $_POST['product_quantity'][$i];
    $sql5 = "UPDATE carts SET product_quantity={$product_quantity} WHERE product_id={$product_id}";
    $db->connection->query($sql5);
  }
} else if ($_GET['xoa']) {
  $id = $_GET['xoa'];
  $sql6 = "DELETE FROM carts WHERE id={$id}";
  $db->connection->query($sql6);
}
$sql2 = "SELECT * FROM carts ORDER BY id DESC";
$cartList = $db->connection->query($sql2);


// if ($count > 0) {
//   $product_quantity = 
// }

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="../frontend/themify-icons/themify-icons.css" />
  <link href="../frontend/css/font-awesome.min.css" rel="stylesheet" />
  <link href="../frontend/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="../frontend/css/main.css" />
  <title>Trang chu</title>
</head>

<body>
  <div class="header">
    <div class="header-top">
      <div class="row">
        <div class="col-1" style="margin-right: 360px;">
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
  <section id="cart_items">
    <div class="container">
      <div class="table-responsive cart_info">
        <form action="" method="POST">
          <table class="table table-condensed">
            <thead>
              <tr class="cart_menu">
                <td class="">STT</td>
                <td class="image">Hình ảnh Sản phẩm</td>
                <td class="description">Tên sản phẩm</td>
                <td class="quantity">Số lượng</td>
                <td class="total">Giá tiền</td>
                <td>Quản lý</td>
              </tr>
            </thead>
            <tbody>

              <?php
              $i = 0;
              $total = 0;
              while ($cart = $cartList->fetch_assoc()) : ?>
                <?php ++$i;
                $subTotal = $cart['product_price'] * $cart['product_quantity'];
                $total += $subTotal;
                ?>
                <tr>
                  <td>
                    <?= $i ?>
                  </td>
                  <td class="cart_product">
                    <a href=""><img style="width: 120px;" src="./image/<?= $cart['product_image'] ?>" alt="" /></a>
                  </td>
                  <td class="cart_description">
                    <h4><a href=""><?= $cart['product_name'] ?></a></h4>
                  </td>
                  <td class="cart_quantity">
                    <input class="quantity" id="quantity" min="1" name="product_quantity[]" type="number" value="<?= $cart['product_quantity'] ?>" />
                    <input class="quantity" id="quantity" min="1" name="product_id[]" type="hidden" value="<?= $cart['product_id'] ?>" />

                  </td>
                  <td class="cart_total">
                    <p class="cart_total_price"><?= number_format($subTotal) ?> VNĐ</p>
                  </td>
                  <td class="cart_delete">
                    <a class="cart_quantity_delete" href="./cart.php?message=Xoá+thành+công&xoa=<?= $cart['id'] ?>">Xoá </a>
                  </td>
                </tr>
              <?php endwhile ?>

              <tr>
                <td colspan="7" style="text-align: center">
                  <input style="margin-top: 6px;padding:6px 50px" type="submit" name="update_cart" value="Cập nhật lại giỏ hàng" class="btn btn-success" />
                </td>
              </tr>
              <tr>
                <td colspan="7">
                  <p style="
                      text-align: center;
                      margin-top: 20px;
                      font-size: 25px;
                      font-weight: bold;
                    ">
                    Tổng tiền : <?= number_format($total) . 'VNĐ' ?>
                  </p>
                </td>
              </tr>
            </tbody>
          </table>
        </form>
      </div>
    </div>
  </section>
  <!--/#cart_items-->

  <section id="customer_info">
    <div class="container">
      <h3 class="customer_info--heading">Thêm địa chỉ giao hàng</h3>
      <form method="POST">
        <div class="form-group">
          <input type="text" required class="form-control" placeholder="Nhập họ tên" />
        </div>
        <div class="form-group">
          <input type="number" required class="form-control" placeholder="Nhập số điện thoại" />
        </div>
        <div class="form-group">
          <input type="text" required class="form-control" placeholder="Nhập địa chỉ " />
        </div>

        <button type="submit" name="thanhtoandonhang" class="btn btn-primary">
          Thanh toán tới địa chỉ này
        </button>
      </form>
    </div>
  </section>
  <!--/#customer-information-->
  <?php
  include('./includes/footer.php')
  ?>
</body>

</html>