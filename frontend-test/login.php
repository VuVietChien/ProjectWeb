<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!--Fontawesome CDN-->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
      integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
      crossorigin="anonymous"
    />
    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../frontend/css/main.css" />
    <title>Đăng nhập</title>
  </head>
  <body>
    <section id="form">
      <!--form-->
      <div class="container">
        <div class="row">
          <div class="col-sm-4 col-sm-offset-1">
            <div class="login-form">
              <!--login form-->
              <h2>Đăng nhập</h2>
              <form action="#">
                <input
                  name="account"
                  type="text"
                  placeholder="Nhập tên tài khoản của bạn"
                />
                <input
                  name="password"
                  type="password"
                  placeholder="Nhập mật khẩu"
                />
                <span>
                  <input type="checkbox" class="checkbox" />
                  Giữ đăng nhập
                </span>
                <button name="submit" type="submit" class="btn btn-default">
                  Đăng nhập
                </button>
              </form>
            </div>
            <!--/login form-->
          </div>
          <div class="col-sm-1">
            <h2 class="or">Hoặc</h2>
          </div>
          <div class="col-sm-4">
            <div class="signup-form">
              <!--sign up form-->
              <h2>Đăng kí</h2>
              <form action="#">
                <input
                  name="register_account"
                  type="text"
                  placeholder="Tên tài khoản"
                />
                <input type="register_password" placeholder="Mật khẩu" />
                <input
                  type="register_confirm_password"
                  placeholder="Nhập lại mật khẩu"
                />
                <button
                  name="register_submit"
                  type="submit"
                  class="btn btn-default"
                >
                  Đăng kí
                </button>
              </form>
            </div>
            <!--/sign up form-->
          </div>
        </div>
      </div>
    </section>
    <!--/form-->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
  </body>
</html>