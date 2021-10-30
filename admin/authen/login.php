<?php
session_start();
// include_once '../../database/dbhelper.php';
include_once '../../db/database.php';
include_once "../../utils/utility.php";
include_once "./process_form_login.php";
$user = Utility::getUserToken();
if ($user != null) {
    header("Location: ../index.php");
    die();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng nhập</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <div class="main">
        <div class="container">
            <div class="signup-content">
                <form method="POST" id="signup-form" class="signup-form" onsubmit="return validateFormLogin()">
                    <h2>Đăng nhập</h2>
                    <h3 style="color:red"><?= $msg ?></h3>

                    <div class="form-group">
                        <input type="email" class="form-input" name="email" id="email" placeholder="Nhập email" value="<?= $email ?>" />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-input" name="password" id="password" placeholder="Nhập mật khẩu" minlength="1" />
                        <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                    </div>

                    <div class="form-group">
                        <input type="submit" name="submit" id="submit" class="form-submit submit" value="Đăng nhập" />
                        <a style="margin-left:73px;width:190px;" href="register.php" class="submit-link submit">Đăng ký tài khoản mới</a>
                    </div>
                </form>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script>
        function validateFormLogin() {
            $password = $('#password').val();
            $email = $('#email').val();
            if ($password == "" || $email == "") {
                alert("Vui lòng điền đủ thông tin");
                return false;
            }
            return true;
        }
    </script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>