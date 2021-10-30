<?php
$title = "Trang Quản lý người dùng";
$baseUrl = '../';
include_once '../layouts/header.php';
$db = new Database();
$sql = "SELECT users.*,roles.name as role_name FROM users,roles WHERE users.role_id=roles.id AND users.deleted=0 ORDER BY id DESC";
$data = $db->executeResult($sql);
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-md-12">
                    <h1 class="m-0 mb-3">DANH SÁCH NGƯỜI DÙNG</h1>
                    <form action="" method="GET">

                        <div class="row">
                            <div class="col-md-11">
                                <input required class="form-control" type="text" name="search" placeholder="Nhập thông tin cần tìm kiếm ...">
                            </div>
                            <div class="col-md-1">
                                <button type="submit" style="width: 100%;" class="btn btn-dark"><i class="fas fa-search"></i></button>
                            </div>

                        </div>
                    </form>

                    <table class="table table-hover mt-3 table-bordered">
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
                                        <a href="./editor.php?id=<?= $item['id'] ?>" class="btn btn-warning">Sửa</a>
                                        <?php if ($user['id'] != $item['id'] && $item['role_id'] != 1) : ?>
                                            <button onclick="deleteUser(<?= $item['id'] ?>)" class="btn btn-danger">Xoá</button>
                                        <?php endif; ?>
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
<script>
    function deleteUser(id) {
        option = confirm('Bạn có chắc chắn muốn xoá tài khoản này không?');
        if (!option) {
            return;
        }
        $.post('form_api.php', {
            'id': id,
            'action': 'delete'
        }, function(data) {
            location.reload();
        })
    }
</script>

<?php
include_once '../layouts/footer.php';
?>