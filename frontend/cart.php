<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../frontend/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../frontend/themify-icons/themify-icons.css" />
    <link href="../frontend/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../frontend/css/main.css" />
    <title>Trang chu</title>
  </head>
  <body>
    <section id="cart_items">
      <div class="container">
        <div class="table-responsive cart_info">
          <table class="table table-condensed">
            <thead>
              <tr class="cart_menu">
                <td class="image">Hình ảnh Sản phẩm</td>
                <td class="description">Tên sản phẩm</td>
                <td class="price">Giá tiền</td>
                <td class="quantity">Số lượng</td>
                <td class="total">Giá tổng</td>
                <td>Quản lý</td>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td class="cart_product">
                  <a href=""><img src="images/cart/one.png" alt="" /></a>
                </td>
                <td class="cart_description">
                  <h4><a href="">Colorblock Scuba</a></h4>
                </td>
                <td class="cart_price">
                  <p>$59</p>
                </td>
                <td class="cart_quantity">
                  <input
                    class="decrease_quantity"
                    onclick="var result = document.getElementById('quantity'); var qty = result.value; if( !isNaN(qty) &amp; qty > 1 ) result.value--;return false;"
                    type="button"
                    value="-"
                  />
                  <input
                    class="quantity"
                    id="quantity"
                    min="1"
                    name="quantity"
                    type="text"
                    value="1"
                  />
                  <input
                    class="increase_quantity"
                    onclick="var result = document.getElementById('quantity'); var qty = result.value; if( !isNaN(qty)) result.value++;return false;"
                    type="button"
                    value="+"
                  />
                </td>
                <td class="cart_total">
                  <p class="cart_total_price">$59</p>
                </td>
                <td class="cart_delete">
                  <a class="cart_quantity_delete" href="">Xoá </a>
                </td>
              </tr>
              <tr>
                <td colspan="7" style="text-align: center">
                  <input
                    style="margin-top: 6px;padding:6px 50px"
                    type="submit"
                    name="capnhatgiohang"
                    value="Cập nhật lại giỏ hàng"
                    class="btn btn-success"
                  />
                </td>
              </tr>
              <tr>
                <td colspan="7">
                  <p
                    style="
                      text-align: center;
                      margin-top: 20px;
                      font-size: 25px;
                      font-weight: bold;
                    "
                  >
                    Tổng tiền : 5.000.000 VND
                  </p>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>
    <!--/#cart_items-->

    <section id="customer_info">
      <div class="container">
        <h3 class="customer_info--heading">Thêm địa chỉ giao hàng</h3>
        <form method="POST">
          <div class="form-group">
            <input
              type="text"
              required
              class="form-control"
              placeholder="Nhập họ tên"
            />
          </div>
          <div class="form-group">
            <input
              type="number"
              required
              class="form-control"
              placeholder="Nhập số điện thoại"
            />
          </div>
          <div class="form-group">
            <input
              type="text"
              required
              class="form-control"
              placeholder="Nhập địa chỉ "
            />
          </div>

          <button type="submit" name="thanhtoandonhang" class="btn btn-primary">
            Thanh toán tới địa chỉ này
          </button>
        </form>
      </div>
    </section>
    <!--/#customer-information-->
  </body>
</html>
