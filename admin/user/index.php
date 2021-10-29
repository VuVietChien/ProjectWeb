<?php
$title = "Trang Quản lý người dùng";
$baseUrl = '../';
include_once '../layouts/header.php';
$db = new Database();
$sql = "SELECT users.*,roles.name as role_name FROM users,roles WHERE users.role_id=roles.id AND users.deleted=0";
$data = $db->executeResult($sql);
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-md-12">
                    <h1 class="m-0 mb-3">Danh sách người dùng</h1>
                    <a class="btn btn-success">Thêm tài khoản</a>
                    <table class="table table-hover mt-5 table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">STT</th>
                                <th scope="col">Họ và tên</th>
                                <th scope="col">Email</th>
                                <th scope="col">Số điện thoại</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Quyền</th>
                                <th scope="col">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $index = 0;
                            foreach ($data as $item) : ?>
                                <tr>
                                    <th scope="row"><?= ++$index ?></th>
                                    <td><?= $item['fullname'] ?></td>
                                    <td><?= $item['email'] ?></td>
                                    <td><?= $item['phone_number'] ?></td>
                                    <td><?= $item['address'] ?></td>
                                    <td><?= $item['role_name'] ?></td>
                                    <td>
                                        <a href="" class="btn btn-warning">Sửa</a>
                                        <a href="" class="btn btn-danger">Xoá</a>
                                    </td>
                                </tr>
                            <?php endforeach ?>

                        </tbody>
                    </table>
                </div>


            </div>
        </div>
    </div>
</div>
<aside class="control-sidebar control-sidebar-dark">
</aside>
</div>
<?php
include_once '../layouts/footer.php';
?>